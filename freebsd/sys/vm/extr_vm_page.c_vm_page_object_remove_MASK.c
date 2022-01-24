#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vm_page_t ;
typedef  TYPE_2__* vm_object_t ;
struct TYPE_8__ {scalar_t__ resident_page_count; scalar_t__ type; int /*<<< orphan*/  handle; int /*<<< orphan*/  memq; int /*<<< orphan*/  rtree; } ;
struct TYPE_7__ {int ref_count; int /*<<< orphan*/  pindex; TYPE_2__* object; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ OBJT_VNODE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int VPRC_OBJREF ; 
 int /*<<< orphan*/  listq ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(vm_page_t m)
{
	vm_object_t object;
	vm_page_t mrem;

	object = m->object;
	FUNC2(object);
	FUNC0((m->ref_count & VPRC_OBJREF) != 0,
	    ("page %p is missing its object ref", m));

	mrem = FUNC4(&object->rtree, m->pindex);
	FUNC0(mrem == m, ("removed page %p, expected page %p", mrem, m));

	/*
	 * Now remove from the object's list of backed pages.
	 */
	FUNC1(&object->memq, m, listq);

	/*
	 * And show that the object has one fewer resident page.
	 */
	object->resident_page_count--;

	/*
	 * The vnode may now be recycled.
	 */
	if (object->resident_page_count == 0 && object->type == OBJT_VNODE)
		FUNC3(object->handle);
}