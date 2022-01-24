#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vm_map_t ;
typedef  TYPE_2__* vm_map_entry_t ;
struct TYPE_18__ {int /*<<< orphan*/ * right; int /*<<< orphan*/  left; struct TYPE_18__* prev; struct TYPE_18__* next; int /*<<< orphan*/  start; } ;
struct TYPE_17__ {int /*<<< orphan*/  nentries; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,TYPE_1__*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  KTR_VM ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_2__*,TYPE_2__*,TYPE_2__*) ; 
 TYPE_2__* FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__**,TYPE_2__**) ; 

__attribute__((used)) static void
FUNC6(vm_map_t map, vm_map_entry_t entry)
{
	vm_map_entry_t llist, rlist, root;

	FUNC0(KTR_VM,
	    "vm_map_entry_link: map %p, nentries %d, entry %p", map,
	    map->nentries, entry);
	FUNC3(map);
	map->nentries++;
	root = FUNC5(map, entry->start, 0, &llist, &rlist);
	FUNC1(root == NULL,
	    ("vm_map_entry_link: link object already mapped"));
	entry->prev = llist;
	entry->next = rlist;
	llist->next = rlist->prev = entry;
	entry->left = *(entry->right = NULL);
	FUNC4(map, entry, llist, rlist);
	FUNC2(map);
}