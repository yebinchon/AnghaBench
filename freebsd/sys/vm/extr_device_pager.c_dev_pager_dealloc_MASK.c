#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * vm_page_t ;
typedef  TYPE_4__* vm_object_t ;
struct TYPE_12__ {int /*<<< orphan*/  devp_pglist; int /*<<< orphan*/  dev; TYPE_1__* ops; } ;
struct TYPE_11__ {TYPE_3__ devp; } ;
struct TYPE_13__ {scalar_t__ type; int /*<<< orphan*/ * handle; TYPE_2__ un_pager; } ;
struct TYPE_10__ {int /*<<< orphan*/  (* cdev_pg_dtor ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 scalar_t__ OBJT_DEAD ; 
 scalar_t__ OBJT_DEVICE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dev_pager_mtx ; 
 int /*<<< orphan*/  dev_pager_object_list ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pager_object_list ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(vm_object_t object)
{
	vm_page_t m;

	FUNC3(object);
	object->un_pager.devp.ops->cdev_pg_dtor(object->un_pager.devp.dev);

	FUNC5(&dev_pager_mtx);
	FUNC1(&dev_pager_object_list, object, pager_object_list);
	FUNC6(&dev_pager_mtx);
	FUNC2(object);

	if (object->type == OBJT_DEVICE) {
		/*
		 * Free up our fake pages.
		 */
		while ((m = FUNC0(&object->un_pager.devp.devp_pglist))
		    != NULL)
			FUNC4(object, m);
	}
	object->handle = NULL;
	object->type = OBJT_DEAD;
}