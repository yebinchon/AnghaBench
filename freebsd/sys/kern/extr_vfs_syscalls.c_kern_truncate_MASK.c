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
struct vnode {scalar_t__ v_type; } ;
struct vattr {scalar_t__ va_size; } ;
struct thread {int /*<<< orphan*/  td_ucred; } ;
struct nameidata {struct vnode* ni_vp; } ;
struct mount {int dummy; } ;
typedef  scalar_t__ off_t ;
typedef  enum uio_seg { ____Placeholder_uio_seg } uio_seg ;

/* Variables and functions */
 int AUDITVNODE1 ; 
 int EINVAL ; 
 int EISDIR ; 
 int FOLLOW ; 
 int LK_EXCLUSIVE ; 
 int LK_RETRY ; 
 int /*<<< orphan*/  LOOKUP ; 
 int /*<<< orphan*/  FUNC0 (struct nameidata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NDF_ONLY_PNBUF ; 
 int /*<<< orphan*/  FUNC1 (struct nameidata*,int /*<<< orphan*/ ,int,int,char const*,struct thread*) ; 
 int /*<<< orphan*/  NOCRED ; 
 int /*<<< orphan*/  OFF_MAX ; 
 int PCATCH ; 
 int /*<<< orphan*/  FUNC2 (struct vattr*) ; 
 scalar_t__ VDIR ; 
 int FUNC3 (struct vnode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct thread*) ; 
 int FUNC4 (struct vnode*,struct vattr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct vnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VWRITE ; 
 int V_WAIT ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vnode*) ; 
 int FUNC7 (struct nameidata*) ; 
 int /*<<< orphan*/  FUNC8 (struct mount*) ; 
 int /*<<< orphan*/  FUNC9 (struct vnode*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct vnode*,void*) ; 
 void* FUNC11 (struct vnode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct vnode*,struct mount**,int) ; 
 int FUNC13 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC14 (struct vnode*) ; 

int
FUNC15(struct thread *td, const char *path, enum uio_seg pathseg,
    off_t length)
{
	struct mount *mp;
	struct vnode *vp;
	void *rl_cookie;
	struct vattr vattr;
	struct nameidata nd;
	int error;

	if (length < 0)
		return(EINVAL);
	FUNC1(&nd, LOOKUP, FOLLOW | AUDITVNODE1, pathseg, path, td);
	if ((error = FUNC7(&nd)) != 0)
		return (error);
	vp = nd.ni_vp;
	rl_cookie = FUNC11(vp, 0, OFF_MAX);
	if ((error = FUNC12(vp, &mp, V_WAIT | PCATCH)) != 0) {
		FUNC10(vp, rl_cookie);
		FUNC14(vp);
		return (error);
	}
	FUNC0(&nd, NDF_ONLY_PNBUF);
	FUNC9(vp, LK_EXCLUSIVE | LK_RETRY);
	if (vp->v_type == VDIR)
		error = EISDIR;
#ifdef MAC
	else if ((error = mac_vnode_check_write(td->td_ucred, NOCRED, vp))) {
	}
#endif
	else if ((error = FUNC13(vp)) == 0 &&
	    (error = FUNC3(vp, VWRITE, td->td_ucred, td)) == 0) {
		FUNC2(&vattr);
		vattr.va_size = length;
		error = FUNC4(vp, &vattr, td->td_ucred);
	}
	FUNC5(vp, 0);
	FUNC8(mp);
	FUNC10(vp, rl_cookie);
	FUNC14(vp);
	return (error);
}