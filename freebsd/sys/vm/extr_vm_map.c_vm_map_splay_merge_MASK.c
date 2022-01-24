#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  void* vm_size_t ;
typedef  TYPE_1__* vm_map_t ;
typedef  TYPE_2__* vm_map_entry_t ;
struct TYPE_14__ {void* max_free; struct TYPE_14__* right; struct TYPE_14__* left; } ;
struct TYPE_13__ {int /*<<< orphan*/  nupdates; TYPE_2__* root; TYPE_2__ header; } ;

/* Variables and functions */
 void* FUNC0 (void*,void*) ; 
 void* FUNC1 (TYPE_2__*,TYPE_2__*) ; 
 void* FUNC2 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__**,TYPE_2__**) ; 

__attribute__((used)) static void
FUNC4(vm_map_t map, vm_map_entry_t root,
    vm_map_entry_t llist, vm_map_entry_t rlist)
{
	vm_map_entry_t prev;
	vm_size_t max_free_left, max_free_right;

	max_free_left = FUNC1(root, llist);
	if (llist != &map->header) {
		prev = root->left;
		do {
			/*
			 * The max_free values of the children of llist are in
			 * llist->max_free and max_free_left.  Update with the
			 * max value.
			 */
			llist->max_free = max_free_left =
			    FUNC0(llist->max_free, max_free_left);
			FUNC3(&llist->right, &prev);
			FUNC3(&prev, &llist);
		} while (llist != &map->header);
		root->left = prev;
	}
	max_free_right = FUNC2(root, rlist);
	if (rlist != &map->header) {
		prev = root->right;
		do {
			/*
			 * The max_free values of the children of rlist are in
			 * rlist->max_free and max_free_right.  Update with the
			 * max value.
			 */
			rlist->max_free = max_free_right =
			    FUNC0(rlist->max_free, max_free_right);
			FUNC3(&rlist->left, &prev);
			FUNC3(&prev, &rlist);
		} while (rlist != &map->header);
		root->right = prev;
	}		
	root->max_free = FUNC0(max_free_left, max_free_right);
	map->root = root;
#ifdef DIAGNOSTIC
	++map->nupdates;
#endif
}