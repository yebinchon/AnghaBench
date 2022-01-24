#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct vm_pagequeue {scalar_t__ pq_cnt; } ;
struct vm_domain {scalar_t__ vmd_segs; scalar_t__ vmd_free_count; int vmd_background_launder_target; scalar_t__ vmd_laundry_request; int vmd_pageout_deficit; scalar_t__ vmd_clean_pages_freed; scalar_t__ vmd_free_min; scalar_t__ vmd_free_target; struct vm_pagequeue* vmd_pagequeues; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVENTHANDLER_PRI_ANY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vm_domain*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int PAGE_SIZE ; 
 size_t PQ_INACTIVE ; 
 size_t PQ_LAUNDRY ; 
 int /*<<< orphan*/  PVM ; 
 struct vm_domain* FUNC2 (int) ; 
 int VM_INACT_SCAN_RATE ; 
 int VM_LAUNDER_RATE ; 
 scalar_t__ VM_LAUNDRY_IDLE ; 
 scalar_t__ VM_LAUNDRY_SHORTFALL ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__) ; 
 int hz ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 int /*<<< orphan*/  swapoff ; 
 int /*<<< orphan*/  swapon ; 
 int vm_background_launder_max ; 
 int vm_background_launder_rate ; 
 int FUNC8 (struct vm_domain*) ; 
 int /*<<< orphan*/  FUNC9 (struct vm_domain*,int,int) ; 
 int /*<<< orphan*/  vm_pageout_swapoff ; 
 int /*<<< orphan*/  vm_pageout_swapon ; 
 int /*<<< orphan*/  FUNC10 (struct vm_pagequeue*) ; 
 int /*<<< orphan*/  FUNC11 (struct vm_pagequeue*) ; 
 int /*<<< orphan*/  FUNC12 (struct vm_pagequeue*) ; 

__attribute__((used)) static void
FUNC13(void *arg)
{
	struct vm_domain *vmd;
	struct vm_pagequeue *pq;
	uint64_t nclean, ndirty, nfreed;
	int domain, last_target, launder, shortfall, shortfall_cycle, target;
	bool in_shortfall;

	domain = (uintptr_t)arg;
	vmd = FUNC2(domain);
	pq = &vmd->vmd_pagequeues[PQ_LAUNDRY];
	FUNC1(vmd->vmd_segs != 0, ("domain without segments"));

	shortfall = 0;
	in_shortfall = false;
	shortfall_cycle = 0;
	last_target = target = 0;
	nfreed = 0;

	/*
	 * Calls to these handlers are serialized by the swap syscall lock.
	 */
	(void)FUNC0(swapon, vm_pageout_swapon, vmd,
	    EVENTHANDLER_PRI_ANY);
	(void)FUNC0(swapoff, vm_pageout_swapoff, vmd,
	    EVENTHANDLER_PRI_ANY);

	/*
	 * The pageout laundry worker is never done, so loop forever.
	 */
	for (;;) {
		FUNC1(target >= 0, ("negative target %d", target));
		FUNC1(shortfall_cycle >= 0,
		    ("negative cycle %d", shortfall_cycle));
		launder = 0;

		/*
		 * First determine whether we need to launder pages to meet a
		 * shortage of free pages.
		 */
		if (shortfall > 0) {
			in_shortfall = true;
			shortfall_cycle = VM_LAUNDER_RATE / VM_INACT_SCAN_RATE;
			target = shortfall;
		} else if (!in_shortfall)
			goto trybackground;
		else if (shortfall_cycle == 0 || FUNC8(vmd) <= 0) {
			/*
			 * We recently entered shortfall and began laundering
			 * pages.  If we have completed that laundering run
			 * (and we are no longer in shortfall) or we have met
			 * our laundry target through other activity, then we
			 * can stop laundering pages.
			 */
			in_shortfall = false;
			target = 0;
			goto trybackground;
		}
		launder = target / shortfall_cycle--;
		goto dolaundry;

		/*
		 * There's no immediate need to launder any pages; see if we
		 * meet the conditions to perform background laundering:
		 *
		 * 1. The ratio of dirty to clean inactive pages exceeds the
		 *    background laundering threshold, or
		 * 2. we haven't yet reached the target of the current
		 *    background laundering run.
		 *
		 * The background laundering threshold is not a constant.
		 * Instead, it is a slowly growing function of the number of
		 * clean pages freed by the page daemon since the last
		 * background laundering.  Thus, as the ratio of dirty to
		 * clean inactive pages grows, the amount of memory pressure
		 * required to trigger laundering decreases.  We ensure
		 * that the threshold is non-zero after an inactive queue
		 * scan, even if that scan failed to free a single clean page.
		 */
trybackground:
		nclean = vmd->vmd_free_count +
		    vmd->vmd_pagequeues[PQ_INACTIVE].pq_cnt;
		ndirty = vmd->vmd_pagequeues[PQ_LAUNDRY].pq_cnt;
		if (target == 0 && ndirty * FUNC4(FUNC3(nfreed + 1,
		    vmd->vmd_free_target - vmd->vmd_free_min)) >= nclean) {
			target = vmd->vmd_background_launder_target;
		}

		/*
		 * We have a non-zero background laundering target.  If we've
		 * laundered up to our maximum without observing a page daemon
		 * request, just stop.  This is a safety belt that ensures we
		 * don't launder an excessive amount if memory pressure is low
		 * and the ratio of dirty to clean pages is large.  Otherwise,
		 * proceed at the background laundering rate.
		 */
		if (target > 0) {
			if (nfreed > 0) {
				nfreed = 0;
				last_target = target;
			} else if (last_target - target >=
			    vm_background_launder_max * PAGE_SIZE / 1024) {
				target = 0;
			}
			launder = vm_background_launder_rate * PAGE_SIZE / 1024;
			launder /= VM_LAUNDER_RATE;
			if (launder > target)
				launder = target;
		}

dolaundry:
		if (launder > 0) {
			/*
			 * Because of I/O clustering, the number of laundered
			 * pages could exceed "target" by the maximum size of
			 * a cluster minus one. 
			 */
			target -= FUNC5(FUNC9(vmd, launder,
			    in_shortfall), target);
			FUNC7("laundp", hz / VM_LAUNDER_RATE);
		}

		/*
		 * If we're not currently laundering pages and the page daemon
		 * hasn't posted a new request, sleep until the page daemon
		 * kicks us.
		 */
		FUNC10(pq);
		if (target == 0 && vmd->vmd_laundry_request == VM_LAUNDRY_IDLE)
			(void)FUNC6(&vmd->vmd_laundry_request,
			    FUNC11(pq), PVM, "launds", 0);

		/*
		 * If the pagedaemon has indicated that it's in shortfall, start
		 * a shortfall laundering unless we're already in the middle of
		 * one.  This may preempt a background laundering.
		 */
		if (vmd->vmd_laundry_request == VM_LAUNDRY_SHORTFALL &&
		    (!in_shortfall || shortfall_cycle == 0)) {
			shortfall = FUNC8(vmd) +
			    vmd->vmd_pageout_deficit;
			target = 0;
		} else
			shortfall = 0;

		if (target == 0)
			vmd->vmd_laundry_request = VM_LAUNDRY_IDLE;
		nfreed += vmd->vmd_clean_pages_freed;
		vmd->vmd_clean_pages_freed = 0;
		FUNC12(pq);
	}
}