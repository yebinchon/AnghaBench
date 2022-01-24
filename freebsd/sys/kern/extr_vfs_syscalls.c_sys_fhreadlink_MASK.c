#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vnode {int dummy; } ;
struct thread {int dummy; } ;
struct mount {int dummy; } ;
struct fhreadlink_args {scalar_t__ bufsize; int /*<<< orphan*/  buf; int /*<<< orphan*/  fhp; } ;
struct TYPE_3__ {int /*<<< orphan*/  fh_fid; int /*<<< orphan*/  fh_fsid; } ;
typedef  TYPE_1__ fhandle_t ;
typedef  int /*<<< orphan*/  fh ;

/* Variables and functions */
 int EINVAL ; 
 int ESTALE ; 
 scalar_t__ IOSIZE_MAX ; 
 int /*<<< orphan*/  LK_SHARED ; 
 int /*<<< orphan*/  PRIV_VFS_GETFH ; 
 int /*<<< orphan*/  UIO_USERSPACE ; 
 int FUNC0 (struct mount*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct vnode**) ; 
 int FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int FUNC2 (struct vnode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,struct thread*) ; 
 int FUNC3 (struct thread*,int /*<<< orphan*/ ) ; 
 struct mount* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct mount*) ; 
 int /*<<< orphan*/  FUNC6 (struct vnode*) ; 

int
FUNC7(struct thread *td, struct fhreadlink_args *uap)
{
	fhandle_t fh;
	struct mount *mp;
	struct vnode *vp;
	int error;

	error = FUNC3(td, PRIV_VFS_GETFH);
	if (error != 0)
		return (error);
	if (uap->bufsize > IOSIZE_MAX)
		return (EINVAL);
	error = FUNC1(uap->fhp, &fh, sizeof(fh));
	if (error != 0)
		return (error);
	if ((mp = FUNC4(&fh.fh_fsid)) == NULL)
		return (ESTALE);
	error = FUNC0(mp, &fh.fh_fid, LK_SHARED, &vp);
	FUNC5(mp);
	if (error != 0)
		return (error);
	error = FUNC2(vp, uap->buf, UIO_USERSPACE, uap->bufsize, td);
	FUNC6(vp);
	return (error);
}