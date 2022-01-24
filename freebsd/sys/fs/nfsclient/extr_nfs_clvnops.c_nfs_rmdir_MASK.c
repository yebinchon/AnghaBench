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
struct vop_rmdir_args {struct componentname* a_cnp; struct vnode* a_dvp; struct vnode* a_vp; } ;
struct vnode {int dummy; } ;
struct nfsvattr {int dummy; } ;
struct nfsnode {scalar_t__ n_attrstamp; int /*<<< orphan*/  n_flag; } ;
struct componentname {int /*<<< orphan*/  cn_thread; int /*<<< orphan*/  cn_cred; int /*<<< orphan*/  cn_namelen; int /*<<< orphan*/  cn_nameptr; } ;
typedef  int /*<<< orphan*/  gid_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC1 (struct nfsnode*) ; 
 int /*<<< orphan*/  FUNC2 (struct nfsnode*) ; 
 scalar_t__ FUNC3 (struct vnode*) ; 
 int /*<<< orphan*/  NMODIFIED ; 
 struct nfsnode* FUNC4 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC5 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC6 (struct vnode**,struct nfsvattr*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct vnode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nfsvattr*,int*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC9(struct vop_rmdir_args *ap)
{
	struct vnode *vp = ap->a_vp;
	struct vnode *dvp = ap->a_dvp;
	struct componentname *cnp = ap->a_cnp;
	struct nfsnode *dnp;
	struct nfsvattr dnfsva;
	int error, dattrflag;

	if (dvp == vp)
		return (EINVAL);
	error = FUNC8(dvp, cnp->cn_nameptr, cnp->cn_namelen,
	    cnp->cn_cred, cnp->cn_thread, &dnfsva, &dattrflag, NULL);
	dnp = FUNC4(dvp);
	FUNC1(dnp);
	dnp->n_flag |= NMODIFIED;
	if (dattrflag != 0) {
		FUNC2(dnp);
		(void) FUNC6(&dvp, &dnfsva, NULL, NULL, 0, 1);
	} else {
		dnp->n_attrstamp = 0;
		FUNC2(dnp);
		FUNC0(dvp);
	}

	FUNC5(dvp);
	FUNC5(vp);
	if (error && FUNC3(dvp))
		error = FUNC7(cnp->cn_thread, error, (uid_t)0,
		    (gid_t)0);
	/*
	 * Kludge: Map ENOENT => 0 assuming that you have a reply to a retry.
	 */
	if (error == ENOENT)
		error = 0;
	return (error);
}