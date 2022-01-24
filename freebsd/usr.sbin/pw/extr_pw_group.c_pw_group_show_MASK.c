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
struct group {char* member_0; char* member_1; int member_2; int /*<<< orphan*/ * member_3; } ;
typedef  int intmax_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int EXIT_SUCCESS ; 
 struct group* FUNC1 () ; 
 int /*<<< orphan*/  GID_MAX ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  _PATH_DEVNULL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct group* FUNC4 (char*,int,int) ; 
 int FUNC5 (int,char**,char*) ; 
 char* optarg ; 
 int FUNC6 (struct group*,int) ; 
 int FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 size_t FUNC8 (char*,char*) ; 

int
FUNC9(int argc, char **argv, char *arg1)
{
	struct group *grp = NULL;
	char *name = NULL;
	intmax_t id = -1;
	int ch;
	bool all, force, quiet, pretty;

	all = force = quiet = pretty = false;

	struct group fakegroup = {
		"nogroup",
		"*",
		-1,
		NULL
	};

	if (arg1 != NULL) {
		if (arg1[FUNC8(arg1, "0123456789")] == '\0')
			id = FUNC7(arg1, GID_MAX);
		else
			name = arg1;
	}

	while ((ch = FUNC5(argc, argv, "C:qn:g:FPa")) != -1) {
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
		case 'g':
			id = FUNC7(optarg, GID_MAX);
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
		}
	}

	if (quiet)
		FUNC3(_PATH_DEVNULL, "w", stderr);

	if (all) {
		FUNC2();
		while ((grp = FUNC1()) != NULL)
			FUNC6(grp, pretty);
		FUNC0();
		return (EXIT_SUCCESS);
	}

	grp = FUNC4(name, id, !force);
	if (grp == NULL)
		grp = &fakegroup;

	return (FUNC6(grp, pretty));
}