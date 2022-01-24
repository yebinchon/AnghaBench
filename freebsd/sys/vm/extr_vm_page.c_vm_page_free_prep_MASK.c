#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vm_page_t ;
typedef  int /*<<< orphan*/  uintmax_t ;
typedef  scalar_t__ uint64_t ;
struct TYPE_15__ {int flags; int oflags; int aflags; scalar_t__ queue; scalar_t__ ref_count; scalar_t__ valid; int /*<<< orphan*/ * object; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int PAGE_SIZE ; 
 int PGA_EXECUTABLE ; 
 int PGA_WRITEABLE ; 
 int PG_FICTITIOUS ; 
 int PG_PCPU_CACHE ; 
 int PG_ZERO ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ PMAP_HAS_DMAP ; 
 scalar_t__ PQ_NONE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ VM_MEMATTR_DEFAULT ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int VPO_UNMANAGED ; 
 scalar_t__ VPRC_OBJREF ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,TYPE_1__*) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  v_tfree ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 scalar_t__ FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 scalar_t__ FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 scalar_t__ FUNC15 (TYPE_1__*) ; 

bool
FUNC16(vm_page_t m)
{

	/*
	 * Synchronize with threads that have dropped a reference to this
	 * page.
	 */
	FUNC4();

#if defined(DIAGNOSTIC) && defined(PHYS_TO_DMAP)
	if (PMAP_HAS_DMAP && (m->flags & PG_ZERO) != 0) {
		uint64_t *p;
		int i;
		p = (uint64_t *)PHYS_TO_DMAP(VM_PAGE_TO_PHYS(m));
		for (i = 0; i < PAGE_SIZE / sizeof(uint64_t); i++, p++)
			KASSERT(*p == 0, ("vm_page_free_prep %p PG_ZERO %d %jx",
			    m, i, (uintmax_t)*p));
	}
#endif
	if ((m->oflags & VPO_UNMANAGED) == 0) {
		FUNC0(!FUNC7(m),
		    ("vm_page_free_prep: freeing mapped page %p", m));
		FUNC0((m->aflags & (PGA_EXECUTABLE | PGA_WRITEABLE)) == 0,
		    ("vm_page_free_prep: mapping flags set in page %p", m));
	} else {
		FUNC0(m->queue == PQ_NONE,
		    ("vm_page_free_prep: unmanaged page %p is queued", m));
	}
	FUNC2(v_tfree);

	if (FUNC11(m))
		FUNC5("vm_page_free_prep: freeing shared busy page %p", m);

	if (m->object != NULL) {
		FUNC10(m);

		/*
		 * The object reference can be released without an atomic
		 * operation.
		 */
		FUNC0((m->flags & PG_FICTITIOUS) != 0 ||
		    m->ref_count == VPRC_OBJREF,
		    ("vm_page_free_prep: page %p has unexpected ref_count %u",
		    m, m->ref_count));
		m->object = NULL;
		m->ref_count -= VPRC_OBJREF;
	}

	if (FUNC13(m))
		FUNC14(m);

	/*
	 * If fictitious remove object association and
	 * return.
	 */
	if ((m->flags & PG_FICTITIOUS) != 0) {
		FUNC0(m->ref_count == 1,
		    ("fictitious page %p is referenced", m));
		FUNC0(m->queue == PQ_NONE,
		    ("fictitious page %p is queued", m));
		return (false);
	}

	/*
	 * Pages need not be dequeued before they are returned to the physical
	 * memory allocator, but they must at least be marked for a deferred
	 * dequeue.
	 */
	if ((m->oflags & VPO_UNMANAGED) == 0)
		FUNC9(m);

	m->valid = 0;
	FUNC12(m);

	if (m->ref_count != 0)
		FUNC5("vm_page_free_prep: page %p has references", m);

	/*
	 * Restore the default memory attribute to the page.
	 */
	if (FUNC6(m) != VM_MEMATTR_DEFAULT)
		FUNC8(m, VM_MEMATTR_DEFAULT);

#if VM_NRESERVLEVEL > 0
	/*
	 * Determine whether the page belongs to a reservation.  If the page was
	 * allocated from a per-CPU cache, it cannot belong to a reservation, so
	 * as an optimization, we avoid the check in that case.
	 */
	if ((m->flags & PG_PCPU_CACHE) == 0 && vm_reserv_free_page(m))
		return (false);
#endif

	return (true);
}