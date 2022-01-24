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
struct vm_pagequeue {int /*<<< orphan*/  pq_cnt; } ;
struct vm_domain {struct vm_pagequeue* vmd_pagequeues; TYPE_1__* vmd_markers; } ;
struct scan_state {int scanned; } ;
struct mtx {int dummy; } ;
struct TYPE_27__ {scalar_t__ ref_count; int flags; scalar_t__ type; } ;
struct TYPE_26__ {int flags; int aflags; scalar_t__ dirty; int /*<<< orphan*/  act_count; TYPE_2__* object; } ;

/* Variables and functions */
 scalar_t__ ACT_ADVANCE ; 
 int EDEADLK ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ OBJT_DEFAULT ; 
 scalar_t__ OBJT_SWAP ; 
 int OBJ_DEAD ; 
 int PGA_REFERENCED ; 
 int PGA_REQUEUE ; 
 int PG_MARKER ; 
 int PQ_LAUNDRY ; 
 int PQ_UNSWAPPABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (TYPE_2__**) ; 
 scalar_t__ disable_swap_pageouts ; 
 int /*<<< orphan*/  FUNC8 (struct mtx*) ; 
 int /*<<< orphan*/  FUNC9 (struct mtx*) ; 
 int /*<<< orphan*/  pageout_lock_miss ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  swapdev_enabled ; 
 int /*<<< orphan*/  v_dfree ; 
 int /*<<< orphan*/  v_reactivated ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,struct mtx**) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*) ; 
 scalar_t__ FUNC18 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*,int) ; 
 int FUNC20 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_1__*) ; 
 scalar_t__ FUNC24 (TYPE_1__*) ; 
 int FUNC25 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_1__*) ; 
 int FUNC27 (TYPE_1__*,int*) ; 
 int /*<<< orphan*/  FUNC28 (struct scan_state*) ; 
 int /*<<< orphan*/  FUNC29 (struct scan_state*,struct vm_pagequeue*,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC30 (struct scan_state*,int) ; 
 int /*<<< orphan*/  FUNC31 (struct vm_pagequeue*) ; 
 int /*<<< orphan*/  FUNC32 (struct vm_pagequeue*) ; 

__attribute__((used)) static int
FUNC33(struct vm_domain *vmd, int launder, bool in_shortfall)
{
	struct scan_state ss;
	struct vm_pagequeue *pq;
	struct mtx *mtx;
	vm_object_t object;
	vm_page_t m, marker;
	int act_delta, error, numpagedout, queue, starting_target;
	int vnodes_skipped;
	bool pageout_ok;

	mtx = NULL;
	object = NULL;
	starting_target = launder;
	vnodes_skipped = 0;

	/*
	 * Scan the laundry queues for pages eligible to be laundered.  We stop
	 * once the target number of dirty pages have been laundered, or once
	 * we've reached the end of the queue.  A single iteration of this loop
	 * may cause more than one page to be laundered because of clustering.
	 *
	 * As an optimization, we avoid laundering from PQ_UNSWAPPABLE when no
	 * swap devices are configured.
	 */
	if (FUNC6(&swapdev_enabled))
		queue = PQ_UNSWAPPABLE;
	else
		queue = PQ_LAUNDRY;

scan:
	marker = &vmd->vmd_markers[queue];
	pq = &vmd->vmd_pagequeues[queue];
	FUNC31(pq);
	FUNC29(&ss, pq, marker, NULL, pq->pq_cnt);
	while (launder > 0 && (m = FUNC30(&ss, false)) != NULL) {
		if (FUNC5((m->flags & PG_MARKER) != 0))
			continue;

		FUNC15(m, &mtx);

recheck:
		/*
		 * The page may have been disassociated from the queue
		 * or even freed while locks were dropped.  We thus must be
		 * careful whenever modifying page state.  Once the object lock
		 * has been acquired, we have a stable reference to the page.
		 */
		if (FUNC20(m) != queue)
			continue;

		/*
		 * A requeue was requested, so this page gets a second
		 * chance.
		 */
		if ((m->aflags & PGA_REQUEUE) != 0) {
			FUNC19(m, queue);
			continue;
		}

		/*
		 * Wired pages may not be freed.  Complete their removal
		 * from the queue now to avoid needless revisits during
		 * future scans.  This check is racy and must be reverified once
		 * we hold the object lock and have verified that the page
		 * is not busy.
		 */
		if (FUNC25(m)) {
			FUNC16(m);
			continue;
		}

		if (object != m->object) {
			if (object != NULL)
				FUNC4(object);

			/*
			 * A page's object pointer may be set to NULL before
			 * the object lock is acquired.
			 */
			object = (vm_object_t)FUNC7(&m->object);
			if (object != NULL && !FUNC2(object)) {
				FUNC9(mtx);
				/* Depends on type-stability. */
				FUNC3(object);
				FUNC8(mtx);
				goto recheck;
			}
		}
		if (FUNC5(m->object == NULL))
			/*
			 * The page has been removed from its object.
			 */
			continue;
		FUNC0(m->object == object, ("page %p does not belong to %p",
		    m, object));

		if (FUNC24(m) == 0)
			continue;

		/*
		 * Re-check for wirings now that we hold the object lock and
		 * have verified that the page is unbusied.  If the page is
		 * mapped, it may still be wired by pmap lookups.  The call to
		 * vm_page_try_remove_all() below atomically checks for such
		 * wirings and removes mappings.  If the page is unmapped, the
		 * wire count is guaranteed not to increase.
		 */
		if (FUNC5(FUNC25(m))) {
			FUNC26(m);
			FUNC16(m);
			continue;
		}

		/*
		 * Invalid pages can be easily freed.  They cannot be
		 * mapped; vm_page_free() asserts this.
		 */
		if (FUNC18(m))
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
			act_delta = FUNC11(m);
		else {
			FUNC0(!FUNC10(m),
			    ("page %p is mapped", m));
			act_delta = 0;
		}
		if ((m->aflags & PGA_REFERENCED) != 0) {
			FUNC14(m, PGA_REFERENCED);
			act_delta++;
		}
		if (act_delta != 0) {
			if (object->ref_count != 0) {
				FUNC26(m);
				FUNC1(v_reactivated);
				FUNC13(m);

				/*
				 * Increase the activation count if the page
				 * was referenced while in the laundry queue.
				 * This makes it less likely that the page will
				 * be returned prematurely to the inactive
				 * queue.
 				 */
				m->act_count += act_delta + ACT_ADVANCE;

				/*
				 * If this was a background laundering, count
				 * activated pages towards our target.  The
				 * purpose of background laundering is to ensure
				 * that pages are eventually cycled through the
				 * laundry queue, and an activation is a valid
				 * way out.
				 */
				if (!in_shortfall)
					launder--;
				continue;
			} else if ((object->flags & OBJ_DEAD) == 0) {
				FUNC26(m);
				FUNC21(m);
				continue;
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
			FUNC22(m);
			if (m->dirty == 0 && !FUNC23(m)) {
				FUNC26(m);
				FUNC16(m);
				continue;
			}
		}

		/*
		 * Clean pages are freed, and dirty pages are paged out unless
		 * they belong to a dead object.  Requeueing dirty pages from
		 * dead objects is pointless, as they are being paged out and
		 * freed by the thread that destroyed the object.
		 */
		if (m->dirty == 0) {
free_page:
			FUNC17(m);
			FUNC1(v_dfree);
		} else if ((object->flags & OBJ_DEAD) == 0) {
			if (object->type != OBJT_SWAP &&
			    object->type != OBJT_DEFAULT)
				pageout_ok = true;
			else if (disable_swap_pageouts)
				pageout_ok = false;
			else
				pageout_ok = true;
			if (!pageout_ok) {
				FUNC26(m);
				FUNC21(m);
				continue;
			}

			/*
			 * Form a cluster with adjacent, dirty pages from the
			 * same object, and page out that entire cluster.
			 *
			 * The adjacent, dirty pages must also be in the
			 * laundry.  However, their mappings are not checked
			 * for new references.  Consequently, a recently
			 * referenced page may be paged out.  However, that
			 * page will not be prematurely reclaimed.  After page
			 * out, the page will be placed in the inactive queue,
			 * where any new references will be detected and the
			 * page reactivated.
			 */
			error = FUNC27(m, &numpagedout);
			if (error == 0) {
				launder -= numpagedout;
				ss.scanned += numpagedout;
			} else if (error == EDEADLK) {
				pageout_lock_miss++;
				vnodes_skipped++;
			}
			mtx = NULL;
			object = NULL;
		} else
			FUNC26(m);
	}
	if (mtx != NULL) {
		FUNC9(mtx);
		mtx = NULL;
	}
	if (object != NULL) {
		FUNC4(object);
		object = NULL;
	}
	FUNC31(pq);
	FUNC28(&ss);
	FUNC32(pq);

	if (launder > 0 && queue == PQ_UNSWAPPABLE) {
		queue = PQ_LAUNDRY;
		goto scan;
	}

	/*
	 * Wakeup the sync daemon if we skipped a vnode in a writeable object
	 * and we didn't launder enough pages.
	 */
	if (vnodes_skipped > 0 && launder > 0)
		(void)FUNC12();

	return (starting_target - launder);
}