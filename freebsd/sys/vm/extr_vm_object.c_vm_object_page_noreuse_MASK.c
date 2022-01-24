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
typedef  scalar_t__ vm_pindex_t ;
typedef  TYPE_1__* vm_page_t ;
typedef  TYPE_2__* vm_object_t ;
struct mtx {int dummy; } ;
struct TYPE_12__ {int flags; scalar_t__ resident_page_count; } ;
struct TYPE_11__ {scalar_t__ pindex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int OBJ_FICTITIOUS ; 
 int OBJ_UNMANAGED ; 
 TYPE_1__* FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  listq ; 
 int /*<<< orphan*/  FUNC3 (struct mtx*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,struct mtx**) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 TYPE_1__* FUNC6 (TYPE_2__*,scalar_t__) ; 

void
FUNC7(vm_object_t object, vm_pindex_t start, vm_pindex_t end)
{
	struct mtx *mtx;
	vm_page_t p, next;

	FUNC2(object);
	FUNC0((object->flags & (OBJ_FICTITIOUS | OBJ_UNMANAGED)) == 0,
	    ("vm_object_page_noreuse: illegal object %p", object));
	if (object->resident_page_count == 0)
		return;
	p = FUNC6(object, start);

	/*
	 * Here, the variable "p" is either (1) the page with the least pindex
	 * greater than or equal to the parameter "start" or (2) NULL. 
	 */
	mtx = NULL;
	for (; p != NULL && (p->pindex < end || end == 0); p = next) {
		next = FUNC1(p, listq);
		FUNC4(p, &mtx);
		FUNC5(p);
	}
	if (mtx != NULL)
		FUNC3(mtx);
}