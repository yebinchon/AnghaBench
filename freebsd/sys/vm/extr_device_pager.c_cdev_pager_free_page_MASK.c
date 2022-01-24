#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vm_page_t ;
typedef  TYPE_2__* vm_object_t ;
struct TYPE_12__ {scalar_t__ type; } ;
struct TYPE_11__ {int oflags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ OBJT_DEVICE ; 
 scalar_t__ OBJT_MGTDEVICE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int VPO_UNMANAGED ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

void
FUNC6(vm_object_t object, vm_page_t m)
{

	FUNC1(object);
	if (object->type == OBJT_MGTDEVICE) {
		FUNC0((m->oflags & VPO_UNMANAGED) == 0, ("unmanaged %p", m));
		FUNC3(m);
		(void)FUNC4(m);
		FUNC5(m);
	} else if (object->type == OBJT_DEVICE)
		FUNC2(object, m);
}