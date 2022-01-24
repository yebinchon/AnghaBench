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
struct vnode {scalar_t__ v_type; } ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct nfsexstuff {int dummy; } ;
struct TYPE_2__ {int cn_flags; } ;
struct nameidata {TYPE_1__ ni_cnd; struct vnode* ni_dvp; struct vnode* ni_vp; } ;
typedef  int /*<<< orphan*/  fhandle_t ;

/* Variables and functions */
 int NFSDEV_MAXMIRRORS ; 
 int NFSERR_ISDIR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  PNFS_FILENAME_LEN ; 
 int SAVENAME ; 
 scalar_t__ VDIR ; 
 int FUNC1 (struct vnode*,struct vnode*,TYPE_1__*) ; 
 int FUNC2 (struct vnode*,int,struct thread*) ; 
 int /*<<< orphan*/  FUNC3 (struct vnode**,int,char*,int /*<<< orphan*/ *,struct thread*) ; 
 int /*<<< orphan*/  FUNC4 (struct vnode*,struct thread*,struct vnode**,int*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct nameidata*) ; 
 int /*<<< orphan*/  FUNC6 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC7 (struct vnode*) ; 

int
FUNC8(struct nameidata *ndp, int is_v4, struct ucred *cred,
    struct thread *p, struct nfsexstuff *exp)
{
	struct vnode *vp, *dsdvp[NFSDEV_MAXMIRRORS];
	int error = 0, mirrorcnt;
	char fname[PNFS_FILENAME_LEN + 1];
	fhandle_t fh;

	vp = ndp->ni_vp;
	dsdvp[0] = NULL;
	if (vp->v_type == VDIR)
		error = NFSERR_ISDIR;
	else if (is_v4)
		error = FUNC2(vp, 1, p);
	if (error == 0)
		FUNC4(vp, p, dsdvp, &mirrorcnt, fname, &fh);
	if (!error)
		error = FUNC1(ndp->ni_dvp, vp, &ndp->ni_cnd);
	if (error == 0 && dsdvp[0] != NULL)
		FUNC3(dsdvp, mirrorcnt, fname, &fh, p);
	if (ndp->ni_dvp == vp)
		FUNC7(ndp->ni_dvp);
	else
		FUNC6(ndp->ni_dvp);
	FUNC6(vp);
	if ((ndp->ni_cnd.cn_flags & SAVENAME) != 0)
		FUNC5(ndp);
	FUNC0(error);
	return (error);
}