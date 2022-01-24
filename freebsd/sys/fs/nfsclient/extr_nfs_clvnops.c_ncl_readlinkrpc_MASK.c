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
typedef  int /*<<< orphan*/  gid_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct vnode*) ; 
 int FUNC1 (struct vnode**,struct nfsvattr*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct vnode*,struct uio*,struct ucred*,int /*<<< orphan*/ ,struct nfsvattr*,int*,int /*<<< orphan*/ *) ; 

int
FUNC4(struct vnode *vp, struct uio *uiop, struct ucred *cred)
{
	int error, ret, attrflag;
	struct nfsvattr nfsva;

	error = FUNC3(vp, uiop, cred, uiop->uio_td, &nfsva,
	    &attrflag, NULL);
	if (attrflag) {
		ret = FUNC1(&vp, &nfsva, NULL, NULL, 0, 1);
		if (ret && !error)
			error = ret;
	}
	if (error && FUNC0(vp))
		error = FUNC2(uiop->uio_td, error, (uid_t)0, (gid_t)0);
	return (error);
}