#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int fts_level; int fts_info; int fts_errno; int /*<<< orphan*/  fts_path; } ;
struct TYPE_8__ {struct TYPE_8__* next; scalar_t__ (* execute ) (TYPE_1__*,TYPE_2__*) ;} ;
typedef  TYPE_1__ PLAN ;
typedef  TYPE_2__ FTSENT ;

/* Variables and functions */
 int /*<<< orphan*/  BADCH ; 
 int ENOENT ; 
#define  FTS_D 133 
#define  FTS_DNR 132 
#define  FTS_DP 131 
#define  FTS_ERR 130 
#define  FTS_NS 129 
 int /*<<< orphan*/  FTS_SKIP ; 
#define  FTS_W 128 
 int FTS_WHITEOUT ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int,int,char*) ; 
 int errno ; 
 int exitstatus ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * find_compare ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 (char**,int,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int ftsoptions ; 
 scalar_t__ ignore_readdir_race ; 
 int /*<<< orphan*/  isdepth ; 
 scalar_t__ issort ; 
 scalar_t__ isxargs ; 
 int maxdepth ; 
 int mindepth ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/ * tree ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,...) ; 

int
FUNC11(PLAN *plan, char *paths[])
{
	FTSENT *entry;
	PLAN *p;
	int e;

	tree = FUNC4(paths, ftsoptions, (issort ? find_compare : NULL));
	if (tree == NULL)
		FUNC0(1, "ftsopen");

	exitstatus = 0;
	while (errno = 0, (entry = FUNC5(tree)) != NULL) {
		if (maxdepth != -1 && entry->fts_level >= maxdepth) {
			if (FUNC6(tree, entry, FTS_SKIP))
				FUNC0(1, "%s", entry->fts_path);
		}

		switch (entry->fts_info) {
		case FTS_D:
			if (isdepth)
				continue;
			break;
		case FTS_DP:
			if (!isdepth)
				continue;
			break;
		case FTS_DNR:
		case FTS_NS:
			if (ignore_readdir_race &&
			    entry->fts_errno == ENOENT && entry->fts_level > 0)
				continue;
			/* FALLTHROUGH */
		case FTS_ERR:
			(void)FUNC2(stdout);
			FUNC10("%s: %s",
			    entry->fts_path, FUNC7(entry->fts_errno));
			exitstatus = 1;
			continue;
#if defined(FTS_W) && defined(FTS_WHITEOUT)
		case FTS_W:
			if (ftsoptions & FTS_WHITEOUT)
				break;
			continue;
#endif /* FTS_W */
		}
#define	BADCH	" \t\n\\'\""
		if (isxargs && FUNC8(entry->fts_path, BADCH)) {
			(void)FUNC2(stdout);
			FUNC10("%s: illegal path", entry->fts_path);
			exitstatus = 1;
			continue;
		}

		if (mindepth != -1 && entry->fts_level < mindepth)
			continue;

		/*
		 * Call all the functions in the execution plan until one is
		 * false or all have been executed.  This is where we do all
		 * the work specified by the user on the command line.
		 */
		for (p = plan; p && (p->execute)(p, entry); p = p->next);
	}
	e = errno;
	FUNC3();
	if (e && (!ignore_readdir_race || e != ENOENT))
		FUNC1(1, e, "fts_read");
	return (exitstatus);
}