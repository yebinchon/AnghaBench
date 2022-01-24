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
struct ucred {int dummy; } ;
struct thread {struct ucred* td_ucred; } ;
struct proc {struct ucred* p_ucred; } ;
struct nlm_file_svid {scalar_t__ ns_svid; struct ucred* ns_ucred; } ;
struct flock {scalar_t__ l_pid; } ;

/* Variables and functions */
 struct nlm_file_svid* FUNC0 (int /*<<< orphan*/ *) ; 
 struct nlm_file_svid* FUNC1 (struct nlm_file_svid*,int /*<<< orphan*/ ) ; 
 int NLM_SVID_HASH_SIZE ; 
 scalar_t__ PID_MAX ; 
 int /*<<< orphan*/  FUNC2 (struct proc*) ; 
 struct ucred* FUNC3 (struct ucred*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * nlm_file_svids ; 
 int /*<<< orphan*/  nlm_svid_lock ; 
 int /*<<< orphan*/  ns_link ; 
 struct proc* FUNC6 (scalar_t__) ; 

__attribute__((used)) static void
FUNC7(struct thread *td, struct flock *fl)
{
	int i;
	struct nlm_file_svid *ns;
	struct proc *p;
	struct ucred *cred;

	cred = NULL;
	if (fl->l_pid > PID_MAX) {
		/*
		 * If this was originally a F_FLOCK-style lock, we
		 * recorded the creds used when it was originally
		 * locked in the nlm_file_svid structure.
		 */
		FUNC4(&nlm_svid_lock);
		for (i = 0; i < NLM_SVID_HASH_SIZE; i++) {
			for (ns = FUNC0(&nlm_file_svids[i]); ns;
			     ns = FUNC1(ns, ns_link)) {
				if (ns->ns_svid == fl->l_pid) {
					cred = FUNC3(ns->ns_ucred);
					break;
				}
			}
		}
		FUNC5(&nlm_svid_lock);
	} else {
		/*
		 * This lock is owned by a process. Get a reference to
		 * the process creds.
		 */
		p = FUNC6(fl->l_pid);
		if (p) {
			cred = FUNC3(p->p_ucred);
			FUNC2(p);
		}
	}

	/*
	 * If we can't find a cred, fall back on the recovery
	 * thread's cred.
	 */
	if (!cred) {
		cred = FUNC3(td->td_ucred);
	}

	td->td_ucred = cred;
}