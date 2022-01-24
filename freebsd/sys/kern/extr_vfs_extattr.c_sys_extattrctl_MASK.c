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
struct vnode {struct mount* v_mount; } ;
struct thread {int dummy; } ;
struct nameidata {struct vnode* ni_vp; } ;
struct mount {int dummy; } ;
struct extattrctl_args {int /*<<< orphan*/ * attrname; int /*<<< orphan*/  attrnamespace; int /*<<< orphan*/  cmd; int /*<<< orphan*/ * path; int /*<<< orphan*/ * filename; } ;

/* Variables and functions */
 int AUDITVNODE1 ; 
 int AUDITVNODE2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int EXTATTR_MAXNAMELEN ; 
 int FOLLOW ; 
 int /*<<< orphan*/  LK_EXCLUSIVE ; 
 int LOCKLEAF ; 
 int /*<<< orphan*/  LOOKUP ; 
 int /*<<< orphan*/  FUNC3 (struct nameidata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NDF_NO_VP_RELE ; 
 int /*<<< orphan*/  NDF_NO_VP_UNLOCK ; 
 int /*<<< orphan*/  FUNC4 (struct nameidata*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct thread*) ; 
 int PCATCH ; 
 int /*<<< orphan*/  UIO_USERSPACE ; 
 int FUNC5 (struct mount*,int /*<<< orphan*/ ,struct vnode*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct vnode*,int /*<<< orphan*/ ) ; 
 int V_WAIT ; 
 int FUNC7 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct nameidata*) ; 
 int FUNC9 (struct mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct mount*) ; 
 int /*<<< orphan*/  FUNC11 (struct mount*) ; 
 int FUNC12 (struct vnode*,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct vnode*,struct mount**,int) ; 
 int /*<<< orphan*/  FUNC14 (struct vnode*) ; 

int
FUNC15(struct thread *td, struct extattrctl_args *uap)
{
	struct vnode *filename_vp;
	struct nameidata nd;
	struct mount *mp, *mp_writable;
	char attrname[EXTATTR_MAXNAMELEN];
	int error;

	FUNC0(uap->cmd);
	FUNC2(uap->attrnamespace);
	/*
	 * uap->attrname is not always defined.  We check again later when we
	 * invoke the VFS call so as to pass in NULL there if needed.
	 */
	if (uap->attrname != NULL) {
		error = FUNC7(uap->attrname, attrname, EXTATTR_MAXNAMELEN,
		    NULL);
		if (error)
			return (error);
	}
	FUNC1(attrname);

	mp = NULL;
	filename_vp = NULL;
	if (uap->filename != NULL) {
		FUNC4(&nd, LOOKUP, FOLLOW | AUDITVNODE2,
		    UIO_USERSPACE, uap->filename, td);
		error = FUNC8(&nd);
		if (error)
			return (error);
		filename_vp = nd.ni_vp;
		FUNC3(&nd, NDF_NO_VP_RELE);
	}

	/* uap->path is always defined. */
	FUNC4(&nd, LOOKUP, FOLLOW | LOCKLEAF | AUDITVNODE1,
	    UIO_USERSPACE, uap->path, td);
	error = FUNC8(&nd);
	if (error)
		goto out;
	mp = nd.ni_vp->v_mount;
	error = FUNC9(mp, 0);
	if (error) {
		FUNC3(&nd, 0);
		mp = NULL;
		goto out;
	}
	FUNC6(nd.ni_vp, 0);
	error = FUNC13(nd.ni_vp, &mp_writable, V_WAIT | PCATCH);
	FUNC3(&nd, NDF_NO_VP_UNLOCK);
	if (error)
		goto out;
	if (filename_vp != NULL) {
		/*
		 * uap->filename is not always defined.  If it is,
		 * grab a vnode lock, which VFS_EXTATTRCTL() will
		 * later release.
		 */
		error = FUNC12(filename_vp, LK_EXCLUSIVE);
		if (error) {
			FUNC11(mp_writable);
			goto out;
		}
	}

	error = FUNC5(mp, uap->cmd, filename_vp, uap->attrnamespace,
	    uap->attrname != NULL ? attrname : NULL);

	FUNC11(mp_writable);
out:
	if (mp != NULL)
		FUNC10(mp);

	/*
	 * VFS_EXTATTRCTL will have unlocked, but not de-ref'd, filename_vp,
	 * so vrele it if it is defined.
	 */
	if (filename_vp != NULL)
		FUNC14(filename_vp);
	return (error);
}