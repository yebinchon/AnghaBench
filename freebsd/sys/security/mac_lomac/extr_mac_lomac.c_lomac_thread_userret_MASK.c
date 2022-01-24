#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ucred {int /*<<< orphan*/  cr_label; } ;
struct thread {struct proc* td_proc; } ;
struct proc {struct ucred* p_ucred; int /*<<< orphan*/  p_label; } ;
struct TYPE_2__ {int ml_flags; } ;
struct mac_lomac_proc {int /*<<< orphan*/  mtx; TYPE_1__ mac_lomac; } ;

/* Variables and functions */
 int /*<<< orphan*/  Giant ; 
 int MAC_LOMAC_FLAG_UPDATE ; 
 int /*<<< orphan*/  FUNC0 (struct proc*) ; 
 int /*<<< orphan*/  FUNC1 (struct proc*) ; 
 struct mac_lomac_proc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ucred*,struct ucred*) ; 
 int /*<<< orphan*/  FUNC5 (struct ucred*) ; 
 struct ucred* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct ucred*) ; 
 int /*<<< orphan*/  curthread ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct proc*,struct ucred*) ; 

__attribute__((used)) static void
FUNC13(struct thread *td)
{
	struct proc *p = td->td_proc;
	struct mac_lomac_proc *subj = FUNC2(p->p_label);
	struct ucred *newcred, *oldcred;
	int dodrop;

	FUNC10(&subj->mtx);
	if (subj->mac_lomac.ml_flags & MAC_LOMAC_FLAG_UPDATE) {
		dodrop = 0;
		FUNC11(&subj->mtx);
		newcred = FUNC6();
		/*
		 * Prevent a lock order reversal in mac_proc_vm_revoke;
		 * ideally, the other user of subj->mtx wouldn't be holding
		 * Giant.
		 */
		FUNC10(&Giant);
		FUNC0(p);
		FUNC10(&subj->mtx);
		/*
		 * Check if we lost the race while allocating the cred.
		 */
		if ((subj->mac_lomac.ml_flags & MAC_LOMAC_FLAG_UPDATE) == 0) {
			FUNC5(newcred);
			goto out;
		}
		oldcred = p->p_ucred;
		FUNC4(newcred, oldcred);
		FUNC7(newcred);
		FUNC8(&subj->mac_lomac, FUNC3(newcred->cr_label));
		FUNC12(p, newcred);
		FUNC5(oldcred);
		dodrop = 1;
	out:
		FUNC11(&subj->mtx);
		FUNC1(p);
		if (dodrop)
			FUNC9(curthread);
		FUNC11(&Giant);
	} else {
		FUNC11(&subj->mtx);
	}
}