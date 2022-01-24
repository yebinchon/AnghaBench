#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_3__* vm_page_t ;
typedef  TYPE_4__* vm_object_t ;
struct TYPE_15__ {int /*<<< orphan*/  q; } ;
struct TYPE_11__ {int /*<<< orphan*/  devp_pglist; } ;
struct TYPE_12__ {TYPE_1__ devp; } ;
struct TYPE_14__ {scalar_t__ type; TYPE_2__ un_pager; } ;
struct TYPE_13__ {int oflags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ OBJT_DEVICE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int VPO_UNMANAGED ; 
 TYPE_6__ plinks ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 

__attribute__((used)) static void
FUNC4(vm_object_t object, vm_page_t m)
{

	FUNC2(object);
	FUNC0((object->type == OBJT_DEVICE &&
	    (m->oflags & VPO_UNMANAGED) != 0),
	    ("Managed device or page obj %p m %p", object, m));
	FUNC1(&object->un_pager.devp.devp_pglist, m, plinks.q);
	FUNC3(m);
}