#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * vm_object_t ;
typedef  TYPE_2__* vm_map_entry_t ;
struct thread {TYPE_2__* td_map_def_user; } ;
struct TYPE_5__ {int /*<<< orphan*/ * vm_object; } ;
struct TYPE_6__ {int eflags; int /*<<< orphan*/  end; int /*<<< orphan*/  start; TYPE_1__ object; struct TYPE_6__* defer_next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int MAP_ENTRY_IS_SUB_MAP ; 
 int MAP_ENTRY_VN_EXEC ; 
 int MAP_ENTRY_WRITECNT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct thread* curthread ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(void)
{
	struct thread *td;
	vm_map_entry_t entry, next;
	vm_object_t object;

	td = curthread;
	entry = td->td_map_def_user;
	td->td_map_def_user = NULL;
	while (entry != NULL) {
		next = entry->defer_next;
		FUNC1((entry->eflags & (MAP_ENTRY_WRITECNT |
		    MAP_ENTRY_VN_EXEC)) != (MAP_ENTRY_WRITECNT |
		    MAP_ENTRY_VN_EXEC));
		if ((entry->eflags & MAP_ENTRY_WRITECNT) != 0) {
			/*
			 * Decrement the object's writemappings and
			 * possibly the vnode's v_writecount.
			 */
			FUNC0((entry->eflags & MAP_ENTRY_IS_SUB_MAP) == 0,
			    ("Submap with writecount"));
			object = entry->object.vm_object;
			FUNC0(object != NULL, ("No object for writecount"));
			FUNC4(object, entry->start,
			    entry->end);
		}
		FUNC3(entry, false);
		FUNC2(entry, FALSE);
		entry = next;
	}
}