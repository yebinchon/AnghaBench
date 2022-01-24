#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  ACPI_TABLE_HEADER ;
typedef  int /*<<< orphan*/  ACPI_TABLE_FADT ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_SIG_FADT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ dflag ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int,char**,char*) ; 
 char* optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ tflag ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int vflag ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 

int
FUNC11(int argc, char *argv[])
{
	ACPI_TABLE_HEADER *rsdt, *sdt;
	int	c;
	char	*progname;
	char	*dsdt_input_file, *dsdt_output_file;

	dsdt_input_file = dsdt_output_file = NULL;
	progname = argv[0];

	if (argc < 2)
		FUNC9(progname);

	while ((c = FUNC5(argc, argv, "dhtvf:o:")) != -1) {
		switch (c) {
		case 'd':
			dflag = 1;
			break;
		case 't':
			tflag = 1;
			break;
		case 'v':
			vflag = 1;
			break;
		case 'f':
			dsdt_input_file = optarg;
			break;
		case 'o':
			dsdt_output_file = optarg;
			break;
		case 'h':
		default:
			FUNC9(progname);
			/* NOTREACHED */
		}
	}
	argc -= optind;
	argv += optind;

	/* Get input either from file or /dev/mem */
	if (dsdt_input_file != NULL) {
		if (dflag == 0 && tflag == 0) {
			FUNC10("Need to specify -d or -t with DSDT input file");
			FUNC9(progname);
		} else if (tflag != 0) {
			FUNC10("Can't use -t with DSDT input file");
			FUNC9(progname);
		}
		if (vflag)
			FUNC10("loading DSDT file: %s", dsdt_input_file);
		rsdt = FUNC2(dsdt_input_file);
	} else {
		if (vflag)
			FUNC10("loading RSD PTR from /dev/mem");
		rsdt = FUNC7();
	}

	/* Display misc. SDT tables (only available when using /dev/mem) */
	if (tflag) {
		if (vflag)
			FUNC10("printing various SDT tables");
		FUNC8(rsdt);
	}

	/* Translate RSDT to DSDT pointer */
	if (dsdt_input_file == NULL) {
		sdt = FUNC6(rsdt, ACPI_SIG_FADT, NULL);
		sdt = FUNC1((ACPI_TABLE_FADT *)sdt);
	} else {
		sdt = rsdt;
		rsdt = NULL;
	}

	/* Dump the DSDT and SSDTs to a file */
	if (dsdt_output_file != NULL) {
		if (vflag)
			FUNC10("saving DSDT file: %s", dsdt_output_file);
		FUNC3(dsdt_output_file, rsdt, sdt);
	}

	/* Disassemble the DSDT into ASL */
	if (dflag) {
		if (vflag)
			FUNC10("disassembling DSDT, iasl messages follow");
		FUNC0(rsdt, sdt);
		if (vflag)
			FUNC10("iasl processing complete");
	}

	FUNC4(0);
}