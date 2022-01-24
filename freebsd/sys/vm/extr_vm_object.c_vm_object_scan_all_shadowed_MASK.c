#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vm_pindex_t ;
typedef  TYPE_1__* vm_page_t ;
typedef  TYPE_2__* vm_object_t ;
struct TYPE_15__ {scalar_t__ type; scalar_t__ size; int /*<<< orphan*/  backing_object_offset; struct TYPE_15__* backing_object; } ;
struct TYPE_14__ {scalar_t__ pindex; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 scalar_t__ OBJT_DEFAULT ; 
 scalar_t__ OBJT_SWAP ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  listq ; 
 scalar_t__ FUNC4 (TYPE_2__*,scalar_t__) ; 
 TYPE_1__* FUNC5 (TYPE_2__*,scalar_t__) ; 
 TYPE_1__* FUNC6 (TYPE_2__*,scalar_t__) ; 
 scalar_t__ FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool
FUNC9(vm_object_t object)
{
	vm_object_t backing_object;
	vm_page_t p, pp;
	vm_pindex_t backing_offset_index, new_pindex, pi, ps;

	FUNC3(object);
	FUNC3(object->backing_object);

	backing_object = object->backing_object;

	if (backing_object->type != OBJT_DEFAULT &&
	    backing_object->type != OBJT_SWAP)
		return (false);

	pi = backing_offset_index = FUNC1(object->backing_object_offset);
	p = FUNC5(backing_object, pi);
	ps = FUNC4(backing_object, pi);

	/*
	 * Only check pages inside the parent object's range and
	 * inside the parent object's mapping of the backing object.
	 */
	for (;; pi++) {
		if (p != NULL && p->pindex < pi)
			p = FUNC2(p, listq);
		if (ps < pi)
			ps = FUNC4(backing_object, pi);
		if (p == NULL && ps >= backing_object->size)
			break;
		else if (p == NULL)
			pi = ps;
		else
			pi = FUNC0(p->pindex, ps);

		new_pindex = pi - backing_offset_index;
		if (new_pindex >= object->size)
			break;

		/*
		 * See if the parent has the page or if the parent's object
		 * pager has the page.  If the parent has the page but the page
		 * is not valid, the parent's object pager must have the page.
		 *
		 * If this fails, the parent does not completely shadow the
		 * object and we might as well give up now.
		 */
		pp = FUNC6(object, new_pindex);
		/*
		 * The valid check here is stable due to object lock being
		 * required to clear valid and initiate paging.
		 */
		if ((pp == NULL || FUNC7(pp)) &&
		    !FUNC8(object, new_pindex, NULL, NULL))
			return (false);
	}
	return (true);
}