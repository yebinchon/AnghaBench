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
typedef  TYPE_1__* vm_object_t ;
struct TYPE_3__ {int /*<<< orphan*/  flags; scalar_t__ shadow_count; scalar_t__ resident_page_count; int /*<<< orphan*/  busy; int /*<<< orphan*/  paging_in_progress; int /*<<< orphan*/  ref_count; int /*<<< orphan*/  rtree; int /*<<< orphan*/  type; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  OBJT_DEAD ; 
 int /*<<< orphan*/  OBJ_DEAD ; 
 int RW_DUPOK ; 
 int RW_NEW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  object_list ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  vm_object_list ; 
 int /*<<< orphan*/  vm_object_list_mtx ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(void *mem, int size, int flags)
{
	vm_object_t object;

	object = (vm_object_t)mem;
	FUNC4(&object->lock, "vm object", RW_DUPOK | RW_NEW);

	/* These are true for any object that has been freed */
	object->type = OBJT_DEAD;
	FUNC5(&object->rtree);
	FUNC3(&object->ref_count, 0);
	FUNC3(&object->paging_in_progress, 0);
	FUNC3(&object->busy, 0);
	object->resident_page_count = 0;
	object->shadow_count = 0;
	object->flags = OBJ_DEAD;

	FUNC1(&vm_object_list_mtx);
	FUNC0(&vm_object_list, object, object_list);
	FUNC2(&vm_object_list_mtx);
	return (0);
}