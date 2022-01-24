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
struct ucred {int /*<<< orphan*/  cr_label; } ;
struct sysctl_req {int /*<<< orphan*/ * newptr; } ;
struct sysctl_oid {int oid_kind; } ;
struct mac_biba {int dummy; } ;

/* Variables and functions */
 int CTLFLAG_ANYBODY ; 
 int EACCES ; 
 struct mac_biba* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  biba_enabled ; 
 int /*<<< orphan*/  FUNC1 (struct mac_biba*) ; 
 int FUNC2 (struct mac_biba*) ; 

__attribute__((used)) static int
FUNC3(struct ucred *cred, struct sysctl_oid *oidp,
    void *arg1, int arg2, struct sysctl_req *req)
{
	struct mac_biba *subj;
	int error;

	if (!biba_enabled)
		return (0);

	subj = FUNC0(cred->cr_label);

	/*
	 * Treat sysctl variables without CTLFLAG_ANYBODY flag as biba/high,
	 * but also require privilege to change them.
	 */
	if (req->newptr != NULL && (oidp->oid_kind & CTLFLAG_ANYBODY) == 0) {
		if (!FUNC1(subj))
			return (EACCES);

		error = FUNC2(subj);
		if (error)
			return (error);
	}

	return (0);
}