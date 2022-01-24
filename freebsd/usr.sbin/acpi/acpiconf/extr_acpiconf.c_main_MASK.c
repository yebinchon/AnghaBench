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
 int /*<<< orphan*/  EX_USAGE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  acpifd ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int,char**,char*) ; 
 char* optarg ; 
 scalar_t__ optind ; 
 size_t FUNC8 (char*) ; 
 int FUNC9 (char*,char**,int) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

int
FUNC11(int argc, char *argv[])
{
	char	*prog, *end;
	int	c, sleep_type, battery, ack;
	int	iflag = 0, kflag = 0, sflag = 0;

	prog = argv[0];
	if (argc < 2)
		FUNC10(prog);
		/* NOTREACHED */

	sleep_type = -1;
	FUNC1();
	while ((c = FUNC7(argc, argv, "hi:k:s:")) != -1) {
		switch (c) {
		case 'i':
			iflag = 1;
			battery = FUNC9(optarg, &end, 10);
			if ((size_t)(end - optarg) != FUNC8(optarg))
			    FUNC5(EX_USAGE, "invalid battery");
			break;
		case 'k':
			kflag = 1;
			ack = FUNC9(optarg, &end, 10);
			if ((size_t)(end - optarg) != FUNC8(optarg))
			    FUNC5(EX_USAGE, "invalid ack argument");
			break;
		case 's':
			sflag = 1;
			if (optarg[0] == 'S')
				optarg++;
			sleep_type = FUNC9(optarg, &end, 10);
			if ((size_t)(end - optarg) != FUNC8(optarg))
			    FUNC5(EX_USAGE, "invalid sleep type");
			if (sleep_type < 1 || sleep_type > 4)
				FUNC5(EX_USAGE, "invalid sleep type (%d)",
				     sleep_type);
			break;
		case 'h':
		default:
			FUNC10(prog);
			/* NOTREACHED */
		}
	}
	argc -= optind;
	argv += optind;

	if (iflag != 0 && kflag != 0 && sflag != 0)
			FUNC5(EX_USAGE, "-i, -k and -s are mutually exclusive");

	if (iflag  != 0) {
		if (kflag != 0)
			FUNC5(EX_USAGE, "-i and -k are mutually exclusive");
		if (sflag != 0)
			FUNC5(EX_USAGE, "-i and -s are mutually exclusive");
		FUNC0(battery);
	}

	if (kflag != 0) {
		if (sflag != 0)
			FUNC5(EX_USAGE, "-k and -s are mutually exclusive");
		FUNC3(ack);
	}


	if (sflag != 0)
		FUNC2(sleep_type);

	FUNC4(acpifd);
	FUNC6 (0);
}