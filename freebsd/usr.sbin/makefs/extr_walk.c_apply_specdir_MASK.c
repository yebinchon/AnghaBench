#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct stat {int st_nlink; int /*<<< orphan*/  st_ctimensec; int /*<<< orphan*/  st_atimensec; int /*<<< orphan*/  st_mtimensec; int /*<<< orphan*/  st_ctime; int /*<<< orphan*/  st_atime; int /*<<< orphan*/  st_mtime; int /*<<< orphan*/  st_mode; } ;
typedef  int /*<<< orphan*/  stbuf ;
typedef  int /*<<< orphan*/  path ;
struct TYPE_9__ {scalar_t__ type; char* name; struct TYPE_9__* child; int /*<<< orphan*/  symlink; struct TYPE_9__* first; struct TYPE_9__* parent; struct TYPE_9__* next; } ;
typedef  TYPE_1__ fsnode ;
struct TYPE_11__ {int /*<<< orphan*/  tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct TYPE_10__ {scalar_t__ type; char* name; int flags; int /*<<< orphan*/ * slink; struct TYPE_10__* next; struct TYPE_10__* child; } ;
typedef  TYPE_2__ NODE ;

/* Variables and functions */
 int DEBUG_APPLY_SPECENTRY ; 
 int DEBUG_APPLY_SPECFILE ; 
 int DEBUG_APPLY_SPECONLY ; 
 scalar_t__ F_DIR ; 
 int F_GID ; 
 int F_GNAME ; 
 int F_MODE ; 
 int F_OPT ; 
 int F_TYPE ; 
 int F_UID ; 
 int F_UNAME ; 
 int /*<<< orphan*/  MAXPATHLEN ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ S_IFDIR ; 
 scalar_t__ S_IFLNK ; 
 int /*<<< orphan*/  FUNC1 (char const*,TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 void* FUNC3 (char*,char*,char*,struct stat*) ; 
 int debug ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int FUNC7 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC8 (struct stat*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*,...) ; 
 scalar_t__ FUNC11 (char*,int,char*,char const*,char*) ; 
 TYPE_3__ start_time ; 
 scalar_t__ FUNC12 (char*,char*) ; 

__attribute__((used)) static void
FUNC13(const char *dir, NODE *specnode, fsnode *dirnode, int speconly)
{
	char	 path[MAXPATHLEN + 1];
	NODE	*curnode;
	fsnode	*curfsnode;

	FUNC2(specnode != NULL);
	FUNC2(dirnode != NULL);

	if (debug & DEBUG_APPLY_SPECFILE)
		FUNC10("apply_specdir: %s %p %p\n", dir, specnode, dirnode);

	if (specnode->type != F_DIR)
		FUNC4(1, "Specfile node `%s/%s' is not a directory",
		    dir, specnode->name);
	if (dirnode->type != S_IFDIR)
		FUNC4(1, "Directory node `%s/%s' is not a directory",
		    dir, dirnode->name);

	FUNC1(dir, specnode, dirnode);

	/* Remove any filesystem nodes not found in specfile */
	/* XXX inefficient.  This is O^2 in each dir and it would
	 * have been better never to have walked this part of the tree
	 * to begin with
	 */
	if (speconly) {
		fsnode *next;
		FUNC2(dirnode->name[0] == '.' && dirnode->name[1] == '\0');
		for (curfsnode = dirnode->next; curfsnode != NULL; curfsnode = next) {
			next = curfsnode->next;
			for (curnode = specnode->child; curnode != NULL;
			     curnode = curnode->next) {
				if (FUNC12(curnode->name, curfsnode->name) == 0)
					break;
			}
			if (curnode == NULL) {
				if (debug & DEBUG_APPLY_SPECONLY) {
					FUNC10("apply_specdir: trimming %s/%s %p\n", dir, curfsnode->name, curfsnode);
				}
				FUNC6(curfsnode);
			}
		}
	}

			/* now walk specnode->child matching up with dirnode */
	for (curnode = specnode->child; curnode != NULL;
	    curnode = curnode->next) {
		if (debug & DEBUG_APPLY_SPECENTRY)
			FUNC10("apply_specdir:  spec %s\n",
			    curnode->name);
		for (curfsnode = dirnode->next; curfsnode != NULL;
		    curfsnode = curfsnode->next) {
#if 0	/* too verbose for now */
			if (debug & DEBUG_APPLY_SPECENTRY)
				printf("apply_specdir:  dirent %s\n",
				    curfsnode->name);
#endif
			if (FUNC12(curnode->name, curfsnode->name) == 0)
				break;
		}
		if ((size_t)FUNC11(path, sizeof(path), "%s/%s", dir,
		    curnode->name) >= sizeof(path))
			FUNC4(1, "Pathname too long.");
		if (curfsnode == NULL) {	/* need new entry */
			struct stat	stbuf;

					    /*
					     * don't add optional spec entries
					     * that lack an existing fs entry
					     */
			if ((curnode->flags & F_OPT) &&
			    FUNC7(path, &stbuf) == -1)
					continue;

					/* check that enough info is provided */
#define NODETEST(t, m)							\
			if (!(t))					\
				errx(1, "`%s': %s not provided", path, m)
			NODETEST(curnode->flags & F_TYPE, "type");
			NODETEST(curnode->flags & F_MODE, "mode");
				/* XXX: require F_TIME ? */
			NODETEST(curnode->flags & F_GID ||
			    curnode->flags & F_GNAME, "group");
			NODETEST(curnode->flags & F_UID ||
			    curnode->flags & F_UNAME, "user");
/*			if (curnode->type == F_BLOCK || curnode->type == F_CHAR)
				NODETEST(curnode->flags & F_DEV,
				    "device number");*/
#undef NODETEST

			if (debug & DEBUG_APPLY_SPECFILE)
				FUNC10("apply_specdir: adding %s\n",
				    curnode->name);
					/* build minimal fsnode */
			FUNC8(&stbuf, 0, sizeof(stbuf));
			stbuf.st_mode = FUNC9(curnode->type);
			stbuf.st_nlink = 1;
			stbuf.st_mtime = stbuf.st_atime =
			    stbuf.st_ctime = start_time.tv_sec;
#if HAVE_STRUCT_STAT_ST_MTIMENSEC
			stbuf.st_mtimensec = stbuf.st_atimensec =
			    stbuf.st_ctimensec = start_time.tv_nsec;
#endif
			curfsnode = FUNC3(".", ".", curnode->name,
			    &stbuf);
			curfsnode->parent = dirnode->parent;
			curfsnode->first = dirnode;
			curfsnode->next = dirnode->next;
			dirnode->next = curfsnode;
			if (curfsnode->type == S_IFDIR) {
					/* for dirs, make "." entry as well */
				curfsnode->child = FUNC3(".", ".", ".",
				    &stbuf);
				curfsnode->child->parent = curfsnode;
				curfsnode->child->first = curfsnode->child;
			}
			if (curfsnode->type == S_IFLNK) {
				FUNC2(curnode->slink != NULL);
					/* for symlinks, copy the target */
				curfsnode->symlink = FUNC5(curnode->slink);
			}
		}
		FUNC1(dir, curnode, curfsnode);
		if (curnode->type == F_DIR) {
			if (curfsnode->type != S_IFDIR)
				FUNC4(1, "`%s' is not a directory", path);
			FUNC2 (curfsnode->child != NULL);
			FUNC13(path, curnode, curfsnode->child, speconly);
		}
	}
}