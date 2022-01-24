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
struct vnode {int dummy; } ;
struct ucred {int dummy; } ;
struct sockaddr {int dummy; } ;
struct nfsexstuff {int nes_numsecflavor; int* nes_secflavors; scalar_t__ nes_exflag; } ;
struct mount {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  fh_fid; } ;
typedef  TYPE_1__ fhandle_t ;

/* Variables and functions */
 int ESTALE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct mount*,struct sockaddr*,scalar_t__*,struct ucred**,int*,int**) ; 
 int FUNC2 (struct mount*,int /*<<< orphan*/ *,int,struct vnode**) ; 
 scalar_t__ nfs_rootfhset ; 
 int /*<<< orphan*/  FUNC3 (struct vnode*) ; 

int
FUNC4(struct mount *mp, fhandle_t *fhp, struct sockaddr *nam,
    int lktype, struct vnode **vpp, struct nfsexstuff *exp,
    struct ucred **credp)
{
	int i, error, *secflavors;

	*credp = NULL;
	exp->nes_numsecflavor = 0;
	error = FUNC2(mp, &fhp->fh_fid, lktype, vpp);
	if (error != 0)
		/* Make sure the server replies ESTALE to the client. */
		error = ESTALE;
	if (nam && !error) {
		error = FUNC1(mp, nam, &exp->nes_exflag, credp,
		    &exp->nes_numsecflavor, &secflavors);
		if (error) {
			if (nfs_rootfhset) {
				exp->nes_exflag = 0;
				exp->nes_numsecflavor = 0;
				error = 0;
			} else {
				FUNC3(*vpp);
			}
		} else {
			/* Copy the security flavors. */
			for (i = 0; i < exp->nes_numsecflavor; i++)
				exp->nes_secflavors[i] = secflavors[i];
		}
	}
	FUNC0(error);
	return (error);
}