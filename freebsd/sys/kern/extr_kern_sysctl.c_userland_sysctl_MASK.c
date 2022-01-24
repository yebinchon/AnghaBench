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
typedef  int /*<<< orphan*/  u_int ;
struct thread {int dummy; } ;
struct sysctl_req {int flags; size_t oldlen; size_t validlen; size_t newlen; scalar_t__ lock; size_t oldidx; void* oldptr; scalar_t__ newidx; int /*<<< orphan*/  newfunc; int /*<<< orphan*/  oldfunc; void const* newptr; struct thread* td; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int EAGAIN ; 
 int ENOMEM ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KTR_SYSCTL ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  PRI_USER ; 
 scalar_t__ REQ_UNWIRED ; 
 scalar_t__ REQ_WIRED ; 
 int /*<<< orphan*/  FUNC3 (struct thread*) ; 
 int /*<<< orphan*/  FUNC4 (struct sysctl_req*,int) ; 
 int FUNC5 (size_t*,size_t*,int) ; 
 int /*<<< orphan*/  curthread ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sysctl_new_user ; 
 int /*<<< orphan*/  sysctl_old_user ; 
 int FUNC10 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,struct sysctl_req*) ; 
 int /*<<< orphan*/  sysctlmemlock ; 
 int /*<<< orphan*/  FUNC11 (void*,size_t) ; 

int
FUNC12(struct thread *td, int *name, u_int namelen, void *old,
    size_t *oldlenp, int inkernel, const void *new, size_t newlen,
    size_t *retval, int flags)
{
	int error = 0, memlocked;
	struct sysctl_req req;

	FUNC4(&req, sizeof req);

	req.td = td;
	req.flags = flags;

	if (oldlenp) {
		if (inkernel) {
			req.oldlen = *oldlenp;
		} else {
			error = FUNC5(oldlenp, &req.oldlen, sizeof(*oldlenp));
			if (error)
				return (error);
		}
	}
	req.validlen = req.oldlen;
	req.oldptr = old;

	if (new != NULL) {
		req.newlen = newlen;
		req.newptr = new;
	}

	req.oldfunc = sysctl_old_user;
	req.newfunc = sysctl_new_user;
	req.lock = REQ_UNWIRED;

#ifdef KTRACE
	if (KTRPOINT(curthread, KTR_SYSCTL))
		ktrsysctl(name, namelen);
#endif
	memlocked = 0;
	if (req.oldptr && req.oldlen > 4 * PAGE_SIZE) {
		memlocked = 1;
		FUNC8(&sysctlmemlock);
	}
	FUNC1(FUNC3(td));

	for (;;) {
		req.oldidx = 0;
		req.newidx = 0;
		error = FUNC10(0, name, namelen, &req);
		if (error != EAGAIN)
			break;
		FUNC6(PRI_USER);
	}

	FUNC0();

	if (req.lock == REQ_WIRED && req.validlen > 0)
		FUNC11(req.oldptr, req.validlen);
	if (memlocked)
		FUNC9(&sysctlmemlock);

	if (error && error != ENOMEM)
		return (error);

	if (retval) {
		if (req.oldptr && req.oldidx > req.validlen)
			*retval = req.validlen;
		else
			*retval = req.oldidx;
	}
	return (error);
}