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
struct vnode {scalar_t__ v_type; scalar_t__ v_mount; } ;
struct thread {int /*<<< orphan*/  td_ucred; } ;
struct nameidata {struct vnode* ni_dvp; int /*<<< orphan*/  ni_cnd; struct vnode* ni_vp; } ;
struct mount {int dummy; } ;
typedef  enum uio_seg { ____Placeholder_uio_seg } uio_seg ;

/* Variables and functions */
 int AUDITVNODE2 ; 
 int /*<<< orphan*/  CREATE ; 
 int EAGAIN ; 
 int EEXIST ; 
 int EPERM ; 
 int EXDEV ; 
 int /*<<< orphan*/  LK_EXCLUSIVE ; 
 int LOCKPARENT ; 
 int /*<<< orphan*/  FUNC0 (struct nameidata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NDF_ONLY_PNBUF ; 
 int /*<<< orphan*/  FUNC1 (struct nameidata*,int /*<<< orphan*/ ,int,int,char const*,int,int /*<<< orphan*/ *,struct thread*) ; 
 int NOCACHE ; 
 int PCATCH ; 
 int SAVENAME ; 
 scalar_t__ VDIR ; 
 int FUNC2 (struct vnode*,struct vnode*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct vnode*,int /*<<< orphan*/ ) ; 
 int V_NOWAIT ; 
 int V_XSLEEP ; 
 int FUNC4 (struct vnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cap_linkat_target_rights ; 
 int FUNC5 (int /*<<< orphan*/ ,struct vnode*,struct vnode*,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct nameidata*) ; 
 int /*<<< orphan*/  FUNC7 (struct mount*) ; 
 int FUNC8 (struct vnode*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct vnode*,struct mount**,int) ; 
 int /*<<< orphan*/  FUNC10 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC11 (struct vnode*) ; 

__attribute__((used)) static int
FUNC12(struct thread *td, struct vnode *vp, int fd, const char *path,
    enum uio_seg segflag)
{
	struct nameidata nd;
	struct mount *mp;
	int error;

	if (vp->v_type == VDIR) {
		FUNC11(vp);
		return (EPERM);		/* POSIX */
	}
	FUNC1(&nd, CREATE,
	    LOCKPARENT | SAVENAME | AUDITVNODE2 | NOCACHE, segflag, path, fd,
	    &cap_linkat_target_rights, td);
	if ((error = FUNC6(&nd)) == 0) {
		if (nd.ni_vp != NULL) {
			FUNC0(&nd, NDF_ONLY_PNBUF);
			if (nd.ni_dvp == nd.ni_vp)
				FUNC11(nd.ni_dvp);
			else
				FUNC10(nd.ni_dvp);
			FUNC11(nd.ni_vp);
			FUNC11(vp);
			return (EEXIST);
		} else if (nd.ni_dvp->v_mount != vp->v_mount) {
			/*
			 * Cross-device link.  No need to recheck
			 * vp->v_type, since it cannot change, except
			 * to VBAD.
			 */
			FUNC0(&nd, NDF_ONLY_PNBUF);
			FUNC10(nd.ni_dvp);
			FUNC11(vp);
			return (EXDEV);
		} else if ((error = FUNC8(vp, LK_EXCLUSIVE)) == 0) {
			error = FUNC4(vp, td->td_ucred);
#ifdef MAC
			if (error == 0)
				error = mac_vnode_check_link(td->td_ucred,
				    nd.ni_dvp, vp, &nd.ni_cnd);
#endif
			if (error != 0) {
				FUNC10(vp);
				FUNC10(nd.ni_dvp);
				FUNC0(&nd, NDF_ONLY_PNBUF);
				return (error);
			}
			error = FUNC9(vp, &mp, V_NOWAIT);
			if (error != 0) {
				FUNC10(vp);
				FUNC10(nd.ni_dvp);
				FUNC0(&nd, NDF_ONLY_PNBUF);
				error = FUNC9(NULL, &mp,
				    V_XSLEEP | PCATCH);
				if (error != 0)
					return (error);
				return (EAGAIN);
			}
			error = FUNC2(nd.ni_dvp, vp, &nd.ni_cnd);
			FUNC3(vp, 0);
			FUNC10(nd.ni_dvp);
			FUNC7(mp);
			FUNC0(&nd, NDF_ONLY_PNBUF);
		} else {
			FUNC10(nd.ni_dvp);
			FUNC0(&nd, NDF_ONLY_PNBUF);
			FUNC11(vp);
			return (EAGAIN);
		}
	}
	FUNC11(vp);
	return (error);
}