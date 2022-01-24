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
typedef  int /*<<< orphan*/  uid_t ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct nfsvattr {int /*<<< orphan*/  na_vattr; } ;
struct nfsexstuff {int dummy; } ;
struct nameidata {scalar_t__ ni_dvp; scalar_t__ ni_vp; int /*<<< orphan*/  ni_cnd; } ;

/* Variables and functions */
 int EEXIST ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (scalar_t__,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct nameidata*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

int
FUNC5(struct nameidata *ndp, struct nfsvattr *nvap, uid_t saved_uid,
    struct ucred *cred, struct thread *p, struct nfsexstuff *exp)
{
	int error = 0;

	if (ndp->ni_vp != NULL) {
		if (ndp->ni_dvp == ndp->ni_vp)
			FUNC4(ndp->ni_dvp);
		else
			FUNC3(ndp->ni_dvp);
		FUNC4(ndp->ni_vp);
		FUNC2(ndp);
		error = EEXIST;
		goto out;
	}
	error = FUNC1(ndp->ni_dvp, &ndp->ni_vp, &ndp->ni_cnd,
	    &nvap->na_vattr);
	FUNC3(ndp->ni_dvp);
	FUNC2(ndp);

out:
	FUNC0(error);
	return (error);
}