#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_pindex_t ;
typedef  TYPE_1__* vm_page_t ;
typedef  TYPE_2__* vm_object_t ;
struct TYPE_16__ {int /*<<< orphan*/  memq; int /*<<< orphan*/  rtree; } ;
struct TYPE_15__ {int ref_count; scalar_t__ queue; TYPE_2__* object; int /*<<< orphan*/  pindex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ PQ_NONE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int VPRC_OBJREF ; 
 int /*<<< orphan*/  FUNC4 (int*,int) ; 
 int /*<<< orphan*/  FUNC5 (int*,int) ; 
 int /*<<< orphan*/  listq ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ *,TYPE_1__*) ; 

vm_page_t
FUNC10(vm_page_t mnew, vm_object_t object, vm_pindex_t pindex)
{
	vm_page_t mold;

	FUNC3(object);
	FUNC0(mnew->object == NULL && (mnew->ref_count & VPRC_OBJREF) == 0,
	    ("vm_page_replace: page %p already in object", mnew));

	/*
	 * This function mostly follows vm_page_insert() and
	 * vm_page_remove() without the radix, object count and vnode
	 * dance.  Double check such functions for more comments.
	 */

	mnew->object = object;
	mnew->pindex = pindex;
	FUNC5(&mnew->ref_count, VPRC_OBJREF);
	mold = FUNC9(&object->rtree, mnew);
	FUNC0(mold->queue == PQ_NONE,
	    ("vm_page_replace: old page %p is on a paging queue", mold));

	/* Keep the resident page list in sorted order. */
	FUNC1(&object->memq, mold, mnew, listq);
	FUNC2(&object->memq, mold, listq);

	mold->object = NULL;
	FUNC4(&mold->ref_count, VPRC_OBJREF);
	FUNC8(mold);

	/*
	 * The object's resident_page_count does not change because we have
	 * swapped one page for another, but the generation count should
	 * change if the page is dirty.
	 */
	if (FUNC6(mnew))
		FUNC7(object);
	return (mold);
}