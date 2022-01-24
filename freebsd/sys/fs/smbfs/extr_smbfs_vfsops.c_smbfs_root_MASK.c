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
struct vnode {int /*<<< orphan*/  v_vflag; } ;
struct ucred {int dummy; } ;
struct thread {struct ucred* td_ucred; } ;
struct smbnode {int dummy; } ;
struct smbmount {struct smbnode* sm_root; } ;
struct smbfattr {int dummy; } ;
struct smb_cred {int dummy; } ;
struct mount {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vnode*,char*) ; 
 int LK_EXCLUSIVE ; 
 int LK_RETRY ; 
 struct vnode* FUNC1 (struct smbnode*) ; 
 struct smbmount* FUNC2 (struct mount*) ; 
 struct smbnode* FUNC3 (struct vnode*) ; 
 int /*<<< orphan*/  VV_ROOT ; 
 struct thread* curthread ; 
 int /*<<< orphan*/  FUNC4 (struct smb_cred*,struct thread*,struct ucred*) ; 
 int /*<<< orphan*/  FUNC5 (struct smb_cred*) ; 
 struct smb_cred* FUNC6 () ; 
 int FUNC7 (struct mount*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct smbfattr*,struct vnode**) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct smbfattr*,struct smb_cred*) ; 
 int FUNC9 (struct vnode*,int,struct thread*) ; 

__attribute__((used)) static int
FUNC10(struct mount *mp, int flags, struct vnode **vpp)
{
	struct smbmount *smp = FUNC2(mp);
	struct vnode *vp;
	struct smbnode *np;
	struct smbfattr fattr;
	struct thread *td;
	struct ucred *cred;
	struct smb_cred *scred;
	int error;

	td = curthread;
	cred = td->td_ucred;

	if (smp->sm_root) {
		*vpp = FUNC1(smp->sm_root);
		return FUNC9(*vpp, LK_EXCLUSIVE | LK_RETRY, td);
	}
	scred = FUNC6();
	FUNC4(scred, td, cred);
	error = FUNC8(NULL, NULL, 0, &fattr, scred);
	if (error)
		goto out;
	error = FUNC7(mp, NULL, NULL, 0, &fattr, &vp);
	if (error)
		goto out;
	FUNC0(vp, "smbfs_root");
	vp->v_vflag |= VV_ROOT;
	np = FUNC3(vp);
	smp->sm_root = np;
	*vpp = vp;
out:
	FUNC5(scred);
	return error;
}