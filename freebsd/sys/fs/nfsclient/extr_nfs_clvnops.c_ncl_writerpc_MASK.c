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
typedef  int /*<<< orphan*/  uid_t ;
struct vnode {int dummy; } ;
struct uio {int /*<<< orphan*/  uio_td; } ;
struct ucred {int dummy; } ;
struct nfsvattr {int dummy; } ;
struct nfsmount {int dummy; } ;
typedef  int /*<<< orphan*/  gid_t ;
struct TYPE_2__ {int n_flag; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct vnode*) ; 
 int EIO ; 
 int ND_NFSV4 ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int) ; 
 scalar_t__ FUNC2 (struct nfsmount*) ; 
 int /*<<< orphan*/  NFSV4OPEN_ACCESSWRITE ; 
 int NFSWRITE_FILESYNC ; 
 scalar_t__ FUNC3 (struct vnode*) ; 
 struct nfsmount* FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (struct vnode*) ; 
 int FUNC6 (struct vnode*,struct uio*,int*,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ucred*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct vnode**,struct nfsvattr*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct vnode*,struct uio*,int*,int*,struct ucred*,int /*<<< orphan*/ ,struct nfsvattr*,int*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (struct vnode*) ; 

int
FUNC11(struct vnode *vp, struct uio *uiop, struct ucred *cred,
    int *iomode, int *must_commit, int called_from_strategy)
{
	struct nfsvattr nfsva;
	int error, attrflag, ret;
	struct nfsmount *nmp;

	nmp = FUNC4(FUNC10(vp));
	error = EIO;
	attrflag = 0;
	if (FUNC2(nmp))
		error = FUNC6(vp, uiop, iomode, must_commit,
		    NFSV4OPEN_ACCESSWRITE, 0, cred, uiop->uio_td);
	FUNC1(4, "writerpc: aft doiods=%d\n", error);
	if (error != 0)
		error = FUNC9(vp, uiop, iomode, must_commit, cred,
		    uiop->uio_td, &nfsva, &attrflag, NULL,
		    called_from_strategy);
	if (attrflag) {
		if (FUNC5(vp)->n_flag & ND_NFSV4)
			ret = FUNC7(&vp, &nfsva, NULL, NULL, 1,
			    1);
		else
			ret = FUNC7(&vp, &nfsva, NULL, NULL, 0,
			    1);
		if (ret && !error)
			error = ret;
	}
	if (FUNC0(vp))
		*iomode = NFSWRITE_FILESYNC;
	if (error && FUNC3(vp))
		error = FUNC8(uiop->uio_td, error, (uid_t)0, (gid_t)0);
	return (error);
}