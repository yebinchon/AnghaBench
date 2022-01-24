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
struct vnode {int dummy; } ;
struct vattr {int /*<<< orphan*/  va_gid; int /*<<< orphan*/  va_uid; } ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct nfsvattr {int dummy; } ;
struct nfsnode {int /*<<< orphan*/  n_flag; TYPE_1__* n_accesscache; } ;
struct TYPE_2__ {scalar_t__ stamp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vnode*) ; 
 int /*<<< orphan*/  NDELEGMOD ; 
 int /*<<< orphan*/  FUNC1 (struct nfsnode*) ; 
 int /*<<< orphan*/  FUNC2 (struct nfsnode*) ; 
 int NFS_ACCESSCACHESIZE ; 
 scalar_t__ FUNC3 (struct vnode*) ; 
 scalar_t__ FUNC4 (struct vnode*) ; 
 struct nfsnode* FUNC5 (struct vnode*) ; 
 int FUNC6 (struct vnode**,struct nfsvattr*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct thread*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct vnode*,struct vattr*,int /*<<< orphan*/ *,struct ucred*,struct thread*,struct nfsvattr*,int*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC9(struct vnode *vp, struct vattr *vap, struct ucred *cred,
    struct thread *td)
{
	struct nfsnode *np = FUNC5(vp);
	int error, ret, attrflag, i;
	struct nfsvattr nfsva;

	if (FUNC3(vp)) {
		FUNC1(np);
		for (i = 0; i < NFS_ACCESSCACHESIZE; i++)
			np->n_accesscache[i].stamp = 0;
		np->n_flag |= NDELEGMOD;
		FUNC2(np);
		FUNC0(vp);
	}
	error = FUNC8(vp, vap, NULL, cred, td, &nfsva, &attrflag,
	    NULL);
	if (attrflag) {
		ret = FUNC6(&vp, &nfsva, NULL, NULL, 0, 1);
		if (ret && !error)
			error = ret;
	}
	if (error && FUNC4(vp))
		error = FUNC7(td, error, vap->va_uid, vap->va_gid);
	return (error);
}