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
struct ucred {int /*<<< orphan*/  cr_uid; int /*<<< orphan*/  cr_ruid; } ;

/* Variables and functions */
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int PRIV_DEBUG_UNPRIV ; 
 int PRIV_KMEM_READ ; 
#define  PRIV_MAXFILES 132 
#define  PRIV_MAXPROC 131 
 int PRIV_MSGBUF ; 
#define  PRIV_PROC_LIMIT 130 
 int /*<<< orphan*/  FUNC1 (int) ; 
#define  PRIV_VM_MLOCK 129 
#define  PRIV_VM_MUNLOCK 128 
 int /*<<< orphan*/  PR_ALLOW_UNPRIV_DEBUG ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  kernel ; 
 int FUNC4 (struct ucred*,int) ; 
 scalar_t__ FUNC5 (struct ucred*,int) ; 
 scalar_t__ FUNC6 (struct ucred*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct ucred*,int) ; 
 int /*<<< orphan*/  priv__err ; 
 int /*<<< orphan*/  priv__ok ; 
 int /*<<< orphan*/  priv_check ; 
 scalar_t__ suser_enabled ; 
 scalar_t__ unprivileged_mlock ; 
 scalar_t__ unprivileged_read_msgbuf ; 

int
FUNC8(struct ucred *cred, int priv)
{
	int error;

	FUNC0(FUNC1(priv), ("priv_check_cred: invalid privilege %d",
	    priv));

	/*
	 * We first evaluate policies that may deny the granting of
	 * privilege unilaterally.
	 */
#ifdef MAC
	error = mac_priv_check(cred, priv);
	if (error)
		goto out;
#endif

	/*
	 * Jail policy will restrict certain privileges that may otherwise be
	 * be granted.
	 */
	error = FUNC7(cred, priv);
	if (error)
		goto out;

	if (unprivileged_mlock) {
		/*
		 * Allow unprivileged users to call mlock(2)/munlock(2) and
		 * mlockall(2)/munlockall(2).
		 */
		switch (priv) {
		case PRIV_VM_MLOCK:
		case PRIV_VM_MUNLOCK:
			error = 0;
			goto out;
		}
	}

	if (unprivileged_read_msgbuf) {
		/*
		 * Allow an unprivileged user to read the kernel message
		 * buffer.
		 */
		if (priv == PRIV_MSGBUF) {
			error = 0;
			goto out;
		}
	}

	/*
	 * Having determined if privilege is restricted by various policies,
	 * now determine if privilege is granted.  At this point, any policy
	 * may grant privilege.  For now, we allow short-circuit boolean
	 * evaluation, so may not call all policies.  Perhaps we should.
	 *
	 * Superuser policy grants privilege based on the effective (or in
	 * the case of specific privileges, real) uid being 0.  We allow the
	 * superuser policy to be globally disabled, although this is
	 * currenty of limited utility.
	 */
	if (suser_enabled) {
		switch (priv) {
		case PRIV_MAXFILES:
		case PRIV_MAXPROC:
		case PRIV_PROC_LIMIT:
			if (cred->cr_ruid == 0) {
				error = 0;
				goto out;
			}
			break;
		default:
			if (cred->cr_uid == 0) {
				error = 0;
				goto out;
			}
			break;
		}
	}

	/*
	 * Writes to kernel/physical memory are a typical root-only operation,
	 * but non-root users are expected to be able to read it (provided they
	 * have permission to access /dev/[k]mem).
	 */
	if (priv == PRIV_KMEM_READ) {
		error = 0;
		goto out;
	}

	/*
	 * Allow unprivileged process debugging on a per-jail basis.
	 * Do this here instead of prison_priv_check(), so it can also
	 * apply to prison0.
	 */
	if (priv == PRIV_DEBUG_UNPRIV) {
		if (FUNC6(cred, PR_ALLOW_UNPRIV_DEBUG)) {
			error = 0;
			goto out;
		}
	}

	/*
	 * Now check with MAC, if enabled, to see if a policy module grants
	 * privilege.
	 */
#ifdef MAC
	if (mac_priv_grant(cred, priv) == 0) {
		error = 0;
		goto out;
	}
#endif

	/*
	 * The default is deny, so if no policies have granted it, reject
	 * with a privilege error here.
	 */
	error = EPERM;
out:
	if (FUNC3()) {
		if (error)
			FUNC2(priv, kernel, priv_check, priv__err, priv);
		else
			FUNC2(priv, kernel, priv_check, priv__ok, priv);
	}
	return (error);
}