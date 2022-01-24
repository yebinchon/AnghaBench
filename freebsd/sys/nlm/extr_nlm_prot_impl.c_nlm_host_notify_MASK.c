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
struct thread {int dummy; } ;
struct nlm_host {int nh_sysid; int nh_state; scalar_t__ nh_monstate; int /*<<< orphan*/  nh_caller_name; int /*<<< orphan*/  nh_refs; int /*<<< orphan*/  nh_lock; int /*<<< orphan*/  nh_pending; } ;
struct nlm_async_lock {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ NLM_RECOVERING ; 
 int NLM_SYSID_CLIENT ; 
 struct nlm_async_lock* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  curproc ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct nlm_host*,int /*<<< orphan*/ ,struct thread**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct nlm_async_lock*) ; 
 int /*<<< orphan*/  FUNC8 (struct nlm_host*) ; 
 int /*<<< orphan*/  nlm_client_recovery_start ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC10(struct nlm_host *host, int newstate)
{
	struct nlm_async_lock *af;

	if (newstate) {
		FUNC0(1, "NLM: host %s (sysid %d) rebooted, new "
		    "state is %d\n", host->nh_caller_name,
		    host->nh_sysid, newstate);
	}

	/*
	 * Cancel any pending async locks for this host.
	 */
	FUNC5(&host->nh_lock);
	while ((af = FUNC1(&host->nh_pending)) != NULL) {
		/*
		 * nlm_cancel_async_lock will remove the entry from
		 * nh_pending and free it.
		 */
		FUNC7(af);
	}
	FUNC6(&host->nh_lock);
	FUNC8(host);

	/*
	 * The host just rebooted - trash its locks.
	 */
	FUNC3(host->nh_sysid);
	host->nh_state = newstate;

	/*
	 * If we have any remote locks for this host (i.e. it
	 * represents a remote NFS server that our local NFS client
	 * has locks for), start a recovery thread.
	 */
	if (newstate != 0
	    && host->nh_monstate != NLM_RECOVERING
	    && FUNC4(NLM_SYSID_CLIENT | host->nh_sysid) > 0) {
		struct thread *td;
		host->nh_monstate = NLM_RECOVERING;
		FUNC9(&host->nh_refs);
		FUNC2(nlm_client_recovery_start, host, curproc, &td, 0, 0,
		    "NFS lock recovery for %s", host->nh_caller_name);
	}
}