#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sigset_t ;
struct TYPE_9__ {TYPE_1__* p_sigacts; } ;
struct TYPE_8__ {int /*<<< orphan*/  td_sigmask; } ;
struct TYPE_7__ {int /*<<< orphan*/  ps_mtx; int /*<<< orphan*/  ps_sigignore; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SIGPROCMASK_PROC_LOCKED ; 
 int /*<<< orphan*/  SIG_SETMASK ; 
 int /*<<< orphan*/ * autofs_sig_set ; 
 TYPE_4__* curproc ; 
 TYPE_2__* curthread ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9(sigset_t *oldset)
{
	sigset_t newset;
	int i;

	FUNC3(newset);
	/* Remove the autofs set of signals from newset */
	FUNC0(curproc);
	FUNC6(&curproc->p_sigacts->ps_mtx);
	for (i = 0 ; i < FUNC8(autofs_sig_set); i++) {
		/*
		 * But make sure we leave the ones already masked
		 * by the process, i.e. remove the signal from the
		 * temporary signalmask only if it wasn't already
		 * in p_sigmask.
		 */
		if (!FUNC4(curthread->td_sigmask, autofs_sig_set[i]) &&
		    !FUNC4(curproc->p_sigacts->ps_sigignore,
		    autofs_sig_set[i])) {
			FUNC2(newset, autofs_sig_set[i]);
		}
	}
	FUNC7(&curproc->p_sigacts->ps_mtx);
	FUNC5(curthread, SIG_SETMASK, &newset, oldset,
	    SIGPROCMASK_PROC_LOCKED);
	FUNC1(curproc);
}