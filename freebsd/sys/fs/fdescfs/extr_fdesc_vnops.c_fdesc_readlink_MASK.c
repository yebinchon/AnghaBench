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
struct vop_readlink_args {struct uio* a_uio; struct vnode* a_vp; } ;
struct vnode {scalar_t__ v_data; } ;
struct uio {int dummy; } ;
struct thread {int dummy; } ;
struct file {int f_type; struct vnode* f_vnode; } ;
struct fdescnode {int fd_fd; } ;
struct TYPE_2__ {scalar_t__ fd_type; } ;

/* Variables and functions */
#define  DTYPE_VNODE 128 
 scalar_t__ Fdesc ; 
 int LK_RETRY ; 
 int /*<<< orphan*/  M_TEMP ; 
 int FUNC0 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC1 (struct vnode*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (struct vnode*) ; 
 int /*<<< orphan*/  cap_no_rights ; 
 struct thread* curthread ; 
 int /*<<< orphan*/  FUNC3 (struct file*,struct thread*) ; 
 int FUNC4 (struct thread*,int,int /*<<< orphan*/ *,struct file**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 size_t FUNC7 (char*) ; 
 int FUNC8 (char*,size_t,struct uio*) ; 
 int FUNC9 (struct thread*,struct vnode*,char**,char**) ; 
 int /*<<< orphan*/  FUNC10 (struct vnode*,int) ; 

__attribute__((used)) static int
FUNC11(struct vop_readlink_args *va)
{
	struct vnode *vp, *vn;
	struct thread *td;
	struct uio *uio;
	struct file *fp;
	char *freepath, *fullpath;
	size_t pathlen;
	int lockflags, fd_fd;
	int error;

	freepath = NULL;
	vn = va->a_vp;
	if (FUNC2(vn)->fd_type != Fdesc)
		FUNC6("fdesc_readlink: not fdescfs link");
	fd_fd = ((struct fdescnode *)vn->v_data)->fd_fd;
	lockflags = FUNC0(vn);
	FUNC1(vn, 0);

	td = curthread;
	error = FUNC4(td, fd_fd, &cap_no_rights, &fp, NULL);
	if (error != 0)
		goto out;

	switch (fp->f_type) {
	case DTYPE_VNODE:
		vp = fp->f_vnode;
		error = FUNC9(td, vp, &fullpath, &freepath);
		break;
	default:
		fullpath = "anon_inode:[unknown]";
		break;
	}
	if (error == 0) {
		uio = va->a_uio;
		pathlen = FUNC7(fullpath);
		error = FUNC8(fullpath, pathlen, uio);
	}
	if (freepath != NULL)
		FUNC5(freepath, M_TEMP);
	FUNC3(fp, td);

out:
	FUNC10(vn, lockflags | LK_RETRY);
	return (error);
}