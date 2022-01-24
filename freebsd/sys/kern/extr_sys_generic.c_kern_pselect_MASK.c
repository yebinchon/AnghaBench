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
struct timeval {int dummy; } ;
struct thread {int /*<<< orphan*/  td_flags; int /*<<< orphan*/  td_pflags; int /*<<< orphan*/  td_oldsigmask; } ;
typedef  int /*<<< orphan*/  sigset_t ;
typedef  int /*<<< orphan*/  fd_set ;

/* Variables and functions */
 int /*<<< orphan*/  SIG_SETMASK ; 
 int /*<<< orphan*/  TDF_ASTPENDING ; 
 int /*<<< orphan*/  TDP_OLDMASK ; 
 int FUNC0 (struct thread*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*,int) ; 
 int FUNC1 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct thread*) ; 
 int /*<<< orphan*/  FUNC3 (struct thread*) ; 

int
FUNC4(struct thread *td, int nd, fd_set *in, fd_set *ou, fd_set *ex,
    struct timeval *tvp, sigset_t *uset, int abi_nfdbits)
{
	int error;

	if (uset != NULL) {
		error = FUNC1(td, SIG_SETMASK, uset,
		    &td->td_oldsigmask, 0);
		if (error != 0)
			return (error);
		td->td_pflags |= TDP_OLDMASK;
		/*
		 * Make sure that ast() is called on return to
		 * usermode and TDP_OLDMASK is cleared, restoring old
		 * sigmask.
		 */
		FUNC2(td);
		td->td_flags |= TDF_ASTPENDING;
		FUNC3(td);
	}
	error = FUNC0(td, nd, in, ou, ex, tvp, abi_nfdbits);
	return (error);
}