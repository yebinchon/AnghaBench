#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct nchstats {long ncs_goodhits; long ncs_neghits; long ncs_badhits; long ncs_falsehits; long ncs_miss; long ncs_long; long ncs_pass2; } ;
typedef  int /*<<< orphan*/  lnchstats ;
struct TYPE_3__ {int /*<<< orphan*/  v_page_size; int /*<<< orphan*/  v_free_count; int /*<<< orphan*/  v_user_wire_count; int /*<<< orphan*/  v_wire_count; int /*<<< orphan*/  v_laundry_count; int /*<<< orphan*/  v_inactive_count; int /*<<< orphan*/  v_active_count; int /*<<< orphan*/  v_pfree; int /*<<< orphan*/  v_dfree; int /*<<< orphan*/  v_tfree; int /*<<< orphan*/  v_rforkpages; int /*<<< orphan*/  v_vforkpages; int /*<<< orphan*/  v_forkpages; int /*<<< orphan*/  v_kthreadpages; int /*<<< orphan*/  v_io_faults; int /*<<< orphan*/  v_vm_faults; int /*<<< orphan*/  v_intrans; int /*<<< orphan*/  v_ozfod; int /*<<< orphan*/  v_zfod; int /*<<< orphan*/  v_cow_optim; int /*<<< orphan*/  v_cow_faults; int /*<<< orphan*/  v_reactivated; int /*<<< orphan*/  v_pdshortfalls; int /*<<< orphan*/  v_pdpages; int /*<<< orphan*/  v_pdwakeups; int /*<<< orphan*/  v_vnodepgsout; int /*<<< orphan*/  v_vnodeout; int /*<<< orphan*/  v_vnodepgsin; int /*<<< orphan*/  v_vnodein; int /*<<< orphan*/  v_swappgsout; int /*<<< orphan*/  v_swapout; int /*<<< orphan*/  v_swappgsin; int /*<<< orphan*/  v_swapin; int /*<<< orphan*/  v_rforks; int /*<<< orphan*/  v_vforks; int /*<<< orphan*/  v_forks; int /*<<< orphan*/  v_kthreads; int /*<<< orphan*/  v_syscall; int /*<<< orphan*/  v_trap; int /*<<< orphan*/  v_soft; int /*<<< orphan*/  v_intr; int /*<<< orphan*/  v_swtch; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (long,long) ; 
 int /*<<< orphan*/  X_NCHSTATS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/ * kd ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct nchstats*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct nchstats*,size_t*) ; 
 TYPE_1__ sum ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static void
FUNC8(void)
{
	struct nchstats lnchstats;
	size_t size;
	long nchtotal;

	FUNC1(&sum);
	FUNC7("summary-statistics");
	FUNC5("{:context-switches/%9u} {N:cpu context switches}\n",
	    sum.v_swtch);
	FUNC5("{:interrupts/%9u} {N:device interrupts}\n",
	    sum.v_intr);
	FUNC5("{:software-interrupts/%9u} {N:software interrupts}\n",
	    sum.v_soft);
	FUNC5("{:traps/%9u} {N:traps}\n", sum.v_trap);
	FUNC5("{:system-calls/%9u} {N:system calls}\n",
	    sum.v_syscall);
	FUNC5("{:kernel-threads/%9u} {N:kernel threads created}\n",
	    sum.v_kthreads);
	FUNC5("{:forks/%9u} {N: fork() calls}\n", sum.v_forks);
	FUNC5("{:vforks/%9u} {N:vfork() calls}\n",
	    sum.v_vforks);
	FUNC5("{:rforks/%9u} {N:rfork() calls}\n",
	    sum.v_rforks);
	FUNC5("{:swap-ins/%9u} {N:swap pager pageins}\n",
	    sum.v_swapin);
	FUNC5("{:swap-in-pages/%9u} {N:swap pager pages paged in}\n",
	    sum.v_swappgsin);
	FUNC5("{:swap-outs/%9u} {N:swap pager pageouts}\n",
	    sum.v_swapout);
	FUNC5("{:swap-out-pages/%9u} {N:swap pager pages paged out}\n",
	    sum.v_swappgsout);
	FUNC5("{:vnode-page-ins/%9u} {N:vnode pager pageins}\n",
	    sum.v_vnodein);
	FUNC5("{:vnode-page-in-pages/%9u} {N:vnode pager pages paged in}\n",
	    sum.v_vnodepgsin);
	FUNC5("{:vnode-page-outs/%9u} {N:vnode pager pageouts}\n",
	    sum.v_vnodeout);
	FUNC5("{:vnode-page-out-pages/%9u} {N:vnode pager pages paged out}\n",
	    sum.v_vnodepgsout);
	FUNC5("{:page-daemon-wakeups/%9u} {N:page daemon wakeups}\n",
	    sum.v_pdwakeups);
	FUNC5("{:page-daemon-pages/%9u} {N:pages examined by the page "
	    "daemon}\n", sum.v_pdpages);
	FUNC5("{:page-reclamation-shortfalls/%9u} {N:clean page reclamation "
	    "shortfalls}\n", sum.v_pdshortfalls);
	FUNC5("{:reactivated/%9u} {N:pages reactivated by the page daemon}\n",
	    sum.v_reactivated);
	FUNC5("{:copy-on-write-faults/%9u} {N:copy-on-write faults}\n",
	    sum.v_cow_faults);
	FUNC5("{:copy-on-write-optimized-faults/%9u} {N:copy-on-write "
	    "optimized faults}\n", sum.v_cow_optim);
	FUNC5("{:zero-fill-pages/%9u} {N:zero fill pages zeroed}\n",
	    sum.v_zfod);
	FUNC5("{:zero-fill-prezeroed/%9u} {N:zero fill pages prezeroed}\n",
	    sum.v_ozfod);
	FUNC5("{:intransit-blocking/%9u} {N:intransit blocking page faults}\n",
	    sum.v_intrans);
	FUNC5("{:total-faults/%9u} {N:total VM faults taken}\n",
	    sum.v_vm_faults);
	FUNC5("{:faults-requiring-io/%9u} {N:page faults requiring I\\/O}\n",
	    sum.v_io_faults);
	FUNC5("{:faults-from-thread-creation/%9u} {N:pages affected by "
	    "kernel thread creation}\n", sum.v_kthreadpages);
	FUNC5("{:faults-from-fork/%9u} {N:pages affected by  fork}()\n",
	    sum.v_forkpages);
	FUNC5("{:faults-from-vfork/%9u} {N:pages affected by vfork}()\n",
	    sum.v_vforkpages);
	FUNC5("{:pages-rfork/%9u} {N:pages affected by rfork}()\n",
	    sum.v_rforkpages);
	FUNC5("{:pages-freed/%9u} {N:pages freed}\n",
	    sum.v_tfree);
	FUNC5("{:pages-freed-by-daemon/%9u} {N:pages freed by daemon}\n",
	    sum.v_dfree);
	FUNC5("{:pages-freed-on-exit/%9u} {N:pages freed by exiting processes}\n",
	    sum.v_pfree);
	FUNC5("{:active-pages/%9u} {N:pages active}\n",
	    sum.v_active_count);
	FUNC5("{:inactive-pages/%9u} {N:pages inactive}\n",
	    sum.v_inactive_count);
	FUNC5("{:laundry-pages/%9u} {N:pages in the laundry queue}\n",
	    sum.v_laundry_count);
	FUNC5("{:wired-pages/%9u} {N:pages wired down}\n",
	    sum.v_wire_count);
	FUNC5("{:virtual-user-wired-pages/%9lu} {N:virtual user pages wired "
	    "down}\n", sum.v_user_wire_count);
	FUNC5("{:free-pages/%9u} {N:pages free}\n",
	    sum.v_free_count);
	FUNC5("{:bytes-per-page/%9u} {N:bytes per page}\n", sum.v_page_size);
	if (kd != NULL) {
		FUNC2(X_NCHSTATS, &lnchstats, sizeof(lnchstats));
	} else {
		size = sizeof(lnchstats);
		FUNC3("vfs.cache.nchstats", &lnchstats, &size);
		if (size != sizeof(lnchstats))
			FUNC6(1, "vfs.cache.nchstats size mismatch");
	}
	nchtotal = lnchstats.ncs_goodhits + lnchstats.ncs_neghits +
	    lnchstats.ncs_badhits + lnchstats.ncs_falsehits +
	    lnchstats.ncs_miss + lnchstats.ncs_long;
	FUNC5("{:total-name-lookups/%9ld} {N:total name lookups}\n",
	    nchtotal);
	FUNC5("{P:/%9s} {N:cache hits} "
	    "({:positive-cache-hits/%ld}% pos + "
	    "{:negative-cache-hits/%ld}% {N:neg}) "
	    "system {:cache-hit-percent/%ld}% per-directory\n",
	    "", FUNC0(lnchstats.ncs_goodhits, nchtotal),
	    FUNC0(lnchstats.ncs_neghits, nchtotal),
	    FUNC0(lnchstats.ncs_pass2, nchtotal));
	FUNC5("{P:/%9s} {L:deletions} {:deletions/%ld}%, "
	    "{L:falsehits} {:false-hits/%ld}%, "
	    "{L:toolong} {:too-long/%ld}%\n", "",
	    FUNC0(lnchstats.ncs_badhits, nchtotal),
	    FUNC0(lnchstats.ncs_falsehits, nchtotal),
	    FUNC0(lnchstats.ncs_long, nchtotal));
	FUNC4("summary-statistics");
}