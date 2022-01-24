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
typedef  int /*<<< orphan*/  zwork ;
typedef  int /*<<< orphan*/  tm ;
typedef  scalar_t__ time_t ;
struct zipwork_entry {int /*<<< orphan*/  zw_fname; int /*<<< orphan*/  zw_fsize; struct conf_entry const* zw_conf; } ;
struct tm {int dummy; } ;
struct stat {int dummy; } ;
struct sigwork_entry {int dummy; } ;
struct conf_entry {int flags; char* log; int numlogs; scalar_t__ compress; int /*<<< orphan*/  fsize; int /*<<< orphan*/ * pid_cmd_file; } ;
typedef  int /*<<< orphan*/  namepart ;
typedef  int /*<<< orphan*/  fk_entry ;
typedef  int /*<<< orphan*/  file2 ;
typedef  int /*<<< orphan*/  file1 ;
typedef  int /*<<< orphan*/  dirpart ;
typedef  int /*<<< orphan*/  datetimestr ;

/* Variables and functions */
 int CE_BINARY ; 
 int CE_PLAIN0 ; 
 scalar_t__ COMPRESS_NONE ; 
 int /*<<< orphan*/  FREE_ENT ; 
 int /*<<< orphan*/  KEEP_ENT ; 
 int MAXPATHLEN ; 
 char* archdirname ; 
 scalar_t__ archtodir ; 
 int /*<<< orphan*/  FUNC0 (struct tm*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct conf_entry const*) ; 
 int /*<<< orphan*/  FUNC2 (struct conf_entry const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct conf_entry const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct conf_entry const*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct zipwork_entry*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,char*,int) ; 
 char* FUNC8 (char*) ; 
 int /*<<< orphan*/ * FUNC9 (scalar_t__*,struct tm*) ; 
 int /*<<< orphan*/  FUNC10 (char*,struct conf_entry const*) ; 
 scalar_t__ FUNC11 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC12 (struct zipwork_entry*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ noaction ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*) ; 
 struct sigwork_entry* FUNC15 (struct conf_entry const*) ; 
 int /*<<< orphan*/  FUNC16 (struct conf_entry const*,struct sigwork_entry*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC17 (char*,char*) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 
 int /*<<< orphan*/  FUNC19 (char*,int,char*,char*,char*,...) ; 
 scalar_t__ FUNC20 (char*,char*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC22 (char*,int,int /*<<< orphan*/ *,struct tm*) ; 
 int /*<<< orphan*/  FUNC23 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC24 (char*,char*,int) ; 
 int FUNC25 (char const*) ; 
 char* FUNC26 (char*,char) ; 
 scalar_t__ FUNC27 (scalar_t__*) ; 
 int /*<<< orphan*/ * timefnamefmt ; 
 int /*<<< orphan*/  FUNC28 (char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static fk_entry
FUNC29(const struct conf_entry *ent)
{
	char dirpart[MAXPATHLEN], namepart[MAXPATHLEN];
	char file1[MAXPATHLEN], file2[MAXPATHLEN];
	char zfile1[MAXPATHLEN], zfile2[MAXPATHLEN];
	const char *logfile_suffix;
	char datetimestr[30];
	int flags, numlogs_c;
	fk_entry free_or_keep;
	struct sigwork_entry *swork;
	struct stat st;
	struct tm tm;
	time_t now;

	flags = ent->flags;
	free_or_keep = FREE_ENT;

	if (archtodir) {
		char *p;

		/* build complete name of archive directory into dirpart */
		if (*archdirname == '/') {	/* absolute */
			FUNC24(dirpart, archdirname, sizeof(dirpart));
		} else {	/* relative */
			/* get directory part of logfile */
			FUNC24(dirpart, ent->log, sizeof(dirpart));
			if ((p = FUNC26(dirpart, '/')) == NULL)
				dirpart[0] = '\0';
			else
				*(p + 1) = '\0';
			FUNC23(dirpart, archdirname, sizeof(dirpart));
		}

		/* check if archive directory exists, if not, create it */
		if (FUNC11(dirpart, &st))
			FUNC2(ent, dirpart);

		/* get filename part of logfile */
		if ((p = FUNC26(ent->log, '/')) == NULL)
			FUNC24(namepart, ent->log, sizeof(namepart));
		else
			FUNC24(namepart, p + 1, sizeof(namepart));
	} else {
		/*
		 * Tell utility functions we are not using an archive
		 * dir.
		 */
		dirpart[0] = '\0';
		FUNC24(namepart, ent->log, sizeof(namepart));
	}

	/* Delete old logs */
	if (timefnamefmt != NULL)
		FUNC5(ent, dirpart);
	else {
		/*
		 * Handle cleaning up after legacy newsyslog where we
		 * kept ent->numlogs + 1 files.  This code can go away
		 * at some point in the future.
		 */
		FUNC4(dirpart, namepart, ent->numlogs);

		if (ent->numlogs > 0)
			FUNC4(dirpart, namepart, ent->numlogs - 1);

	}

	if (timefnamefmt != NULL) {
		/* If time functions fails we can't really do any sensible */
		if (FUNC27(&now) == (time_t)-1 ||
		    FUNC9(&now, &tm) == NULL)
			FUNC0(&tm, sizeof(tm));

		FUNC22(datetimestr, sizeof(datetimestr), timefnamefmt, &tm);
		if (archtodir)
			(void) FUNC19(file1, sizeof(file1), "%s/%s.%s",
			    dirpart, namepart, datetimestr);
		else
			(void) FUNC19(file1, sizeof(file1), "%s.%s",
			    ent->log, datetimestr);

		/* Don't run the code to move down logs */
		numlogs_c = -1;
	} else {
		FUNC7(file1, sizeof(file1), dirpart, namepart,
		    ent->numlogs - 1);
		numlogs_c = ent->numlogs - 2;		/* copy for countdown */
	}

	/* Move down log files */
	for (; numlogs_c >= 0; numlogs_c--) {
		(void) FUNC24(file2, file1, sizeof(file2));

		FUNC7(file1, sizeof(file1), dirpart, namepart,
		    numlogs_c);

		logfile_suffix = FUNC8(file1);
		if (logfile_suffix == NULL)
			continue;
		(void) FUNC24(zfile1, file1, MAXPATHLEN);
		(void) FUNC24(zfile2, file2, MAXPATHLEN);
		(void) FUNC23(zfile1, logfile_suffix, MAXPATHLEN);
		(void) FUNC23(zfile2, logfile_suffix, MAXPATHLEN);

		if (noaction)
			FUNC13("\tmv %s %s\n", zfile1, zfile2);
		else {
			/* XXX - Ought to be checking for failure! */
			(void)FUNC14(zfile1, zfile2);
			FUNC1(zfile2, ent);
			if (ent->compress && !FUNC25(logfile_suffix)) {
				/* compress old rotation */
				struct zipwork_entry zwork;

				FUNC12(&zwork, 0, sizeof(zwork));
				zwork.zw_conf = ent;
				zwork.zw_fsize = FUNC18(zfile2);
				FUNC21(zwork.zw_fname, zfile2);
				FUNC6(&zwork);
			}
		}
	}

	if (ent->numlogs > 0) {
		if (noaction) {
			/*
			 * Note that savelog() may succeed with using link()
			 * for the archtodir case, but there is no good way
			 * of knowing if it will when doing "noaction", so
			 * here we claim that it will have to do a copy...
			 */
			if (archtodir)
				FUNC13("\tcp %s %s\n", ent->log, file1);
			else
				FUNC13("\tln %s %s\n", ent->log, file1);
			FUNC13("\ttouch %s\t\t"
			    "# Update mtime for 'when'-interval processing\n",
			    file1);
		} else {
			if (!(flags & CE_BINARY)) {
				/* Report the trimming to the old log */
				FUNC10(ent->log, ent);
			}
			FUNC17(ent->log, file1);
			/*
			 * Interval-based rotations are done using the mtime of
			 * the most recently archived log, so make sure it gets
			 * updated during a rotation.
			 */
			FUNC28(file1, NULL);
		}
		FUNC1(file1, ent);
	}

	/* Create the new log file and move it into place */
	if (noaction)
		FUNC13("Start new log...\n");
	FUNC3(ent);

	/*
	 * Save all signalling and file-compression to be done after log
	 * files from all entries have been rotated.  This way any one
	 * process will not be sent the same signal multiple times when
	 * multiple log files had to be rotated.
	 */
	swork = NULL;
	if (ent->pid_cmd_file != NULL)
		swork = FUNC15(ent);
	if (ent->numlogs > 0 && ent->compress > COMPRESS_NONE) {
		if (!(ent->flags & CE_PLAIN0) ||
		    FUNC20(&file1[FUNC25(file1) - 2], ".0") != 0) {
			/*
			 * The zipwork_entry will include a pointer to this
			 * conf_entry, so the conf_entry should not be freed.
			 */
			free_or_keep = KEEP_ENT;
			FUNC16(ent, swork, ent->fsize, file1);
		}
	}

	return (free_or_keep);
}