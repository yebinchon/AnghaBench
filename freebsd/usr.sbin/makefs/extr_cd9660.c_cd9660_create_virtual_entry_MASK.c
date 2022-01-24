#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  iso9660_disk ;
struct TYPE_13__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  type; int /*<<< orphan*/  name; } ;
typedef  TYPE_2__ fsnode ;
struct TYPE_14__ {TYPE_2__* node; int /*<<< orphan*/  cn_children; struct TYPE_14__* parent; scalar_t__ level; TYPE_1__* isoDirRecord; } ;
typedef  TYPE_3__ cd9660node ;
struct TYPE_12__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FSNODE_F_HASSPEC ; 
 int /*<<< orphan*/  S_IFDIR ; 
 int /*<<< orphan*/  S_IFMT ; 
 int /*<<< orphan*/  S_IFREG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  cn_next_child ; 
 void* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char const*) ; 

__attribute__((used)) static cd9660node *
FUNC9(iso9660_disk *diskStructure, const char *name,
    cd9660node *parent, int file, int insert)
{
	cd9660node *temp;
	fsnode * tfsnode;

	FUNC2(parent != NULL);

	temp = FUNC3();
	if (temp == NULL)
		return NULL;

	tfsnode = FUNC7(sizeof(*tfsnode));
	tfsnode->name = FUNC8(name);
	temp->isoDirRecord = FUNC7(sizeof(*temp->isoDirRecord));

	FUNC4(diskStructure, tfsnode->name,
	    temp->isoDirRecord->name, file);

	temp->node = tfsnode;
	temp->parent = parent;

	if (insert) {
		if (temp->parent != NULL) {
			temp->level = temp->parent->level + 1;
			if (!FUNC0(&temp->parent->cn_children))
				FUNC6(temp->parent, temp);
			else
				FUNC1(&temp->parent->cn_children,
				    temp, cn_next_child);
		}
	}

	if (parent->node != NULL) {
		tfsnode->type = parent->node->type;
	}

	/* Clear out file type bits */
	tfsnode->type &= ~(S_IFMT);
	if (file)
		tfsnode->type |= S_IFREG;
	else
		tfsnode->type |= S_IFDIR;

	/* Indicate that there is no spec entry (inode) */
	tfsnode->flags &= ~(FSNODE_F_HASSPEC);
#if 0
	cd9660_copy_stat_info(parent, temp, file);
#endif
	return temp;
}