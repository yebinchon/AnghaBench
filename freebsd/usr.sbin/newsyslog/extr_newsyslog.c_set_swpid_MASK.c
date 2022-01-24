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
struct sigwork_entry {int sw_pidok; long sw_pid; char* sw_pidtype; } ;
struct conf_entry {int flags; long pid_cmd_file; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int BUFSIZ ; 
 int CE_SIGNALGROUP ; 
 scalar_t__ ENOENT ; 
 long MAX_PID ; 
 long MIN_PID ; 
 scalar_t__ enforcepid ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (long,char*) ; 
 int /*<<< orphan*/  FUNC4 (char) ; 
 long FUNC5 (char*,char**,int) ; 
 scalar_t__ verbose ; 
 int /*<<< orphan*/  FUNC6 (char*,long) ; 
 int /*<<< orphan*/  FUNC7 (char*,long,...) ; 

__attribute__((used)) static void
FUNC8(struct sigwork_entry *swork, const struct conf_entry *ent)
{
	FILE *f;
	long minok, maxok, rval;
	char *endp, *linep, line[BUFSIZ];

	minok = MIN_PID;
	maxok = MAX_PID;
	swork->sw_pidok = 0;
	swork->sw_pid = 0;
	swork->sw_pidtype = "daemon";
	if (ent->flags & CE_SIGNALGROUP) {
		/*
		 * If we are expected to signal a process-group when
		 * rotating this logfile, then the value read in should
		 * be the negative of a valid process ID.
		 */
		minok = -MAX_PID;
		maxok = -MIN_PID;
		swork->sw_pidtype = "process-group";
	}

	f = FUNC3(ent->pid_cmd_file, "r");
	if (f == NULL) {
		if (errno == ENOENT && enforcepid == 0) {
			/*
			 * Warn if the PID file doesn't exist, but do
			 * not consider it an error.  Most likely it
			 * means the process has been terminated,
			 * so it should be safe to rotate any log
			 * files that the process would have been using.
			 */
			swork->sw_pidok = 1;
			FUNC7("pid file doesn't exist: %s", ent->pid_cmd_file);
		} else
			FUNC6("can't open pid file: %s", ent->pid_cmd_file);
		return;
	}

	if (FUNC2(line, BUFSIZ, f) == NULL) {
		/*
		 * Warn if the PID file is empty, but do not consider
		 * it an error.  Most likely it means the process has
		 * has terminated, so it should be safe to rotate any
		 * log files that the process would have been using.
		 */
		if (FUNC1(f) && enforcepid == 0) {
			swork->sw_pidok = 1;
			FUNC7("pid/cmd file is empty: %s", ent->pid_cmd_file);
		} else
			FUNC6("can't read from pid file: %s", ent->pid_cmd_file);
		(void)FUNC0(f);
		return;
	}
	(void)FUNC0(f);

	errno = 0;
	linep = line;
	while (*linep == ' ')
		linep++;
	rval = FUNC5(linep, &endp, 10);
	if (*endp != '\0' && !FUNC4(*endp)) {
		FUNC7("pid file does not start with a valid number: %s",
		    ent->pid_cmd_file);
	} else if (rval < minok || rval > maxok) {
		FUNC7("bad value '%ld' for process number in %s",
		    rval, ent->pid_cmd_file);
		if (verbose)
			FUNC7("\t(expecting value between %ld and %ld)",
			    minok, maxok);
	} else {
		swork->sw_pidok = 1;
		swork->sw_pid = rval;
	}

	return;
}