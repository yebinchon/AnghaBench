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
typedef  int uid_t ;
typedef  scalar_t__ time_t ;
struct tm {int dummy; } ;
struct stat {scalar_t__ st_mtime; } ;
struct bsdar {char const* filename; int argc; char** argv; int options; } ;
struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;
typedef  int /*<<< orphan*/  mode_t ;
typedef  int gid_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ARCHIVE_EOF ; 
 int ARCHIVE_EXTRACT_SECURE_NODOTDOT ; 
 int ARCHIVE_EXTRACT_SECURE_SYMLINKS ; 
 int ARCHIVE_EXTRACT_TIME ; 
 int ARCHIVE_FATAL ; 
 int ARCHIVE_RETRY ; 
 int ARCHIVE_WARN ; 
 int AR_CC ; 
 int AR_O ; 
 int AR_U ; 
 int AR_V ; 
 int /*<<< orphan*/  DEF_BLKSZ ; 
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  EX_SOFTWARE ; 
 int FUNC1 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct archive_entry*) ; 
 scalar_t__ FUNC3 (struct archive_entry*) ; 
 char* FUNC4 (struct archive_entry*) ; 
 size_t FUNC5 (struct archive_entry*) ; 
 int FUNC6 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC7 (struct archive*) ; 
 char const* FUNC8 (struct archive*) ; 
 int /*<<< orphan*/  FUNC9 (struct archive*) ; 
 int FUNC10 (struct archive*,int) ; 
 int FUNC11 (struct archive*) ; 
 int FUNC12 (struct archive*,struct archive_entry*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct archive*) ; 
 struct archive* FUNC14 () ; 
 int FUNC15 (struct archive*,struct archive_entry**) ; 
 int /*<<< orphan*/  FUNC16 (struct archive*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct archive*) ; 
 char* FUNC18 (char*) ; 
 int /*<<< orphan*/  FUNC19 (struct bsdar*,int /*<<< orphan*/ ,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC20 (struct bsdar*,int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,char*,...) ; 
 struct tm* FUNC23 (scalar_t__*) ; 
 scalar_t__ FUNC24 (char const*,struct stat*) ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC25 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC26 (char*,int,char*,struct tm*) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC28(struct bsdar *bsdar, char mode)
{
	struct archive		 *a;
	struct archive_entry	 *entry;
	struct stat		  sb;
	struct tm		 *tp;
	const char		 *bname;
	const char		 *name;
	mode_t			  md;
	size_t			  size;
	time_t			  mtime;
	uid_t			  uid;
	gid_t			  gid;
	char			**av;
	char			  buf[25];
	char			  find;
	int			  flags, r, i;

	if ((a = FUNC14()) == NULL)
		FUNC19(bsdar, EX_SOFTWARE, 0, "archive_read_new failed");
	FUNC17(a);
	FUNC0(FUNC16(a, bsdar->filename, DEF_BLKSZ));

	for (;;) {
		r = FUNC15(a, &entry);
		if (r == ARCHIVE_WARN || r == ARCHIVE_RETRY ||
		    r == ARCHIVE_FATAL)
			FUNC20(bsdar, FUNC7(a), "%s",
			    FUNC8(a));
		if (r == ARCHIVE_EOF || r == ARCHIVE_FATAL)
			break;
		if (r == ARCHIVE_RETRY) {
			FUNC20(bsdar, 0, "Retrying...");
			continue;
		}

		if ((name = FUNC4(entry)) == NULL)
			break;

		/* Skip pseudo members. */
		if (FUNC25(name, "/") == 0 || FUNC25(name, "//") == 0 ||
		    FUNC25(name, "/SYM64/") == 0)
			continue;

		if (bsdar->argc > 0) {
			find = 0;
			for(i = 0; i < bsdar->argc; i++) {
				av = &bsdar->argv[i];
				if (*av == NULL)
					continue;
				if ((bname = FUNC18(*av)) == NULL)
					FUNC19(bsdar, EX_SOFTWARE, errno,
					    "basename failed");
				if (FUNC25(bname, name) != 0)
					continue;

				*av = NULL;
				find = 1;
				break;
			}
			if (!find)
				continue;
		}

		if (mode == 't') {
			if (bsdar->options & AR_V) {
				md = FUNC2(entry);
				uid = FUNC6(entry);
				gid = FUNC1(entry);
				size = FUNC5(entry);
				mtime = FUNC3(entry);
				(void)FUNC27(md, buf);
				(void)FUNC22(stdout, "%s %6d/%-6d %8jd ",
				    buf + 1, uid, gid, (uintmax_t)size);
				tp = FUNC23(&mtime);
				(void)FUNC26(buf, sizeof(buf),
				    "%b %e %H:%M %Y", tp);
				(void)FUNC22(stdout, "%s %s", buf, name);
			} else
				(void)FUNC22(stdout, "%s", name);
			r = FUNC11(a);
			if (r == ARCHIVE_WARN || r == ARCHIVE_RETRY ||
			    r == ARCHIVE_FATAL) {
				(void)FUNC22(stdout, "\n");
				FUNC20(bsdar, FUNC7(a), "%s",
				    FUNC8(a));
			}

			if (r == ARCHIVE_FATAL)
				break;

			(void)FUNC22(stdout, "\n");
		} else {
			/* mode == 'x' || mode = 'p' */
			if (mode == 'p') {
				if (bsdar->options & AR_V) {
					(void)FUNC22(stdout, "\n<%s>\n\n",
					    name);
					FUNC21(stdout);
				}
				r = FUNC10(a, 1);
			} else {
				/* mode == 'x' */
				if (FUNC24(name, &sb) != 0) {
					if (errno != ENOENT) {
						FUNC20(bsdar, 0,
						    "stat %s failed",
						    bsdar->filename);
						continue;
					}
				} else {
					/* stat success, file exist */
					if (bsdar->options & AR_CC)
						continue;
					if (bsdar->options & AR_U &&
					    FUNC3(entry) <=
					    sb.st_mtime)
						continue;
				}

				if (bsdar->options & AR_V)
					(void)FUNC22(stdout, "x - %s\n", name);
				/* Disallow absolute paths. */
				if (name[0] == '/') {
					FUNC20(bsdar, 0,
					    "Absolute path '%s'", name);
					continue;
				}
				/* Basic path security flags. */
				flags = ARCHIVE_EXTRACT_SECURE_SYMLINKS |
				    ARCHIVE_EXTRACT_SECURE_NODOTDOT;
				if (bsdar->options & AR_O)
					flags |= ARCHIVE_EXTRACT_TIME;

				r = FUNC12(a, entry, flags);
			}

			if (r)
				FUNC20(bsdar, FUNC7(a), "%s",
				    FUNC8(a));
		}
	}
	FUNC0(FUNC9(a));
	FUNC0(FUNC13(a));
}