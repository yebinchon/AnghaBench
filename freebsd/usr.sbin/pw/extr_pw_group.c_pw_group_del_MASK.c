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
typedef  int /*<<< orphan*/  uintmax_t ;
struct userconf {int dummy; } ;
struct group {int dummy; } ;
typedef  int intmax_t ;

/* Variables and functions */
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  EX_IOERR ; 
 int /*<<< orphan*/  GID_MAX ; 
 int /*<<< orphan*/  M_DELETE ; 
 int /*<<< orphan*/  W_GROUP ; 
 int /*<<< orphan*/  _PATH_DEVNULL ; 
 int FUNC0 (struct group*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct userconf* FUNC3 (char const*) ; 
 struct group* FUNC4 (char*,int,int) ; 
 int FUNC5 (int,char**,char*) ; 
 scalar_t__ FUNC6 () ; 
 char* optarg ; 
 int FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct userconf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 size_t FUNC9 (char*,char*) ; 

int
FUNC10(int argc, char **argv, char *arg1)
{
	struct userconf *cnf = NULL;
	struct group *grp = NULL;
	char *name;
	const char *cfg = NULL;
	intmax_t id = -1;
	int ch, rc;
	bool quiet = false;
	bool nis = false;

	if (arg1 != NULL) {
		if (arg1[FUNC9(arg1, "0123456789")] == '\0')
			id = FUNC7(arg1, GID_MAX);
		else
			name = arg1;
	}

	while ((ch = FUNC5(argc, argv, "C:qn:g:Y")) != -1) {
		switch (ch) {
		case 'C':
			cfg = optarg;
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
		case 'Y':
			nis = true;
			break;
		}
	}

	if (quiet)
		FUNC2(_PATH_DEVNULL, "w", stderr);
	grp = FUNC4(name, id, true);
	cnf = FUNC3(cfg);
	rc = FUNC0(grp);
	if (rc == -1)
		FUNC1(EX_IOERR, "group '%s' not available (NIS?)", name);
	else if (rc != 0)
		FUNC1(EX_IOERR, "group update");
	FUNC8(cnf, M_DELETE, W_GROUP, "%s(%ju) removed", name,
	    (uintmax_t)id);

	if (nis && FUNC6() == 0)
		FUNC8(cnf, M_DELETE, W_GROUP, "NIS maps updated");

	return (EXIT_SUCCESS);
}