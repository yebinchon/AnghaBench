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
struct stat {scalar_t__ st_dev; scalar_t__ st_ino; } ;
typedef  scalar_t__ ino_t ;
typedef  scalar_t__ dev_t ;
typedef  int /*<<< orphan*/  bakname ;

/* Variables and functions */
 scalar_t__ EXDEV ; 
 int PATH_MAX ; 
 scalar_t__ backup_type ; 
 scalar_t__ FUNC0 (char const*,char*) ; 
 int debug ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 char* FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,scalar_t__) ; 
 scalar_t__ none ; 
 scalar_t__* origprae ; 
 scalar_t__ FUNC6 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*,char*) ; 
 scalar_t__* simple_backup_suffix ; 
 scalar_t__ FUNC8 (char const*,struct stat*) ; 
 int FUNC9 (char*,char const*,int) ; 
 int FUNC10 (char*,...) ; 
 scalar_t__ FUNC11 (char*) ; 
 char* FUNC12 (char*,char) ; 
 char FUNC13 (unsigned char) ; 
 int /*<<< orphan*/  FUNC14 (char const*) ; 

int
FUNC15(const char *orig)
{
	struct stat	filestat;
	char		bakname[PATH_MAX], *s, *simplename;
	dev_t		orig_device;
	ino_t		orig_inode;

	if (backup_type == none || FUNC8(orig, &filestat) != 0)
		return 0;			/* nothing to do */
	/*
	 * If the user used zero prefixes or suffixes, then
	 * he doesn't want backups.  Yet we have to remove
	 * orig to break possible hardlinks.
	 */
	if ((origprae && *origprae == 0) || *simple_backup_suffix == 0) {
		FUNC14(orig);
		return 0;
	}
	orig_device = filestat.st_dev;
	orig_inode = filestat.st_ino;

	if (origprae) {
		if (FUNC10(bakname, origprae, sizeof(bakname)) >= sizeof(bakname) ||
		    FUNC9(bakname, orig, sizeof(bakname)) >= sizeof(bakname))
			FUNC1("filename %s too long for buffer\n", origprae);
	} else {
		if ((s = FUNC2(orig)) == NULL)
			FUNC1("out of memory\n");
		if (FUNC10(bakname, s, sizeof(bakname)) >= sizeof(bakname))
			FUNC1("filename %s too long for buffer\n", s);
		FUNC3(s);
	}

	if ((simplename = FUNC12(bakname, '/')) != NULL)
		simplename = simplename + 1;
	else
		simplename = bakname;

	/*
	 * Find a backup name that is not the same file. Change the
	 * first lowercase char into uppercase; if that isn't
	 * sufficient, chop off the first char and try again.
	 */
	while (FUNC8(bakname, &filestat) == 0 &&
	    orig_device == filestat.st_dev && orig_inode == filestat.st_ino) {
		/* Skip initial non-lowercase chars.  */
		for (s = simplename; *s && !FUNC4((unsigned char)*s); s++)
			;
		if (*s)
			*s = FUNC13((unsigned char)*s);
		else
			FUNC5(simplename, simplename + 1,
			    FUNC11(simplename + 1) + 1);
	}
#ifdef DEBUGGING
	if (debug & 4)
		say("Moving %s to %s.\n", orig, bakname);
#endif
	if (FUNC6(orig, bakname) < 0) {
		if (errno != EXDEV || FUNC0(orig, bakname) < 0)
			return -1;
	}
	return 0;
}