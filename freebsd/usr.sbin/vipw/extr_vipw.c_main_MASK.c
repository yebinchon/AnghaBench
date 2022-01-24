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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ ,size_t*) ; 
 int FUNC6 (int,char**,char*) ; 
 char* optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int FUNC10 (char const*,int /*<<< orphan*/ *) ; 
 int FUNC11 () ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int) ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 () ; 

int
FUNC16(int argc, char *argv[])
{
	const char *passwd_dir = NULL;
	int ch, pfd, tfd;
	char *line;
	size_t len;

	while ((ch = FUNC6(argc, argv, "d:")) != -1)
		switch (ch) {
		case 'd':
			passwd_dir = optarg;
			break;
		case '?':
		default:
			FUNC15();
		}

	argc -= optind;
	argv += optind;

	if (argc != 0)
		FUNC15();

	if (FUNC10(passwd_dir, NULL) == -1)
		FUNC1(1, "pw_init()");
	if ((pfd = FUNC11()) == -1) {
		FUNC9();
		FUNC1(1, "pw_lock()");
	}
	if ((tfd = FUNC13(pfd)) == -1) {
		FUNC9();
		FUNC1(1, "pw_tmp()");
	}
	(void)FUNC0(tfd);
	/* Force umask for partial writes made in the edit phase */
	(void)FUNC14(077);

	for (;;) {
		switch (FUNC8(0)) {
		case -1:
			FUNC9();
			FUNC1(1, "pw_edit()");
		case 0:
			FUNC9();
			FUNC2(0, "no changes made");
		default:
			break;
		}
		if (FUNC12(NULL) == 0) {
			FUNC9();
			FUNC2(0, "password list updated");
		}
		FUNC7("re-edit the password file? ");
		FUNC4(stdout);
		if ((line = FUNC5(stdin, &len)) == NULL) {
			FUNC9();
			FUNC1(1, "fgetln()");
		}
		if (len > 0 && (*line == 'N' || *line == 'n'))
			break;
	}
	FUNC9();
	FUNC3(0);
}