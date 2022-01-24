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
struct printer {char* lock_file; char* spool_dir; char* status_file; } ;
typedef  int /*<<< orphan*/  statfile ;
typedef  int /*<<< orphan*/  lockfile ;
typedef  int /*<<< orphan*/  fline ;
typedef  enum PrinterStatus { ____Placeholder_PrinterStatus } PrinterStatus ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int LOCK_NB ; 
 int LOCK_SH ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int MAXPATHLEN ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int PS_IDLE ; 
 int PS_OTHER ; 
 int PS_PRINTING ; 
 int PS_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int,int) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char,int) ; 
 int FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,int) ; 
 int /*<<< orphan*/ * FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum PrinterStatus
FUNC12(const struct printer *pp)
{
	char statfile[MAXPATHLEN];
	char lockfile[MAXPATHLEN];
	char fline[128];
	int fd;
	FILE *f = NULL;
	enum PrinterStatus ps = PS_UNKNOWN;

	if (pp->lock_file[0] == '/')
		FUNC9(lockfile, pp->lock_file, sizeof(lockfile));
	else
		FUNC7(lockfile, sizeof(lockfile), "%s/%s",
		    pp->spool_dir, pp->lock_file);

	fd = FUNC6(lockfile, O_RDONLY);
	if (fd < 0 || FUNC3(fd, LOCK_SH | LOCK_NB) == 0) {
		ps = PS_IDLE;
		goto LABEL_DONE;
	}

	if (pp->status_file[0] == '/')
		FUNC9(statfile, pp->status_file, sizeof(statfile));
	else
		FUNC7(statfile, sizeof(statfile), "%s/%s",
		    pp->spool_dir, pp->status_file);

	f = FUNC4(statfile, "r");
	if (f == NULL) {
		FUNC11(LOG_ERR, "cannot open status file: %s", FUNC8(errno));
		ps = PS_UNKNOWN;
		goto LABEL_DONE;
	}

	FUNC5(&fline[0], '\0', sizeof(fline));
	if (FUNC2(fline, sizeof(fline) -1, f) == NULL) {
		ps = PS_UNKNOWN;
		goto LABEL_DONE;
	}

	if (FUNC10(fline, "is ready and printing") != NULL) {
		ps = PS_PRINTING;
		goto LABEL_DONE;
	}

	if (FUNC10(fline, "to become ready (offline?)") != NULL) {
		ps = PS_OTHER;
		goto LABEL_DONE;
	}

LABEL_DONE:
	if (fd >= 0)
		(void)FUNC0(fd);	/* unlocks as well */

	if (f != NULL)
		(void)FUNC1(f);

	return (ps);
}