#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct userconf {int dummy; } ;
typedef  int intmax_t ;
struct TYPE_2__ {int checkduplicate; } ;

/* Variables and functions */
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  EX_DATAERR ; 
 int /*<<< orphan*/  EX_USAGE ; 
 int /*<<< orphan*/ * FUNC0 (char*) ; 
 int /*<<< orphan*/  GID_MAX ; 
 int /*<<< orphan*/  M_ADD ; 
 int /*<<< orphan*/  W_GROUP ; 
 int /*<<< orphan*/  _PATH_DEVNULL ; 
 TYPE_1__ conf ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct userconf* FUNC3 (char const*) ; 
 int FUNC4 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct userconf*,int) ; 
 int FUNC6 (struct userconf*,char*,int /*<<< orphan*/ ,char*,int,int,int,int) ; 
 scalar_t__ FUNC7 () ; 
 char* optarg ; 
 int FUNC8 (char*) ; 
 int FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct userconf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 
 size_t FUNC11 (char*,char*) ; 

int
FUNC12(int argc, char **argv, char *arg1)
{
	struct userconf *cnf = NULL;
	char *name = NULL;
	char *members = NULL;
	const char *cfg = NULL;
	intmax_t id = -1;
	int ch, rc, fd = -1;
	bool quiet, precrypted, dryrun, pretty, nis;

	quiet = precrypted = dryrun = pretty = nis = false;

	if (arg1 != NULL) {
		if (arg1[FUNC11(arg1, "0123456789")] == '\0')
			id = FUNC9(arg1, GID_MAX);
		else
			name = arg1;
	}

	while ((ch = FUNC4(argc, argv, "C:qn:g:h:H:M:oNPY")) != -1) {
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
			id = FUNC9(optarg, GID_MAX);
			break;
		case 'H':
			if (fd != -1)
				FUNC1(EX_USAGE, "'-h' and '-H' are mutually "
				    "exclusive options");
			fd = FUNC8(optarg);
			precrypted = true;
			if (fd == '-')
				FUNC1(EX_USAGE, "-H expects a file descriptor");
			break;
		case 'h':
			if (fd != -1)
				FUNC1(EX_USAGE, "'-h' and '-H' are mutually "
				    "exclusive options");
			fd = FUNC8(optarg);
			break;
		case 'M':
			members = optarg;
			break;
		case 'o':
			conf.checkduplicate = false;
			break;
		case 'N':
			dryrun = true;
			break;
		case 'P':
			pretty = true;
			break;
		case 'Y':
			nis = true;
			break;
		}
	}

	if (quiet)
		FUNC2(_PATH_DEVNULL, "w", stderr);
	if (name == NULL)
		FUNC1(EX_DATAERR, "group name required");
	if (FUNC0(name) != NULL)
		FUNC1(EX_DATAERR, "group name `%s' already exists", name);
	cnf = FUNC3(cfg);
	rc = FUNC6(cnf, name, FUNC5(cnf, id), members, fd, dryrun,
	    pretty, precrypted);
	if (nis && rc == EXIT_SUCCESS && FUNC7() == 0)
		FUNC10(cnf, M_ADD, W_GROUP, "NIS maps updated");

	return (rc);
}