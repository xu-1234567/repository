@Echo off & title XU BIOS Automatic Script & Color B

Echo.					This is only for AMD systems, not for INTEL.

Echo.					Make sure you put this in your SCEWIN folder
Echo						Press any key to continue
Pause > NUL

::	Check if it is AMD
	for /F "tokens=* skip=1" %%n in ('wmic cpu get Manufacturer ^| findstr "."') do set CPUManufacturer=%%n
	if %CPUManufacturer% EQU AuthenticAMD ( goto C ) & if %CPUManufacturer% EQU GenuineIntel ( goto exit )

:	C
::	Checking for required files
	IF NOT EXIST "SCEWIN_64.exe" (
	CLS
Echo	SCEWIN_64.exe NOT FOUND
Echo	Proceeding to download
	curl -g -k -L -# -o "SCEWIN_64.exe" "https://github.com/xu-1234567/repository/raw/refs/heads/main/SCEWIN_64.exe"
	)

	IF NOT EXIST "amigendrv64.sys" (
	CLS
Echo	amigendrv64.sys NOT FOUND
Echo	Proceeding to download
	curl -g -k -L -# -o "amigendrv64.sys" "https://github.com/xu-1234567/repository/raw/refs/heads/main/amigendrv64.sys"
)

	IF NOT EXIST "amifldrv64.sys" (
	CLS
Echo	amifldrv64.sys NOT FOUND
Echo	Proceeding to download
	curl -g -k -L -# -o "amifldrv64.sys" "https://github.com/xu-1234567/repository/raw/refs/heads/main/amifldrv64.sys"
)

Echo
::	https://docs.google.com/document/d/1wE-yqoyBVc5PLtzI7o3wIBz4sKhGxyY7iYYh-c5W7PY/edit?usp=sharing
	SCEWIN_64.exe /i /ms "Discrete GPU's Audio" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "Adaptive S4" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "LAN Power Enable" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "PM L1 SS" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "Unused GPP Clocks Off" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "AMD KVM Mouse Protocol" /qv 0x1 /lang en-US
	SCEWIN_64.exe /i /ms "ACP Power Gating" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "ACP CLock Gating" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "AMD StartUp PWM Enable" /qv 0x1 /lang en-US
	SCEWIN_64.exe /i /ms "SMT Control" /qv 0x1 /lang en-US
	SCEWIN_64.exe /i /ms "DRAM Latency Enhance" /qv 0x1 /lang en-US
	SCEWIN_64.exe /i /ms "Cmd2T" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "Gear Down Mode" /qv 0x1 /lang en-US
	SCEWIN_64.exe /i /ms "Power Down Enable" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "LN2 Mode" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "Precision Boost Overdrive" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "SoC/Uncore OC Mode" /qv 0x1 /lang en-US
	SCEWIN_64.exe /i /ms "NUMA nodes per socket" /qv 0x1 /lang en-US
	SCEWIN_64.exe /i /ms "LCLK DPM" /qv 0x2 /lang en-US
	SCEWIN_64.exe /i /ms "LCLK DPM Enhanced PCIe Detection" /qv 0x2 /lang en-US
	SCEWIN_64.exe /i /ms "SMEE" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "Platform First Error Handling" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "Core Performance Boost" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "Global C-state Control" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "Power Supply Idle Control" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "Streaming Stores Control" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "Local APIC Mode" /qv 0x2 /lang en-US
	SCEWIN_64.exe /i /ms "ACPI _CST C1 Declaration" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "MCA error thresh enable" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "SMU and PSP Debug Mode" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "Xtrig7 Workaround" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "PPIN Opt-in" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "Indirect Branch Prediction Speculation" /qv 0x1 /lang en-US
	SCEWIN_64.exe /i /ms "L1 Stream HW Prefetcher" /qv 0x1 /lang en-US
	SCEWIN_64.exe /i /ms "L2 Stream HW Prefetcher" /qv 0x1 /lang en-US
	SCEWIN_64.exe /i /ms "Core Watchdog Timer Enable" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "Disable DF to external downstream IP SyncFloodPropagation" /qv 0x1 /lang en-US
	SCEWIN_64.exe /i /ms "Disable DF sync flood propagation" /qv 0x1 /lang en-US
	SCEWIN_64.exe /i /ms "Freeze DF module queues on error" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "CC6 memory region encryption" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "System probe filter" /qv 0x1 /lang en-US
	SCEWIN_64.exe /i /ms "Memory Clear" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "DRAM scrub time" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "Poison scrubber control" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "Redirect scrubber control" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "Periodic Directory Rinse" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "Memory interleaving size" /qv 0x1 /lang en-US
	SCEWIN_64.exe /i /ms "DRAM map inversion" /qv 0x1 /lang en-US
	SCEWIN_64.exe /i /ms "ACPI SRAT L3 Cache As NUMA Domain" /qv 0x1 /lang en-US
	SCEWIN_64.exe /i /ms "ACPI SLIT remote relative distance" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "GMI encryption control" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "xGMI encryption control" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "4-link xGMI max speed" /qv 0x13 /lang en-US
	SCEWIN_64.exe /i /ms "3-link xGMI max speed" /qv 0x13 /lang en-US
	SCEWIN_64.exe /i /ms "DRAM Maximum Activate Count" /qv 0x8 /lang en-US
	SCEWIN_64.exe /i /ms "Data Poisoning" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "DRAM Post Package Repair" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "RCD Parity" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "DRAM Address Command Parity Retry" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "Write CRC Enable" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "DRAM Write CRC Enable and Retry Limit" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "DRAM ECC Enable" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "DRAM UECC Retry" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "TSME" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "Data Scramble" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "DFE Read Training" /qv 0x1 /lang en-US
	SCEWIN_64.exe /i /ms "FFE Write Training" /qv 0x1 /lang en-US
	SCEWIN_64.exe /i /ms "BankGroupSwap" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "BankGroupSwapAlt" /qv 0x1 /lang en-US
	SCEWIN_64.exe /i /ms "Address Hash Bank" /qv 0x1 /lang en-US
	SCEWIN_64.exe /i /ms "Address Hash CS" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "Address Hash Rm" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "IOMMU" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "DMA Protection" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "DMAr Support" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "ACS Enable" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "PCIe ARI Support" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "PCIe ARI Enumeration" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "PCIe Ten Bit Tag Support" /qv 0x1 /lang en-US
	SCEWIN_64.exe /i /ms "HD Audio Enable" /qv 0x1 /lang en-US
	SCEWIN_64.exe /i /ms "Enable AER Cap" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "Early Link Speed" /qv 0x2 /lang en-US
	SCEWIN_64.exe /i /ms "CV test" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "Loopback Mode" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "SRIS" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "UCLK DIV1 MODE" /qv 0x1 /lang en-US
	SCEWIN_64.exe /i /ms "Determinism Control" /qv 0x1 /lang en-US
	SCEWIN_64.exe /i /ms "Determinism Slider" /qv 0x1 /lang en-US
	SCEWIN_64.exe /i /ms "xGMI Link Width Control" /qv 0x1 /lang en-US
	SCEWIN_64.exe /i /ms "xGMI Force Link Width Control" /qv 0x1 /lang en-US
	SCEWIN_64.exe /i /ms "xGMI Max Link Width Control" /qv 0x1 /lang en-US
	SCEWIN_64.exe /i /ms "APBDIS" /qv 0x1 /lang en-US
	SCEWIN_64.exe /i /ms "DF Cstates" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "CPPC" /qv 0x1 /lang en-US
	SCEWIN_64.exe /i /ms "CPPC Preferred Cores" /qv 0x1 /lang en-US
	SCEWIN_64.exe /i /ms "NBIO DPM Control" /qv 0x1 /lang en-US
	SCEWIN_64.exe /i /ms "Socket 0 NBIO 0 Target DPM Level" /qv 0x2 /lang en-US
	SCEWIN_64.exe /i /ms "Socket 0 NBIO 1 Target DPM Level" /qv 0x2 /lang en-US
	SCEWIN_64.exe /i /ms "Socket 0 NBIO 2 Target DPM Level" /qv 0x2 /lang en-US
	SCEWIN_64.exe /i /ms "Socket 0 NBIO 3 Target DPM Level" /qv 0x2 /lang en-US
	SCEWIN_64.exe /i /ms "Socket 1 NBIO 0 Target DPM Level" /qv 0x2 /lang en-US
	SCEWIN_64.exe /i /ms "Socket 1 NBIO 1 Target DPM Level" /qv 0x2 /lang en-US
	SCEWIN_64.exe /i /ms "Socket 1 NBIO 2 Target DPM Level" /qv 0x2 /lang en-US
	SCEWIN_64.exe /i /ms "Socket 1 NBIO 3 Target DPM Level" /qv 0x2 /lang en-US
	SCEWIN_64.exe /i /ms "NBIO RAS Global Control" /qv 0x1 /lang en-US
	SCEWIN_64.exe /i /ms "NBIO RAS Control" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "NBIO SyncFlood Generation" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "NBIO SyncFlood Reporting" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "Edpc Control" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "NBIO Poison Consumption" /qv 0x2 /lang en-US
	SCEWIN_64.exe /i /ms "Sync Flood on PCIe Fatal Error" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "Sata RAS Support" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "Sata Disabled AHCI Prefetch Function" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "Aggresive SATA Device Sleep Port 0" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "Aggresive SATA Device Sleep Port 1" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "Socket1 DevSlp0 Enable" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "Socket1 DevSlp1 Enable" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "USB ecc SMI Enable" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "Ac Loss Control" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "I2C 0 Enable" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "I2C 1 Enable" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "I2C 2 Enable" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "I2C 3 Enable" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "I2C 4 Enable" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "I2C 5 Enable" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "Uart 0 Enable" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "Uart 0 Legacy Options" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "Uart 1 Enable" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "Uart 1 Legacy Options" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "Uart 2 Enable (no HW FC)" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "Uart 2 Legacy Options" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "Uart 3 Enable (no HW FC)" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "Uart 3 Legacy Options" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "ESPI Enable" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "eMMC/SD Enable" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "D3 Cold Support" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "ALink RAS Support" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "Reset after sync flood" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "Link Speed" /qv 0x4 /lang en-US
	SCEWIN_64.exe /i /ms "Show Memory prompt message" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "BIOS CSM/UEFI Mode" /qv 0x1 /lang en-US
	SCEWIN_64.exe /i /ms "MSI Driver Utility Installer" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "Full Screen Logo Display" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "Bootup NumLock State" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "Info Block effect" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "Boot mode select" /qv 0x1 /lang en-US
	SCEWIN_64.exe /i /ms "Boot Option #1" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "Boot Option #2" /qv 0x7 /lang en-US
	SCEWIN_64.exe /i /ms "Boot Option #3" /qv 0x7 /lang en-US
	SCEWIN_64.exe /i /ms "Boot Option #4" /qv 0x7 /lang en-US
	SCEWIN_64.exe /i /ms "Boot Option #5" /qv 0x7 /lang en-US
	SCEWIN_64.exe /i /ms "Boot Option #6" /qv 0x7 /lang en-US
	SCEWIN_64.exe /i /ms "Boot Option #7" /qv 0x7 /lang en-US
	SCEWIN_64.exe /i /ms "Re-Size BAR Support" /qv 0x1 /lang en-US
	SCEWIN_64.exe /i /ms "Above 4G memory/Crypto Currency mining" /qv 0x1 /lang en-US
	SCEWIN_64.exe /i /ms "PCI_E1 Gen Switch" /qv 0x3 /lang en-US
	SCEWIN_64.exe /i /ms "Chipset Gen Switch" /qv 0x2 /lang en-US
	SCEWIN_64.exe /i /ms "CPU Over Temperature Alert" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "S3/Modern Standby Support" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "Modern Standby Type" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "VGA Detection" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "Ipv4 PXE Support" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "Ipv6 PXE Support" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "Integrated Graphics" /qv 0x1 /lang en-US
	SCEWIN_64.exe /i /ms "XHCI Hand-off" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "Legacy USB Support" /qv 0x1 /lang en-US
	SCEWIN_64.exe /i /ms "Serial(COM) Port" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "Memory Failure Retry" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "Memory Failure Retry Count" /qv 0x1 /lang en-US
	SCEWIN_64.exe /i /ms "Memory Fast Boot" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "Memory Changed Detect" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "SVM Mode" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "NX Mode" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "PSS Support" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "Spread Spectrum" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "LN2 Mode 2" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "Opcache Control" /qv 0x1 /lang en-US
	SCEWIN_64.exe /i /ms "LN2 Mode 1" /qv 0x0 /lang en-US
::	SCEWIN_64.exe /i /ms "CC1" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "STAPM Control" /qv 0x1 /lang en-US
	SCEWIN_64.exe /i /ms "STAPM Boost" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "SmartShift Control" /qv 0x1 /lang en-US
	SCEWIN_64.exe /i /ms "SmartShift Enable" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "CPPC CTRL" /qv 0x1 /lang en-US
	SCEWIN_64.exe /i /ms "Command Rate" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "Enable Hibernation" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "ACPI Standby State" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "Onboard PCIE LAN PXE ROM" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "CRB test" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "PCI Latency Timer" /qv 0xF8 /lang en-US
	SCEWIN_64.exe /i /ms "PCI-X Latency Timer" /qv 0xF8 /lang en-US
	SCEWIN_64.exe /i /ms "Maximum Payload" /qv 0x5 /lang en-US
	SCEWIN_64.exe /i /ms "Maximum Read Request" /qv 0x5 /lang en-US
	SCEWIN_64.exe /i /ms "Link Training Retry" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "EHCI Hand-off" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "USB Mass Storage Driver Support" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "USB transfer time-out" /qv 0x1 /lang en-US
	SCEWIN_64.exe /i /ms "Device reset time-out" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "Device power-up delay" /qv 0x1 /lang en-US
	SCEWIN_64.exe /i /ms "Device power-up delay in seconds" /qv 0x1 /lang en-US
	SCEWIN_64.exe /i /ms "IPv4 HTTP Support" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "CSM Support" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "Boot option filter" /qv 0x2 /lang en-US
	SCEWIN_64.exe /i /ms "Launch PXE OpROM policy" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "Launch Storage OpROM policy" /qv 0x1 /lang en-US
	SCEWIN_64.exe /i /ms "Launch Video OpROM policy" /qv 0x1 /lang en-US
	SCEWIN_64.exe /i /ms "Other PCI device ROM priority" /qv 0x1 /lang en-US
	SCEWIN_64.exe /i /ms "AB Clock Gating" /qv 0x0 /lang en-US
::	SCEWIN_64.exe /i /ms "PCIB Clock Run" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "Restore On AC Power Loss" /qv 0x0 /lang en-US
::	Set the sata port you're using to its highest gen (Change X to the port, and FF to your gen speed)
::	SCEWIN_64.exe /i /ms "SATA Port X MODE" /qv 0xFF /lang en-US
	SCEWIN_64.exe /i /ms "SATA Hot-Removabel Support" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "Int. Clk Differential Spread" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "SATA MAXGEN2 CAP OPTION" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "SATA CLK Mode Option" /qv 0x9 /lang en-US
	SCEWIN_64.exe /i /ms "Port Multiplier Capability" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "SATA FIS Based Switching" /qv 0x0 /lang en-US
::	SCEWIN_64.exe /i /ms "SATA Command Completion Coalescing Support" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "SATA MSI Capability Support" /qv 0x1 /lang en-US
	SCEWIN_64.exe /i /ms "SATA Target Support 8 Devices" /qv 0x0 /lang en-US
::	SCEWIN_64.exe /i /ms "SATA PHY PLL" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "SPI Read Mode" /qv 0x7 /lang en-US
	SCEWIN_64.exe /i /ms "SPI 100MHz Support" /qv 0x1 /lang en-US
	SCEWIN_64.exe /i /ms "SPI Fast Read Speed" /qv 0x5 /lang en-US
	SCEWIN_64.exe /i /ms "I2C 0 D3 Support" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "I2C 1 D3 Support" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "I2C 2 D3 Support" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "I2C 3 D3 Support" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "I2C 4 D3 Support" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "I2C 5 D3 Support" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "UART 0 D3 Support" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "UART 1 D3 Support" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "UART 2 D3 Support" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "UART 3 D3 Support" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "SATA D3 Support" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "EHCI D3 Support" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "XHCI D3 Support" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "SD D3 Support" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "S0I3" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "Chipset Power Saving Features" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "SB Clock Spread Spectrum" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "SB Clock Spread Spectrum Option" /qv 0x2 /lang en-US
	SCEWIN_64.exe /i /ms "MsiDis in HPET" /qv 0x1 /lang en-US
	SCEWIN_64.exe /i /ms "_OSC For PCI0" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "USB Phy Power Down" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "USB MSI Option" /qv 0x1 /lang en-US
	SCEWIN_64.exe /i /ms "LPC MSI Option" /qv 0x1 /lang en-US
	SCEWIN_64.exe /i /ms "PCIBridge MSI Option" /qv 0x1 /lang en-US
	SCEWIN_64.exe /i /ms "AB MSI Option" /qv 0x1 /lang en-US
	SCEWIN_64.exe /i /ms "SB C1E Support" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "Remote Display Feature" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "UMA Mode" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "UFS Support" /qv 0x0 /lang en-US
	SCEWIN_64.exe /i /ms "PS2 Devices Support" /qv 0x0 /lang en-US

:exit
exit /b
