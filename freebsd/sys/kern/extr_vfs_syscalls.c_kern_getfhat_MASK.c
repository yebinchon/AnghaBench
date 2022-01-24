#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct vnode {TYPE_2__* v_mount; } ;
struct thread {int dummy; } ;
struct nameidata {struct vnode* ni_vp; } ;
struct TYPE_10__ {int /*<<< orphan*/  fh_fid; int /*<<< orphan*/  fh_fsid; } ;
typedef  TYPE_3__ fhandle_t ;
typedef  int /*<<< orphan*/  fh ;
typedef  enum uio_seg { ____Placeholder_uio_seg } uio_seg ;
struct TYPE_8__ {int /*<<< orphan*/  f_fsid; } ;
struct TYPE_9__ {TYPE_1__ mnt_stat; } ;

/* Variables and functions */
 int AT_BENEATH ; 
 int AT_SYMLINK_NOFOLLOW ; 
 int AUDITVNODE1 ; 
 int BENEATH ; 
 int FOLLOW ; 
 int LOCKLEAF ; 
 int /*<<< orphan*/  LOOKUP ; 
 int /*<<< orphan*/  FUNC0 (struct nameidata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NDF_ONLY_PNBUF ; 
 int /*<<< orphan*/  FUNC1 (struct nameidata*,int /*<<< orphan*/ ,int,int,char const*,int,struct thread*) ; 
 int NOFOLLOW ; 
 int /*<<< orphan*/  PRIV_VFS_GETFH ; 
 int FUNC2 (struct vnode*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int) ; 
 int FUNC4 (TYPE_3__*,TYPE_3__*,int) ; 
 int FUNC5 (struct nameidata*) ; 
 int FUNC6 (struct thread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct vnode*) ; 

__attribute__((used)) static int
FUNC8(struct thread *td, int flags, int fd, const char *path,
    enum uio_seg pathseg, fhandle_t *fhp)
{
	struct nameidata nd;
	fhandle_t fh;
	struct vnode *vp;
	int error;

	error = FUNC6(td, PRIV_VFS_GETFH);
	if (error != 0)
		return (error);
	FUNC1(&nd, LOOKUP, ((flags & AT_SYMLINK_NOFOLLOW) != 0 ? NOFOLLOW :
	    FOLLOW) | ((flags & AT_BENEATH) != 0 ? BENEATH : 0) | LOCKLEAF |
	    AUDITVNODE1, pathseg, path, fd, td);
	error = FUNC5(&nd);
	if (error != 0)
		return (error);
	FUNC0(&nd, NDF_ONLY_PNBUF);
	vp = nd.ni_vp;
	FUNC3(&fh, sizeof(fh));
	fh.fh_fsid = vp->v_mount->mnt_stat.f_fsid;
	error = FUNC2(vp, &fh.fh_fid);
	FUNC7(vp);
	if (error == 0)
		error = FUNC4(&fh, fhp, sizeof (fh));
	return (error);
}