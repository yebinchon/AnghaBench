#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vm_object_t ;
struct TYPE_6__ {int /*<<< orphan*/  type; int /*<<< orphan*/ * handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  OBJT_DEAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pager_object_list ; 
 int /*<<< orphan*/  phys_pager_mtx ; 
 int /*<<< orphan*/  phys_pager_object_list ; 

__attribute__((used)) static void
FUNC5(vm_object_t object)
{

	if (object->handle != NULL) {
		FUNC2(object);
		FUNC3(&phys_pager_mtx);
		FUNC0(&phys_pager_object_list, object, pager_object_list);
		FUNC4(&phys_pager_mtx);
		FUNC1(object);
	}
	object->handle = NULL;
	object->type = OBJT_DEAD;
}