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
struct vm_domain {int vmd_interrupt_free_min; int vmd_page_count; int vmd_free_min; int vmd_pageout_free_min; int vmd_free_reserved; int vmd_free_severe; int vmd_free_target; int vmd_inactive_target; int vmd_free_count; int vmd_pageout_wakeup_thresh; int vmd_background_launder_target; int /*<<< orphan*/  vmd_pid; struct sysctl_oid* vmd_oid; } ;
struct sysctl_oid {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTLFLAG_RD ; 
 int MAXBSIZE ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  PIDCTRL_BOUND ; 
 int /*<<< orphan*/  PIDCTRL_KDD ; 
 int /*<<< orphan*/  PIDCTRL_KID ; 
 int /*<<< orphan*/  PIDCTRL_KPD ; 
 struct sysctl_oid* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sysctl_oid*) ; 
 struct vm_domain* FUNC2 (int) ; 
 int VM_INACT_SCAN_RATE ; 
 int hz ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int vm_pageout_page_count ; 

__attribute__((used)) static void
FUNC5(int domain)
{
	struct vm_domain *vmd;
	struct sysctl_oid *oid;

	vmd = FUNC2(domain);
	vmd->vmd_interrupt_free_min = 2;

	/*
	 * v_free_reserved needs to include enough for the largest
	 * swap pager structures plus enough for any pv_entry structs
	 * when paging. 
	 */
	if (vmd->vmd_page_count > 1024)
		vmd->vmd_free_min = 4 + (vmd->vmd_page_count - 1024) / 200;
	else
		vmd->vmd_free_min = 4;
	vmd->vmd_pageout_free_min = 2 * MAXBSIZE / PAGE_SIZE +
	    vmd->vmd_interrupt_free_min;
	vmd->vmd_free_reserved = vm_pageout_page_count +
	    vmd->vmd_pageout_free_min + (vmd->vmd_page_count / 768);
	vmd->vmd_free_severe = vmd->vmd_free_min / 2;
	vmd->vmd_free_target = 4 * vmd->vmd_free_min + vmd->vmd_free_reserved;
	vmd->vmd_free_min += vmd->vmd_free_reserved;
	vmd->vmd_free_severe += vmd->vmd_free_reserved;
	vmd->vmd_inactive_target = (3 * vmd->vmd_free_target) / 2;
	if (vmd->vmd_inactive_target > vmd->vmd_free_count / 3)
		vmd->vmd_inactive_target = vmd->vmd_free_count / 3;

	/*
	 * Set the default wakeup threshold to be 10% below the paging
	 * target.  This keeps the steady state out of shortfall.
	 */
	vmd->vmd_pageout_wakeup_thresh = (vmd->vmd_free_target / 10) * 9;

	/*
	 * Target amount of memory to move out of the laundry queue during a
	 * background laundering.  This is proportional to the amount of system
	 * memory.
	 */
	vmd->vmd_background_launder_target = (vmd->vmd_free_target -
	    vmd->vmd_free_min) / 10;

	/* Initialize the pageout daemon pid controller. */
	FUNC3(&vmd->vmd_pid, hz / VM_INACT_SCAN_RATE,
	    vmd->vmd_free_target, PIDCTRL_BOUND,
	    PIDCTRL_KPD, PIDCTRL_KID, PIDCTRL_KDD);
	oid = FUNC0(NULL, FUNC1(vmd->vmd_oid), OID_AUTO,
	    "pidctrl", CTLFLAG_RD, NULL, "");
	FUNC4(&vmd->vmd_pid, FUNC1(oid));
}