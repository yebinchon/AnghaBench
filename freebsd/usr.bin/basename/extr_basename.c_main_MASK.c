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
 int /*<<< orphan*/  LC_ALL ; 
 char* FUNC0 (char*) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int,char**,char*) ; 
 char* optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,size_t) ; 
 size_t FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 () ; 

int
FUNC11(int argc, char **argv)
{
	char *p, *suffix;
	size_t suffixlen;
	int aflag, ch;

	FUNC7(LC_ALL, "");

	if (FUNC2() < 0 || FUNC1() < 0)
		FUNC3(1, "capsicum");

	aflag = 0;
	suffix = NULL;
	suffixlen = 0;

	while ((ch = FUNC5(argc, argv, "as:")) != -1)
		switch(ch) {
		case 'a':
			aflag = 1;
			break;
		case 's':
			suffix = optarg;
			break;
		case '?':
		default:
			FUNC10();
		}
	argc -= optind;
	argv += optind;

	if (argc < 1)
		FUNC10();

	if (!*argv[0]) {
		FUNC6("\n");
		FUNC4(0);
	}
	if ((p = FUNC0(argv[0])) == NULL)
		FUNC3(1, "%s", argv[0]);
	if ((suffix == NULL && !aflag) && argc == 2) {
		suffix = argv[1];
		argc--;
	}
	if (suffix != NULL)
		suffixlen = FUNC9(suffix);
	while (argc--) {
		if ((p = FUNC0(*argv)) == NULL)
			FUNC3(1, "%s", argv[0]);
		FUNC8(p, suffix, suffixlen);
		argv++;
		(void)FUNC6("%s\n", p);
	}
	FUNC4(0);
}