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
struct denode {int dummy; } ;
typedef  int /*<<< orphan*/  pbuf ;
struct TYPE_10__ {char* name; char* contents; int /*<<< orphan*/  path; int /*<<< orphan*/  type; struct TYPE_10__* child; TYPE_1__* inode; struct TYPE_10__* parent; struct TYPE_10__* next; } ;
typedef  TYPE_2__ fsnode ;
struct TYPE_11__ {scalar_t__ curinode; } ;
typedef  TYPE_3__ fsinfo_t ;
struct TYPE_9__ {int flags; scalar_t__ ino; } ;

/* Variables and functions */
 int FI_ALLOCATED ; 
 int FI_WRITTEN ; 
 int MAXPATHLEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct denode* FUNC2 (char*,struct denode*,TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC3 (char*,struct denode*,TYPE_2__*) ; 
 scalar_t__ FUNC4 (char*,int,char*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,...) ; 

__attribute__((used)) static int
FUNC7(const char *path, struct denode *dir, fsnode *root,
    fsnode *parent, fsinfo_t *fsopts)
{
	fsnode *cur;
	char pbuf[MAXPATHLEN];

	FUNC1(dir != NULL);
	FUNC1(root != NULL);
	FUNC1(fsopts != NULL);

	for (cur = root->next; cur != NULL; cur = cur->next) {
		if ((size_t)FUNC4(pbuf, sizeof(pbuf), "%s/%s", path,
		    cur->name) >= sizeof(pbuf)) {
			FUNC6("path %s too long", pbuf);
			return -1;
		}

		if ((cur->inode->flags & FI_ALLOCATED) == 0) {
			cur->inode->flags |= FI_ALLOCATED;
			if (cur != root) {
				fsopts->curinode++;
				cur->inode->ino = fsopts->curinode;
				cur->parent = parent;
			}
		}

		if (cur->inode->flags & FI_WRITTEN) {
			continue;	// hard link
		}
		cur->inode->flags |= FI_WRITTEN;

		if (cur->child) {
			struct denode *de;
			if ((de = FUNC2(pbuf, dir, cur)) == NULL) {
				FUNC5("msdosfs_mkdire %s", pbuf);
				return -1;
			}
			if (FUNC7(pbuf, de, cur->child, cur,
			    fsopts) == -1) {
				FUNC5("msdos_populate_dir %s", pbuf);
				return -1;
			}
			continue;
		} else if (!FUNC0(cur->type)) {
			FUNC6("skipping non-regular file %s/%s", cur->path,
			    cur->name);
			continue;
		}
		if (FUNC3(cur->contents ? cur->contents : pbuf, dir,
		    cur) == NULL) {
			FUNC5("msdosfs_mkfile %s", pbuf);
			return -1;
		}
	}
	return 0;
}