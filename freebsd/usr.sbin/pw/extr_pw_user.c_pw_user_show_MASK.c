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
typedef  char* uintmax_t ;
struct passwd {int dummy; } ;
typedef  scalar_t__ intmax_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  EX_DATAERR ; 
 int /*<<< orphan*/  EX_NOUSER ; 
 struct passwd* FUNC1 () ; 
 struct passwd* FUNC2 (int /*<<< orphan*/ ) ; 
 struct passwd* FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  UID_MAX ; 
 int /*<<< orphan*/  _PATH_DEVNULL ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 struct passwd fakeuser ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int,char**,char*) ; 
 char* optarg ; 
 int FUNC8 (struct passwd*,int,int) ; 
 scalar_t__ FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 size_t FUNC11 (char*,char*) ; 

int
FUNC12(int argc, char **argv, char *arg1)
{
	struct passwd *pwd = NULL;
	char *name = NULL;
	intmax_t id = -1;
	int ch;
	bool all = false;
	bool pretty = false;
	bool force = false;
	bool v7 = false;
	bool quiet = false;

	if (arg1 != NULL) {
		if (arg1[FUNC11(arg1, "0123456789")] == '\0')
			id = FUNC9(arg1, UID_MAX);
		else
			name = arg1;
	}

	while ((ch = FUNC7(argc, argv, "C:qn:u:FPa7")) != -1) {
		switch (ch) {
		case 'C':
			/* ignore compatibility */
			break;
		case 'q':
			quiet = true;
			break;
		case 'n':
			name = optarg;
			break;
		case 'u':
			id = FUNC9(optarg, UID_MAX);
			break;
		case 'F':
			force = true;
			break;
		case 'P':
			pretty = true;
			break;
		case 'a':
			all = true;
			break;
		case '7':
			v7 = true;
			break;
		}
	}

	if (quiet)
		FUNC6(_PATH_DEVNULL, "w", stderr);

	if (all) {
		FUNC4();
		while ((pwd = FUNC1()) != NULL)
			FUNC8(pwd, pretty, v7);
		FUNC0();
		return (EXIT_SUCCESS);
	}

	if (id < 0 && name == NULL)
		FUNC5(EX_DATAERR, "username or id required");

	pwd = (name != NULL) ? FUNC2(FUNC10(name, 0)) : FUNC3(id);
	if (pwd == NULL) {
		if (force) {
			pwd = &fakeuser;
		} else {
			if (name == NULL)
				FUNC5(EX_NOUSER, "no such uid `%ju'",
				    (uintmax_t) id);
			FUNC5(EX_NOUSER, "no such user `%s'", name);
		}
	}

	return (FUNC8(pwd, pretty, v7));
}