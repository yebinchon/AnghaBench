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
struct vnode {int dummy; } ;
struct uio {int /*<<< orphan*/  uio_td; } ;
struct ucred {int dummy; } ;
struct nfsvattr {int dummy; } ;
struct nfsmount {int dummy; } ;
typedef  int /*<<< orphan*/  gid_t ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 scalar_t__ FUNC1 (struct nfsmount*) ; 
 int /*<<< orphan*/  NFSV4OPEN_ACCESSREAD ; 
 scalar_t__ FUNC2 (struct vnode*) ; 
 struct nfsmount* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct vnode*,struct uio*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ucred*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct vnode**,struct nfsvattr*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct vnode*,struct uio*,struct ucred*,int /*<<< orphan*/ ,struct nfsvattr*,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct vnode*) ; 

int
FUNC9(struct vnode *vp, struct uio *uiop, struct ucred *cred)
{
	int error, ret, attrflag;
	struct nfsvattr nfsva;
	struct nfsmount *nmp;

	nmp = FUNC3(FUNC8(vp));
	error = EIO;
	attrflag = 0;
	if (FUNC1(nmp))
		error = FUNC4(vp, uiop, NULL, NULL,
		    NFSV4OPEN_ACCESSREAD, 0, cred, uiop->uio_td);
	FUNC0(4, "readrpc: aft doiods=%d\n", error);
	if (error != 0)
		error = FUNC7(vp, uiop, cred, uiop->uio_td, &nfsva,
		    &attrflag, NULL);
	if (attrflag) {
		ret = FUNC5(&vp, &nfsva, NULL, NULL, 0, 1);
		if (ret && !error)
			error = ret;
	}
	if (error && FUNC2(vp))
		error = FUNC6(uiop->uio_td, error, (uid_t)0, (gid_t)0);
	return (error);
}