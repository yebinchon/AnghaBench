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
struct vnode {int dummy; } ;
struct ucred {scalar_t__ cr_uid; scalar_t__ cr_ruid; scalar_t__ cr_rgid; scalar_t__* cr_groups; } ;
struct thread {struct ucred* td_ucred; } ;
struct nameidata {struct vnode* ni_vp; } ;
typedef  enum uio_seg { ____Placeholder_uio_seg } uio_seg ;

/* Variables and functions */
 int AT_BENEATH ; 
 int AT_EACCESS ; 
 int AUDITVNODE1 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int BENEATH ; 
 int EINVAL ; 
 int FOLLOW ; 
 int F_OK ; 
 int LOCKLEAF ; 
 int LOCKSHARED ; 
 int /*<<< orphan*/  LOOKUP ; 
 int /*<<< orphan*/  FUNC1 (struct nameidata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NDF_ONLY_PNBUF ; 
 int /*<<< orphan*/  FUNC2 (struct nameidata*,int /*<<< orphan*/ ,int,int,char const*,int,int /*<<< orphan*/ *,struct thread*) ; 
 int R_OK ; 
 int W_OK ; 
 int X_OK ; 
 int /*<<< orphan*/  cap_fstat_rights ; 
 struct ucred* FUNC3 (struct ucred*) ; 
 int /*<<< orphan*/  FUNC4 (struct ucred*) ; 
 int FUNC5 (struct nameidata*) ; 
 int FUNC6 (struct vnode*,int,struct ucred*,struct thread*) ; 
 int /*<<< orphan*/  FUNC7 (struct vnode*) ; 

int
FUNC8(struct thread *td, int fd, const char *path,
    enum uio_seg pathseg, int flag, int amode)
{
	struct ucred *cred, *usecred;
	struct vnode *vp;
	struct nameidata nd;
	int error;

	if ((flag & ~(AT_EACCESS | AT_BENEATH)) != 0)
		return (EINVAL);
	if (amode != F_OK && (amode & ~(R_OK | W_OK | X_OK)) != 0)
		return (EINVAL);

	/*
	 * Create and modify a temporary credential instead of one that
	 * is potentially shared (if we need one).
	 */
	cred = td->td_ucred;
	if ((flag & AT_EACCESS) == 0 &&
	    ((cred->cr_uid != cred->cr_ruid ||
	    cred->cr_rgid != cred->cr_groups[0]))) {
		usecred = FUNC3(cred);
		usecred->cr_uid = cred->cr_ruid;
		usecred->cr_groups[0] = cred->cr_rgid;
		td->td_ucred = usecred;
	} else
		usecred = cred;
	FUNC0(amode);
	FUNC2(&nd, LOOKUP, FOLLOW | LOCKSHARED | LOCKLEAF |
	    AUDITVNODE1 | ((flag & AT_BENEATH) != 0 ? BENEATH : 0),
	    pathseg, path, fd, &cap_fstat_rights, td);
	if ((error = FUNC5(&nd)) != 0)
		goto out;
	vp = nd.ni_vp;

	error = FUNC6(vp, amode, usecred, td);
	FUNC1(&nd, NDF_ONLY_PNBUF);
	FUNC7(vp);
out:
	if (usecred != cred) {
		td->td_ucred = cred;
		FUNC4(usecred);
	}
	return (error);
}