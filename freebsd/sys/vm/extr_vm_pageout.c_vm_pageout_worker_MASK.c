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
typedef  scalar_t__ u_int ;
struct vm_domain {scalar_t__ vmd_segs; scalar_t__ vmd_free_count; int /*<<< orphan*/  vmd_pid; int /*<<< orphan*/  vmd_pageout_wanted; int /*<<< orphan*/  vmd_last_active_scan; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int PDROP ; 
 int PVM ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct vm_domain* FUNC2 (int) ; 
 int VM_INACT_SCAN_RATE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int hz ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int FUNC7 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  ticks ; 
 int /*<<< orphan*/  v_pdwakeups ; 
 int /*<<< orphan*/  FUNC8 (struct vm_domain*) ; 
 int /*<<< orphan*/  FUNC9 (struct vm_domain*) ; 
 int /*<<< orphan*/  FUNC10 (struct vm_domain*) ; 
 int FUNC11 (struct vm_domain*) ; 
 scalar_t__ FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (struct vm_domain*,int) ; 
 int FUNC14 (struct vm_domain*,int,int*) ; 
 scalar_t__ FUNC15 (struct vm_domain*,scalar_t__) ; 

__attribute__((used)) static void
FUNC16(void *arg)
{
	struct vm_domain *vmd;
	u_int ofree;
	int addl_shortage, domain, shortage;
	bool target_met;

	domain = (uintptr_t)arg;
	vmd = FUNC2(domain);
	shortage = 0;
	target_met = true;

	/*
	 * XXXKIB It could be useful to bind pageout daemon threads to
	 * the cores belonging to the domain, from which vm_page_array
	 * is allocated.
	 */

	FUNC0(vmd->vmd_segs != 0, ("domain without segments"));
	vmd->vmd_last_active_scan = ticks;

	/*
	 * The pageout daemon worker is never done, so loop forever.
	 */
	while (TRUE) {
		FUNC8(vmd);

		/*
		 * We need to clear wanted before we check the limits.  This
		 * prevents races with wakers who will check wanted after they
		 * reach the limit.
		 */
		FUNC3(&vmd->vmd_pageout_wanted, 0);

		/*
		 * Might the page daemon need to run again?
		 */
		if (FUNC15(vmd, vmd->vmd_free_count)) {
			/*
			 * Yes.  If the scan failed to produce enough free
			 * pages, sleep uninterruptibly for some time in the
			 * hope that the laundry thread will clean some pages.
			 */
			FUNC10(vmd);
			if (!target_met)
				FUNC6("pwait", hz / VM_INACT_SCAN_RATE);
		} else {
			/*
			 * No, sleep until the next wakeup or until pages
			 * need to have their reference stats updated.
			 */
			if (FUNC5(&vmd->vmd_pageout_wanted,
			    FUNC9(vmd), PDROP | PVM,
			    "psleep", hz / VM_INACT_SCAN_RATE) == 0)
				FUNC1(v_pdwakeups);
		}

		/* Prevent spurious wakeups by ensuring that wanted is set. */
		FUNC3(&vmd->vmd_pageout_wanted, 1);

		/*
		 * Use the controller to calculate how many pages to free in
		 * this interval, and scan the inactive queue.  If the lowmem
		 * handlers appear to have freed up some pages, subtract the
		 * difference from the inactive queue scan target.
		 */
		shortage = FUNC7(&vmd->vmd_pid, vmd->vmd_free_count);
		if (shortage > 0) {
			ofree = vmd->vmd_free_count;
			if (FUNC12() && vmd->vmd_free_count > ofree)
				shortage -= FUNC4(vmd->vmd_free_count - ofree,
				    (u_int)shortage);
			target_met = FUNC14(vmd, shortage,
			    &addl_shortage);
		} else
			addl_shortage = 0;

		/*
		 * Scan the active queue.  A positive value for shortage
		 * indicates that we must aggressively deactivate pages to avoid
		 * a shortfall.
		 */
		shortage = FUNC11(vmd) + addl_shortage;
		FUNC13(vmd, shortage);
	}
}