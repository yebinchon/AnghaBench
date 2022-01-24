#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uid_t ;
struct stat {int dummy; } ;
struct TYPE_3__ {int flags; scalar_t__ type; scalar_t__ st_uid; scalar_t__ st_flags; int /*<<< orphan*/  st_mode; int /*<<< orphan*/  st_gid; struct TYPE_3__* child; int /*<<< orphan*/  slink; int /*<<< orphan*/  name; struct TYPE_3__* next; } ;
typedef  TYPE_1__ NODE ;

/* Variables and functions */
 scalar_t__ F_DIR ; 
 int F_FLAGS ; 
 int F_GID ; 
 int F_GNAME ; 
 scalar_t__ F_LINK ; 
 int F_MODE ; 
 int F_OPT ; 
 int F_UID ; 
 int F_UNAME ; 
 int F_VISIT ; 
 int /*<<< orphan*/  S_IRWXU ; 
 scalar_t__ FUNC0 (char*,scalar_t__) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (char*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ dflag ; 
 int errno ; 
 int FUNC3 (char*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char*,int /*<<< orphan*/ ) ; 
 char* path ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char) ; 
 scalar_t__ qflag ; 
 scalar_t__ FUNC7 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC9 (int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ uflag ; 

__attribute__((used)) static void
FUNC11(NODE *p, char *tail)
{
	int create;
	char *tp;
	const char *type, *what;
	int serr;

	for (; p; p = p->next) {
		if (p->flags & F_OPT && !(p->flags & F_VISIT))
			continue;
		if (p->type != F_DIR && (dflag || p->flags & F_VISIT))
			continue;
		(void)FUNC8(tail, p->name);
		if (!(p->flags & F_VISIT)) {
			/* Don't print missing message if file exists as a
			   symbolic link and the -q flag is set. */
			struct stat statbuf;

			if (qflag && FUNC7(path, &statbuf) == 0)
				p->flags |= F_VISIT;
			else
				(void)FUNC5("%s missing", path);
		}
		if (p->type != F_DIR && p->type != F_LINK) {
			FUNC6('\n');
			continue;
		}

		create = 0;
		if (p->type == F_LINK)
			type = "symlink";
		else
			type = "directory";
		if (!(p->flags & F_VISIT) && uflag) {
			if (!(p->flags & (F_UID | F_UNAME)))
				(void)FUNC5(" (%s not created: user not specified)", type);
			else if (!(p->flags & (F_GID | F_GNAME)))
				(void)FUNC5(" (%s not created: group not specified)", type);
			else if (p->type == F_LINK) {
				if (FUNC10(p->slink, path))
					(void)FUNC5(" (symlink not created: %s)\n",
					    FUNC9(errno));
				else
					(void)FUNC5(" (created)\n");
				if (FUNC3(path, p->st_uid, p->st_gid) == -1) {
					serr = errno;
					if (p->st_uid == (uid_t)-1)
						what = "group";
					else if (FUNC3(path, (uid_t)-1,
					    p->st_gid) == -1)
						what = "user & group";
					else {
						what = "user";
						errno = serr;
					}
					(void)FUNC5("%s: %s not modified: %s"
					    "\n", path, what, FUNC9(errno));
				}
				continue;
			} else if (!(p->flags & F_MODE))
			    (void)FUNC5(" (directory not created: mode not specified)");
			else if (FUNC4(path, S_IRWXU))
				(void)FUNC5(" (directory not created: %s)",
				    FUNC9(errno));
			else {
				create = 1;
				(void)FUNC5(" (created)");
			}
		}
		if (!(p->flags & F_VISIT))
			(void)FUNC6('\n');

		for (tp = tail; *tp; ++tp);
		*tp = '/';
		FUNC11(p->child, tp + 1);
		*tp = '\0';

		if (!create && !uflag)
			continue;
		if (FUNC2(path, p->st_uid, p->st_gid) == -1) {
			serr = errno;
			if (p->st_uid == (uid_t)-1)
				what = "group";
			else if (FUNC2(path, (uid_t)-1, p->st_gid) == -1)
				what = "user & group";
			else {
				what = "user";
				errno = serr;
			}
			(void)FUNC5("%s: %s not modified: %s\n",
			    path, what, FUNC9(errno));
		}
		if (FUNC1(path, p->st_mode))
			(void)FUNC5("%s: permissions not set: %s\n",
			    path, FUNC9(errno));
		if ((p->flags & F_FLAGS) && p->st_flags &&
		    FUNC0(path, p->st_flags))
			(void)FUNC5("%s: file flags not set: %s\n",
			    path, FUNC9(errno));
	}
}