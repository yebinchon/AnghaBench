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
struct bsdar {int argc; char** argv; int /*<<< orphan*/  v_obj; } ;
struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;
struct ar_obj {char* maddr; size_t size; int fd; scalar_t__ ino; scalar_t__ dev; int /*<<< orphan*/  mtime; int /*<<< orphan*/  md; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; int /*<<< orphan*/ * name; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ARCHIVE_EOF ; 
 int ARCHIVE_FATAL ; 
 int ARCHIVE_RETRY ; 
 int ARCHIVE_WARN ; 
 int /*<<< orphan*/  DEF_BLKSZ ; 
 int /*<<< orphan*/  EX_DATAERR ; 
 int /*<<< orphan*/  EX_SOFTWARE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct ar_obj*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC4 (struct archive_entry*) ; 
 char* FUNC5 (struct archive_entry*) ; 
 size_t FUNC6 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC7 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC8 (struct archive*) ; 
 int /*<<< orphan*/  FUNC9 (struct archive*) ; 
 int /*<<< orphan*/  FUNC10 (struct archive*) ; 
 scalar_t__ FUNC11 (struct archive*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC12 (struct archive*) ; 
 struct archive* FUNC13 () ; 
 int FUNC14 (struct archive*,struct archive_entry**) ; 
 int /*<<< orphan*/  FUNC15 (struct archive*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct archive*) ; 
 char* FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (struct bsdar*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC19 (struct bsdar*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC20 (char*) ; 
 void* FUNC21 (int) ; 
 int /*<<< orphan*/  objs ; 
 scalar_t__ FUNC22 (char const*,char const*) ; 
 int /*<<< orphan*/ * FUNC23 (char const*) ; 

__attribute__((used)) static void
FUNC24(struct bsdar *bsdar, const char *archive, int checkargv)
{
	struct archive		 *a;
	struct archive_entry	 *entry;
	struct ar_obj		 *obj;
	const char		 *name;
	const char		 *bname;
	char			 *buff;
	char			**av;
	size_t			  size;
	int			  i, r, find;

	if ((a = FUNC13()) == NULL)
		FUNC18(bsdar, EX_SOFTWARE, 0, "archive_read_new failed");
	FUNC16(a);
	FUNC0(FUNC15(a, archive, DEF_BLKSZ));
	for (;;) {
		r = FUNC14(a, &entry);
		if (r == ARCHIVE_FATAL)
			FUNC18(bsdar, EX_DATAERR, FUNC8(a), "%s",
			    FUNC9(a));
		if (r == ARCHIVE_EOF)
			break;
		if (r == ARCHIVE_WARN || r == ARCHIVE_RETRY)
			FUNC19(bsdar, FUNC8(a), "%s",
			    FUNC9(a));
		if (r == ARCHIVE_RETRY) {
			FUNC19(bsdar, 0, "Retrying...");
			continue;
		}

		name = FUNC5(entry);

		/*
		 * skip pseudo members.
		 */
		if (FUNC22(name, "/") == 0 || FUNC22(name, "//") == 0)
			continue;

		/*
		 * If checkargv is set, only read those members specified
		 * in argv.
		 */
		if (checkargv && bsdar->argc > 0) {
			find = 0;
			for(i = 0; i < bsdar->argc; i++) {
				av = &bsdar->argv[i];
				if (*av == NULL)
					continue;
				if ((bname = FUNC17(*av)) == NULL)
					FUNC18(bsdar, EX_SOFTWARE, errno,
					    "basename failed");
				if (FUNC22(bname, name) != 0)
					continue;

				*av = NULL;
				find = 1;
				break;
			}
			if (!find)
				continue;
		}

		size = FUNC6(entry);

		if (size > 0) {
			if ((buff = FUNC21(size)) == NULL)
				FUNC18(bsdar, EX_SOFTWARE, errno,
				    "malloc failed");
			if (FUNC11(a, buff, size) != (ssize_t)size) {
				FUNC19(bsdar, FUNC8(a), "%s",
				    FUNC9(a));
				FUNC20(buff);
				continue;
			}
		} else
			buff = NULL;

		obj = FUNC21(sizeof(struct ar_obj));
		if (obj == NULL)
			FUNC18(bsdar, EX_SOFTWARE, errno, "malloc failed");
		obj->maddr = buff;
		if ((obj->name = FUNC23(name)) == NULL)
			FUNC18(bsdar, EX_SOFTWARE, errno, "strdup failed");
		obj->size = size;
		obj->uid = FUNC7(entry);
		obj->gid = FUNC2(entry);
		obj->md = FUNC3(entry);
		obj->mtime = FUNC4(entry);
		obj->dev = 0;
		obj->ino = 0;

		/*
		 * Objects from archive have obj->fd set to -1,
		 * for the ease of cleaning up.
		 */
		obj->fd = -1;
		FUNC1(&bsdar->v_obj, obj, objs);
	}
	FUNC0(FUNC10(a));
	FUNC0(FUNC12(a));
}