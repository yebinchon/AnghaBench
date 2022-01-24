#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vm_pindex_t ;
typedef  TYPE_1__* vm_page_t ;
typedef  TYPE_2__* vm_object_t ;
struct TYPE_14__ {int /*<<< orphan*/  rtree; } ;
struct TYPE_13__ {scalar_t__ ref_count; scalar_t__ pindex; TYPE_2__* object; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 

int
FUNC7(vm_page_t m, vm_object_t new_object, vm_pindex_t new_pindex)
{
	vm_page_t mpred;
	vm_pindex_t opidx;

	FUNC1(new_object);

	FUNC0(m->ref_count != 0, ("vm_page_rename: page %p has no refs", m));
	mpred = FUNC6(&new_object->rtree, new_pindex);
	FUNC0(mpred == NULL || mpred->pindex != new_pindex,
	    ("vm_page_rename: pindex already renamed"));

	/*
	 * Create a custom version of vm_page_insert() which does not depend
	 * by m_prev and can cheat on the implementation aspects of the
	 * function.
	 */
	opidx = m->pindex;
	m->pindex = new_pindex;
	if (FUNC5(&new_object->rtree, m)) {
		m->pindex = opidx;
		return (1);
	}

	/*
	 * The operation cannot fail anymore.  The removal must happen before
	 * the listq iterator is tainted.
	 */
	m->pindex = opidx;
	FUNC4(m);

	/* Return back to the new pindex to complete vm_page_insert(). */
	m->pindex = new_pindex;
	m->object = new_object;

	FUNC3(m, new_object, mpred);
	FUNC2(m);
	return (0);
}