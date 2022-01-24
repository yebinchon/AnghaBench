#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int Length; } ;
typedef  TYPE_1__ u_int8_t ;
struct stat {int st_size; } ;
typedef  int /*<<< orphan*/  off_t ;
typedef  int mode_t ;
typedef  int /*<<< orphan*/  filetmp ;
typedef  int /*<<< orphan*/  ACPI_TABLE_HEADER ;
typedef  int /*<<< orphan*/  ACPI_NEW_TABLE_DESC ;
typedef  int /*<<< orphan*/  ACPI_ADR_SPACE_HANDLER ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_ADR_SPACE_CMOS ; 
 int /*<<< orphan*/  ACPI_ADR_SPACE_EC ; 
 int /*<<< orphan*/  ACPI_ADR_SPACE_PCI_BAR_TARGET ; 
 int /*<<< orphan*/  ACPI_ADR_SPACE_PCI_CONFIG ; 
 int /*<<< orphan*/  ACPI_ADR_SPACE_SMBUS ; 
 int /*<<< orphan*/  ACPI_ADR_SPACE_SYSTEM_IO ; 
 int /*<<< orphan*/  ACPI_ADR_SPACE_SYSTEM_MEMORY ; 
 int /*<<< orphan*/  ACPI_ROOT_OBJECT ; 
 int AE_OK ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ AcpiGbl_DebuggerConfiguration ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MAP_PRIVATE ; 
 int O_CREAT ; 
 int O_RDONLY ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 int PATH_MAX ; 
 int /*<<< orphan*/  PROT_READ ; 
 int S_IRGRP ; 
 int S_IROTH ; 
 int S_IRUSR ; 
 int S_IWUSR ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ aml_vm_space_handler_cmos ; 
 scalar_t__ aml_vm_space_handler_ec ; 
 scalar_t__ aml_vm_space_handler_pci_bar_target ; 
 scalar_t__ aml_vm_space_handler_pci_config ; 
 scalar_t__ aml_vm_space_handler_smbus ; 
 scalar_t__ aml_vm_space_handler_system_io ; 
 scalar_t__ aml_vm_space_handler_system_memory ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 TYPE_1__ dummy_dsdt_table ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC7 (int,struct stat*) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,size_t) ; 
 int FUNC10 (char const*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 scalar_t__ FUNC12 (char*,int,char*,char const*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC13 (char*,char const*,int) ; 
 scalar_t__ FUNC14 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (int,TYPE_1__*,int) ; 

__attribute__((used)) static int
FUNC17(const char *dsdtfile)
{
	char			filetmp[PATH_MAX];
	ACPI_NEW_TABLE_DESC	*list;
	u_int8_t		*code;
	struct stat		sb;
	int			dounlink, error, fd;

	fd = FUNC10(dsdtfile, O_RDONLY, 0);
	if (fd == -1) {
		FUNC11("open");
		return (-1);
	}
	if (FUNC7(fd, &sb) == -1) {
		FUNC11("fstat");
		FUNC5(fd);
		return (-1);
	}
	code = FUNC8(NULL, (size_t)sb.st_size, PROT_READ, MAP_PRIVATE, fd, (off_t)0);
	FUNC5(fd);
	if (code == NULL) {
		FUNC11("mmap");
		return (-1);
	}
	if ((error = FUNC3()) != AE_OK) {
		FUNC9(code, (size_t)sb.st_size);
		return (-1);
	}

	/*
	 * make sure DSDT data contains table header or not.
	 */
	if (FUNC14((char *)code, "DSDT", 4) == 0) {
		dounlink = 0;
		FUNC13(filetmp, dsdtfile, sizeof(filetmp));
	} else {
		dounlink = 1;
		mode_t	mode = (S_IRUSR | S_IWUSR | S_IRGRP | S_IROTH);
		dummy_dsdt_table.Length = sizeof(ACPI_TABLE_HEADER) + sb.st_size;
		if ((size_t)FUNC12(filetmp, sizeof(filetmp), "%s.tmp",
		    dsdtfile) > sizeof(filetmp) - 1) {
			FUNC6(stderr, "file name too long\n");
			FUNC9(code, (size_t)sb.st_size);
			return (-1);
		}
		fd = FUNC10(filetmp, O_WRONLY | O_CREAT | O_TRUNC, mode);
		if (fd == -1) {
			FUNC11("open");
			FUNC9(code, (size_t)sb.st_size);
			return (-1);
		}
		FUNC16(fd, &dummy_dsdt_table, sizeof(ACPI_TABLE_HEADER));

		FUNC16(fd, code, sb.st_size);
		FUNC5(fd);
	}
	FUNC9(code, (size_t)sb.st_size);

	/*
	 * Install the virtual machine version of address space handlers.
	 */
	if ((error = FUNC4(ACPI_ROOT_OBJECT,
			ACPI_ADR_SPACE_SYSTEM_MEMORY,
			(ACPI_ADR_SPACE_HANDLER)aml_vm_space_handler_system_memory,
			NULL, NULL)) != AE_OK) {
		FUNC6(stderr, "could not initialise SystemMemory handler: %d\n", error);
		return (-1);
	}
	if ((error = FUNC4(ACPI_ROOT_OBJECT,
			ACPI_ADR_SPACE_SYSTEM_IO,
			(ACPI_ADR_SPACE_HANDLER)aml_vm_space_handler_system_io,
			NULL, NULL)) != AE_OK) {
		FUNC6(stderr, "could not initialise SystemIO handler: %d\n", error);
		return (-1);
	}
	if ((error = FUNC4(ACPI_ROOT_OBJECT,
			ACPI_ADR_SPACE_PCI_CONFIG,
			(ACPI_ADR_SPACE_HANDLER)aml_vm_space_handler_pci_config,
			NULL, NULL)) != AE_OK) {
		FUNC6(stderr, "could not initialise PciConfig handler: %d\n", error);
		return (-1);
	}
	if ((error = FUNC4(ACPI_ROOT_OBJECT,
			ACPI_ADR_SPACE_EC,
			(ACPI_ADR_SPACE_HANDLER)aml_vm_space_handler_ec,
			NULL, NULL)) != AE_OK) {
		FUNC6(stderr, "could not initialise EC handler: %d\n", error);
		return (-1);
	}
	if ((error = FUNC4(ACPI_ROOT_OBJECT,
			ACPI_ADR_SPACE_SMBUS,
			(ACPI_ADR_SPACE_HANDLER)aml_vm_space_handler_smbus,
			NULL, NULL)) != AE_OK) {
		FUNC6(stderr, "could not initialise SMBUS handler: %d\n", error);
		return (-1);
	}
	if ((error = FUNC4(ACPI_ROOT_OBJECT,
			ACPI_ADR_SPACE_CMOS,
			(ACPI_ADR_SPACE_HANDLER)aml_vm_space_handler_cmos,
			NULL, NULL)) != AE_OK) {
		FUNC6(stderr, "could not initialise CMOS handler: %d\n", error);
		return (-1);
	}
	if ((error = FUNC4(ACPI_ROOT_OBJECT,
			ACPI_ADR_SPACE_PCI_BAR_TARGET,
			(ACPI_ADR_SPACE_HANDLER)aml_vm_space_handler_pci_bar_target,
			NULL, NULL)) != AE_OK) {
		FUNC6(stderr, "could not initialise PCI BAR TARGET handler: %d\n", error);
		return (-1);
	}

	list = NULL;
	FUNC0(filetmp, TRUE, &list);

	FUNC2();
	AcpiGbl_DebuggerConfiguration = 0;
	FUNC1();

	if (dounlink) {
		FUNC15(filetmp);
	}

	return (0);
}