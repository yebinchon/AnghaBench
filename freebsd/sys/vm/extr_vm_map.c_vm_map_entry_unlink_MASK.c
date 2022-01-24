#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* vm_map_t ;
typedef  TYPE_3__* vm_map_entry_t ;
typedef  enum unlink_merge_type { ____Placeholder_unlink_merge_type } unlink_merge_type ;
struct TYPE_24__ {TYPE_1__* prev; struct TYPE_24__* next; struct TYPE_24__* left; struct TYPE_24__* right; int /*<<< orphan*/  offset; int /*<<< orphan*/  start; } ;
struct TYPE_23__ {int /*<<< orphan*/  nentries; int /*<<< orphan*/ * root; TYPE_3__ header; } ;
struct TYPE_22__ {TYPE_3__* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,TYPE_2__*,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  KTR_VM ; 
#define  UNLINK_MERGE_NEXT 129 
#define  UNLINK_MERGE_NONE 128 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,TYPE_3__*,TYPE_3__*,TYPE_3__*) ; 
 TYPE_3__* FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__**,TYPE_3__**) ; 

__attribute__((used)) static void
FUNC8(vm_map_t map, vm_map_entry_t entry,
    enum unlink_merge_type op)
{
	vm_map_entry_t llist, rlist, root, y;

	FUNC3(map);
	root = FUNC7(map, entry->start, 0, &llist, &rlist);
	FUNC1(root != NULL,
	    ("vm_map_entry_unlink: unlink object not mapped"));

	FUNC4(root, &rlist);
	switch (op) {
	case UNLINK_MERGE_NEXT:
		rlist->start = root->start;
		rlist->offset = root->offset;
		y = root->left;
		root = rlist;
		rlist = root->left;
		root->left = y;
		break;
	case UNLINK_MERGE_NONE:
		FUNC5(root, &llist);
		if (llist != &map->header) {
			root = llist;
			llist = root->right;
			root->right = NULL;
		} else if (rlist != &map->header) {
			root = rlist;
			rlist = root->left;
			root->left = NULL;
		} else
			root = NULL;
		break;
	}
	y = entry->next;
	y->prev = entry->prev;
	y->prev->next = y;
	if (root != NULL)
		FUNC6(map, root, llist, rlist);
	else
		map->root = NULL;
	FUNC2(map);
	map->nentries--;
	FUNC0(KTR_VM, "vm_map_entry_unlink: map %p, nentries %d, entry %p", map,
	    map->nentries, entry);
}