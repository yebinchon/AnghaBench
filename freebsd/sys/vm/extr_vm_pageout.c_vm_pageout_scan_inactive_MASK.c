#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_2__ ;
typedef  struct TYPE_26__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vm_page_t ;
typedef  TYPE_2__* vm_object_t ;
struct vm_pagequeue {scalar_t__ pq_cnt; } ;
struct vm_domain {scalar_t__ vmd_laundry_request; int vmd_clean_pages_freed; struct vm_pagequeue* vmd_pagequeues; TYPE_1__* vmd_markers; int /*<<< orphan*/  vmd_pageout_deficit; } ;
struct vm_batchqueue {int dummy; } ;
struct scan_state {struct vm_batchqueue bq; } ;
struct mtx {int dummy; } ;
struct TYPE_27__ {scalar_t__ ref_count; int flags; } ;
struct TYPE_26__ {int flags; int aflags; scalar_t__ dirty; int /*<<< orphan*/  queue; int /*<<< orphan*/  act_count; TYPE_2__* object; } ;

/* Variables and functions */
 scalar_t__ ACT_ADVANCE ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int OBJ_DEAD ; 
 int PGA_ENQUEUED ; 
 int PGA_QUEUE_STATE_MASK ; 
 int PGA_REFERENCED ; 
 int PGA_REQUEUE ; 
 int PGA_REQUEUE_HEAD ; 
 int PG_MARKER ; 
 size_t PQ_INACTIVE ; 
 size_t PQ_LAUNDRY ; 
 int /*<<< orphan*/  PQ_NONE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ VM_LAUNDRY_BACKGROUND ; 
 scalar_t__ VM_LAUNDRY_IDLE ; 
 scalar_t__ VM_LAUNDRY_SHORTFALL ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (TYPE_2__**) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct mtx*) ; 
 int /*<<< orphan*/  FUNC11 (struct mtx*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  swapdev_enabled ; 
 int /*<<< orphan*/  v_dfree ; 
 int /*<<< orphan*/  v_pdshortfalls ; 
 int /*<<< orphan*/  v_reactivated ; 
 int /*<<< orphan*/  FUNC14 (struct vm_batchqueue*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*,struct mtx**) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_1__*) ; 
 scalar_t__ FUNC22 (TYPE_1__*) ; 
 size_t FUNC23 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_1__*) ; 
 scalar_t__ FUNC26 (TYPE_1__*) ; 
 int FUNC27 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC28 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC29 (struct scan_state*) ; 
 int /*<<< orphan*/  FUNC30 (struct scan_state*,struct vm_pagequeue*,TYPE_1__*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC31 (struct vm_domain*,int,int) ; 
 TYPE_1__* FUNC32 (struct scan_state*,int) ; 
 int /*<<< orphan*/  FUNC33 (struct scan_state*,struct vm_batchqueue*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC34 (struct vm_pagequeue*) ; 
 int /*<<< orphan*/  FUNC35 (struct vm_pagequeue*) ; 
 int /*<<< orphan*/  FUNC36 () ; 
 int /*<<< orphan*/  FUNC37 () ; 
 int /*<<< orphan*/  FUNC38 (scalar_t__*) ; 

__attribute__((used)) static int
FUNC39(struct vm_domain *vmd, int shortage,
    int *addl_shortage)
{
	struct scan_state ss;
	struct vm_batchqueue rq;
	struct mtx *mtx;
	vm_page_t m, marker;
	struct vm_pagequeue *pq;
	vm_object_t object;
	int act_delta, addl_page_shortage, deficit, page_shortage;
	int starting_page_shortage;

	/*
	 * The addl_page_shortage is an estimate of the number of temporarily
	 * stuck pages in the inactive queue.  In other words, the
	 * number of pages from the inactive count that should be
	 * discounted in setting the target for the active queue scan.
	 */
	addl_page_shortage = 0;

	/*
	 * vmd_pageout_deficit counts the number of pages requested in
	 * allocations that failed because of a free page shortage.  We assume
	 * that the allocations will be reattempted and thus include the deficit
	 * in our scan target.
	 */
	deficit = FUNC9(&vmd->vmd_pageout_deficit);
	starting_page_shortage = page_shortage = shortage + deficit;

	mtx = NULL;
	object = NULL;
	FUNC14(&rq);

	/*
	 * Start scanning the inactive queue for pages that we can free.  The
	 * scan will stop when we reach the target or we have scanned the
	 * entire queue.  (Note that m->act_count is not used to make
	 * decisions for the inactive queue, only for the active queue.)
	 */
	marker = &vmd->vmd_markers[PQ_INACTIVE];
	pq = &vmd->vmd_pagequeues[PQ_INACTIVE];
	FUNC34(pq);
	FUNC30(&ss, pq, marker, NULL, pq->pq_cnt);
	while (page_shortage > 0 && (m = FUNC32(&ss, true)) != NULL) {
		FUNC0((m->flags & PG_MARKER) == 0,
		    ("marker page %p was dequeued", m));

		FUNC18(m, &mtx);

recheck:
		/*
		 * The page may have been disassociated from the queue
		 * or even freed while locks were dropped.  We thus must be
		 * careful whenever modifying page state.  Once the object lock
		 * has been acquired, we have a stable reference to the page.
		 */
		if (FUNC23(m) != PQ_INACTIVE) {
			addl_page_shortage++;
			continue;
		}

		/*
		 * The page was re-enqueued after the page queue lock was
		 * dropped, or a requeue was requested.  This page gets a second
		 * chance.
		 */
		if ((m->aflags & (PGA_ENQUEUED | PGA_REQUEUE |
		    PGA_REQUEUE_HEAD)) != 0)
			goto reinsert;

		/*
		 * Wired pages may not be freed.  Complete their removal
		 * from the queue now to avoid needless revisits during
		 * future scans.  This check is racy and must be reverified once
		 * we hold the object lock and have verified that the page
		 * is not busy.
		 */
		if (FUNC27(m)) {
			FUNC19(m);
			continue;
		}

		if (object != m->object) {
			if (object != NULL)
				FUNC5(object);

			/*
			 * A page's object pointer may be set to NULL before
			 * the object lock is acquired.
			 */
			object = (vm_object_t)FUNC8(&m->object);
			if (object != NULL && !FUNC3(object)) {
				FUNC11(mtx);
				/* Depends on type-stability. */
				FUNC4(object);
				FUNC10(mtx);
				goto recheck;
			}
		}
		if (FUNC6(m->object == NULL))
			/*
			 * The page has been removed from its object.
			 */
			continue;
		FUNC0(m->object == object, ("page %p does not belong to %p",
		    m, object));

		if (FUNC26(m) == 0) {
			/*
			 * Don't mess with busy pages.  Leave them at
			 * the front of the queue.  Most likely, they
			 * are being paged out and will leave the
			 * queue shortly after the scan finishes.  So,
			 * they ought to be discounted from the
			 * inactive count.
			 */
			addl_page_shortage++;
			goto reinsert;
		}

		/*
		 * Re-check for wirings now that we hold the object lock and
		 * have verified that the page is unbusied.  If the page is
		 * mapped, it may still be wired by pmap lookups.  The call to
		 * vm_page_try_remove_all() below atomically checks for such
		 * wirings and removes mappings.  If the page is unmapped, the
		 * wire count is guaranteed not to increase.
		 */
		if (FUNC6(FUNC27(m))) {
			FUNC28(m);
			FUNC19(m);
			continue;
		}

		/*
		 * Invalid pages can be easily freed. They cannot be
		 * mapped, vm_page_free() asserts this.
		 */
		if (FUNC22(m))
			goto free_page;

		/*
		 * If the page has been referenced and the object is not dead,
		 * reactivate or requeue the page depending on whether the
		 * object is mapped.
		 *
		 * Test PGA_REFERENCED after calling pmap_ts_referenced() so
		 * that a reference from a concurrently destroyed mapping is
		 * observed here and now.
		 */
		if (object->ref_count != 0)
			act_delta = FUNC13(m);
		else {
			FUNC0(!FUNC12(m),
			    ("page %p is mapped", m));
			act_delta = 0;
		}
		if ((m->aflags & PGA_REFERENCED) != 0) {
			FUNC16(m, PGA_REFERENCED);
			act_delta++;
		}
		if (act_delta != 0) {
			if (object->ref_count != 0) {
				FUNC28(m);
				FUNC2(v_reactivated);
				FUNC15(m);

				/*
				 * Increase the activation count if the page
				 * was referenced while in the inactive queue.
				 * This makes it less likely that the page will
				 * be returned prematurely to the inactive
				 * queue.
 				 */
				m->act_count += act_delta + ACT_ADVANCE;
				continue;
			} else if ((object->flags & OBJ_DEAD) == 0) {
				FUNC28(m);
				FUNC17(m, PGA_REQUEUE);
				goto reinsert;
			}
		}

		/*
		 * If the page appears to be clean at the machine-independent
		 * layer, then remove all of its mappings from the pmap in
		 * anticipation of freeing it.  If, however, any of the page's
		 * mappings allow write access, then the page may still be
		 * modified until the last of those mappings are removed.
		 */
		if (object->ref_count != 0) {
			FUNC24(m);
			if (m->dirty == 0 && !FUNC25(m)) {
				FUNC28(m);
				FUNC19(m);
				continue;
			}
		}

		/*
		 * Clean pages can be freed, but dirty pages must be sent back
		 * to the laundry, unless they belong to a dead object.
		 * Requeueing dirty pages from dead objects is pointless, as
		 * they are being paged out and freed by the thread that
		 * destroyed the object.
		 */
		if (m->dirty == 0) {
free_page:
			/*
			 * Because we dequeued the page and have already
			 * checked for concurrent dequeue and enqueue
			 * requests, we can safely disassociate the page
			 * from the inactive queue.
			 */
			FUNC0((m->aflags & PGA_QUEUE_STATE_MASK) == 0,
			    ("page %p has queue state", m));
			m->queue = PQ_NONE;
			FUNC20(m);
			page_shortage--;
			continue;
		}
		FUNC28(m);
		if ((object->flags & OBJ_DEAD) == 0)
			FUNC21(m);
		continue;
reinsert:
		FUNC33(&ss, &rq, m);
	}
	if (mtx != NULL)
		FUNC11(mtx);
	if (object != NULL)
		FUNC5(object);
	FUNC33(&ss, &rq, NULL);
	FUNC33(&ss, &ss.bq, NULL);
	FUNC34(pq);
	FUNC29(&ss);
	FUNC35(pq);

	FUNC1(v_dfree, starting_page_shortage - page_shortage);

	/*
	 * Wake up the laundry thread so that it can perform any needed
	 * laundering.  If we didn't meet our target, we're in shortfall and
	 * need to launder more aggressively.  If PQ_LAUNDRY is empty and no
	 * swap devices are configured, the laundry thread has no work to do, so
	 * don't bother waking it up.
	 *
	 * The laundry thread uses the number of inactive queue scans elapsed
	 * since the last laundering to determine whether to launder again, so
	 * keep count.
	 */
	if (starting_page_shortage > 0) {
		pq = &vmd->vmd_pagequeues[PQ_LAUNDRY];
		FUNC34(pq);
		if (vmd->vmd_laundry_request == VM_LAUNDRY_IDLE &&
		    (pq->pq_cnt > 0 || FUNC7(&swapdev_enabled))) {
			if (page_shortage > 0) {
				vmd->vmd_laundry_request = VM_LAUNDRY_SHORTFALL;
				FUNC2(v_pdshortfalls);
			} else if (vmd->vmd_laundry_request !=
			    VM_LAUNDRY_SHORTFALL)
				vmd->vmd_laundry_request =
				    VM_LAUNDRY_BACKGROUND;
			FUNC38(&vmd->vmd_laundry_request);
		}
		vmd->vmd_clean_pages_freed +=
		    starting_page_shortage - page_shortage;
		FUNC35(pq);
	}

	/*
	 * Wakeup the swapout daemon if we didn't free the targeted number of
	 * pages.
	 */
	if (page_shortage > 0)
		FUNC36();

	/*
	 * If the inactive queue scan fails repeatedly to meet its
	 * target, kill the largest process.
	 */
	FUNC31(vmd, page_shortage, starting_page_shortage);

	/*
	 * Reclaim pages by swapping out idle processes, if configured to do so.
	 */
	FUNC37();

	/*
	 * See the description of addl_page_shortage above.
	 */
	*addl_shortage = addl_page_shortage + deficit;

	return (page_shortage <= 0);
}