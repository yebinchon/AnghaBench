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

/* Variables and functions */
 int /*<<< orphan*/  ARP_XO_VERSION ; 
 scalar_t__ ENXIO ; 
#define  F_DELETE 132 
#define  F_FILESET 131 
#define  F_GET 130 
#define  F_REPLACE 129 
#define  F_SET 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (char*) ; 
 int FUNC4 (char*) ; 
 int FUNC5 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/ * ifnameindex ; 
 int nflag ; 
 int /*<<< orphan*/  nuke_entry ; 
 scalar_t__ optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  print_entry ; 
 scalar_t__ rifname ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,char**) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 int FUNC18 (int,char**) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 

int
FUNC20(int argc, char *argv[])
{
	int ch, func = 0;
	int rtn = 0;
	int aflag = 0;	/* do it for all entries */

	argc = FUNC18(argc, argv);
	if (argc < 0)
		FUNC2(1);

	while ((ch = FUNC5(argc, argv, "andfsSi:")) != -1)
		switch(ch) {
		case 'a':
			aflag = 1;
			break;
		case 'd':
			FUNC0(F_DELETE);
			break;
		case 'n':
			nflag = 1;
			break;
		case 'S':
			FUNC0(F_REPLACE);
			break;
		case 's':
			FUNC0(F_SET);
			break;
		case 'f' :
			FUNC0(F_FILESET);
			break;
		case 'i':
			rifname = optarg;
			break;
		case '?':
		default:
			FUNC10();
		}
	argc -= optind;
	argv += optind;

	if (!func)
		func = F_GET;
	if (rifname) {
		if (func != F_GET && !(func == F_DELETE && aflag))
			FUNC14(1, "-i not applicable to this operation");
		if (FUNC7(rifname) == 0) {
			if (errno == ENXIO)
				FUNC14(1, "interface %s does not exist",
				    rifname);
			else
				FUNC13(1, "if_nametoindex(%s)", rifname);
		}
	}
	switch (func) {
	case F_GET:
		if (aflag) {
			if (argc != 0)
				FUNC10();

			FUNC19(ARP_XO_VERSION);
			FUNC16("arp");
			FUNC17("arp-cache");

			FUNC8(0, print_entry);

			FUNC12("arp-cache");
			FUNC11("arp");
			FUNC15();
		} else {
			if (argc != 1)
				FUNC10();
			rtn = FUNC4(argv[0]);
		}
		break;
	case F_SET:
	case F_REPLACE:
		if (argc < 2 || argc > 6)
			FUNC10();
		if (func == F_REPLACE)
			(void)FUNC1(argv[0]);
		rtn = FUNC9(argc, argv) ? 1 : 0;
		break;
	case F_DELETE:
		if (aflag) {
			if (argc != 0)
				FUNC10();
			FUNC8(0, nuke_entry);
		} else {
			if (argc != 1)
				FUNC10();
			rtn = FUNC1(argv[0]);
		}
		break;
	case F_FILESET:
		if (argc != 1)
			FUNC10();
		rtn = FUNC3(argv[0]);
		break;
	}

	if (ifnameindex != NULL)
		FUNC6(ifnameindex);

	return (rtn);
}