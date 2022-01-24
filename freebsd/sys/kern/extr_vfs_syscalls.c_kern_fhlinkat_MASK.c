#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct vnode {int dummy; } ;
struct thread {int dummy; } ;
struct mount {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  fh_fid; int /*<<< orphan*/  fh_fsid; } ;
typedef  TYPE_1__ fhandle_t ;
typedef  int /*<<< orphan*/  fh ;
typedef  enum uio_seg { ____Placeholder_uio_seg } uio_seg ;

/* Variables and functions */
 int EAGAIN ; 
 int ESTALE ; 
 int /*<<< orphan*/  LK_SHARED ; 
 int /*<<< orphan*/  PRIV_VFS_GETFH ; 
 int FUNC0 (struct mount*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct vnode**) ; 
 int /*<<< orphan*/  FUNC1 (struct vnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (TYPE_1__*,TYPE_1__*,int) ; 
 int FUNC4 (struct thread*,struct vnode*,int,char const*,int) ; 
 int FUNC5 (struct thread*,int /*<<< orphan*/ ) ; 
 struct mount* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct mount*) ; 

__attribute__((used)) static int
FUNC8(struct thread *td, int fd, const char *path,
    enum uio_seg pathseg, fhandle_t *fhp)
{
	fhandle_t fh;
	struct mount *mp;
	struct vnode *vp;
	int error;

	error = FUNC5(td, PRIV_VFS_GETFH);
	if (error != 0)
		return (error);
	error = FUNC3(fhp, &fh, sizeof(fh));
	if (error != 0)
		return (error);
	do {
		FUNC2();
		if ((mp = FUNC6(&fh.fh_fsid)) == NULL)
			return (ESTALE);
		error = FUNC0(mp, &fh.fh_fid, LK_SHARED, &vp);
		FUNC7(mp);
		if (error != 0)
			return (error);
		FUNC1(vp, 0);
	} while ((error = FUNC4(td, vp, fd, path, pathseg)) == EAGAIN);
	return (error);
}