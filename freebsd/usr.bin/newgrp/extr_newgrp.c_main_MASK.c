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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  euid ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (int,char**,char*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/ * pwd ; 
 int /*<<< orphan*/  FUNC10 () ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 

int
FUNC15(int argc, char *argv[])
{
	int ch, login;

	if ((euid = FUNC5()) != 0)
		FUNC14("need root permissions to function properly, check setuid bit");
	if (FUNC11(FUNC8()) < 0)
		FUNC2(1, "seteuid");

	if ((pwd = FUNC7(FUNC8())) == NULL)
		FUNC3(1, "unknown user");

	login = 0;
	while ((ch = FUNC6(argc, argv, "-l")) != -1) {
		switch (ch) {
		case '-':		/* Obsolescent */
		case 'l':
			login = 1;
			break;
		default:
			FUNC13();
		}
	}
	argc -= optind;
	argv += optind;

	switch (argc) {
	case 0:
		FUNC10();
		break;
	case 1:
		FUNC0(*argv);
		break;
	default:
		FUNC13();
	}

	if (FUNC11(euid) < 0)
		FUNC2(1, "seteuid");
	if (FUNC12(FUNC8()) < 0)
		FUNC2(1, "setuid");

	if (login)
		FUNC9();
	else
		FUNC1();

	/*NOTREACHED*/
	FUNC4(1);
}