#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vm_pindex_t ;
typedef  TYPE_1__* vm_page_t ;
typedef  scalar_t__ vm_ooffset_t ;
typedef  TYPE_2__* vm_object_t ;
typedef  int boolean_t ;
struct TYPE_17__ {scalar_t__ type; scalar_t__ resident_page_count; scalar_t__ size; int generation; int cleangeneration; } ;
struct TYPE_16__ {scalar_t__ pindex; } ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  MNT_WAIT ; 
 int OBJPC_INVAL ; 
 int OBJPC_SYNC ; 
 scalar_t__ OBJT_VNODE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ PAGE_MASK ; 
 TYPE_1__* FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int TRUE ; 
 int /*<<< orphan*/  VM_ALLOC_WAITFAIL ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int VM_PAGER_CLUSTER_OK ; 
 int VM_PAGER_PUT_INVAL ; 
 int VM_PAGER_PUT_SYNC ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  listq ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int FUNC5 (TYPE_2__*,TYPE_1__*,int,int,int*,int*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int,int*) ; 
 scalar_t__ FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC8 (TYPE_2__*,scalar_t__) ; 
 scalar_t__ FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  vp ; 

boolean_t
FUNC11(vm_object_t object, vm_ooffset_t start, vm_ooffset_t end,
    int flags)
{
	vm_page_t np, p;
	vm_pindex_t pi, tend, tstart;
	int curgeneration, n, pagerflags;
	boolean_t eio, res, allclean;

	FUNC2(object);

	if (object->type != OBJT_VNODE || !FUNC4(object) ||
	    object->resident_page_count == 0)
		return (TRUE);

	pagerflags = (flags & (OBJPC_SYNC | OBJPC_INVAL)) != 0 ?
	    VM_PAGER_PUT_SYNC : VM_PAGER_CLUSTER_OK;
	pagerflags |= (flags & OBJPC_INVAL) != 0 ? VM_PAGER_PUT_INVAL : 0;

	tstart = FUNC0(start);
	tend = (end == 0) ? object->size : FUNC0(end + PAGE_MASK);
	allclean = tstart == 0 && tend >= object->size;
	res = TRUE;

rescan:
	curgeneration = object->generation;

	for (p = FUNC8(object, tstart); p != NULL; p = np) {
		pi = p->pindex;
		if (pi >= tend)
			break;
		np = FUNC1(p, listq);
		if (FUNC9(p))
			continue;
		if (FUNC7(p, VM_ALLOC_WAITFAIL) == 0) {
			if (object->generation != curgeneration &&
			    (flags & OBJPC_SYNC) != 0)
				goto rescan;
			np = FUNC8(object, pi);
			continue;
		}
		if (!FUNC6(p, flags, &allclean)) {
			FUNC10(p);
			continue;
		}

		n = FUNC5(object, p, pagerflags,
		    flags, &allclean, &eio);
		if (eio) {
			res = FALSE;
			allclean = FALSE;
		}
		if (object->generation != curgeneration &&
		    (flags & OBJPC_SYNC) != 0)
			goto rescan;

		/*
		 * If the VOP_PUTPAGES() did a truncated write, so
		 * that even the first page of the run is not fully
		 * written, vm_pageout_flush() returns 0 as the run
		 * length.  Since the condition that caused truncated
		 * write may be permanent, e.g. exhausted free space,
		 * accepting n == 0 would cause an infinite loop.
		 *
		 * Forwarding the iterator leaves the unwritten page
		 * behind, but there is not much we can do there if
		 * filesystem refuses to write it.
		 */
		if (n == 0) {
			n = 1;
			allclean = FALSE;
		}
		np = FUNC8(object, pi + n);
	}
#if 0
	VOP_FSYNC(vp, (pagerflags & VM_PAGER_PUT_SYNC) ? MNT_WAIT : 0);
#endif

	if (allclean)
		object->cleangeneration = curgeneration;
	return (res);
}