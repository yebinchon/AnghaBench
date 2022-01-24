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
struct uio {scalar_t__ uio_offset; struct thread* uio_td; } ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct file {int f_flag; scalar_t__ f_nextoff; int /*<<< orphan*/  f_cred; struct vnode* f_vnode; } ;
typedef  scalar_t__ off_t ;

/* Variables and functions */
 int FNONBLOCK ; 
 int FOF_OFFSET ; 
 int IO_DIRECT ; 
 int IO_NDELAY ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int LK_RETRY ; 
 int LK_SHARED ; 
 int O_DIRECT ; 
 int /*<<< orphan*/  POSIX_FADV_DONTNEED ; 
#define  POSIX_FADV_NOREUSE 131 
#define  POSIX_FADV_NORMAL 130 
#define  POSIX_FADV_RANDOM 129 
#define  POSIX_FADV_SEQUENTIAL 128 
 int FUNC1 (struct vnode*,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct vnode*,struct uio*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vnode*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct file*,struct uio*) ; 
 int FUNC5 (struct ucred*,int /*<<< orphan*/ ,struct vnode*) ; 
 int FUNC6 (struct uio*,struct file*) ; 
 int /*<<< orphan*/  FUNC7 (struct vnode*,int) ; 

__attribute__((used)) static int
FUNC8(struct file *fp, struct uio *uio, struct ucred *active_cred, int flags,
    struct thread *td)
{
	struct vnode *vp;
	off_t orig_offset;
	int error, ioflag;
	int advice;

	FUNC0(uio->uio_td == td, ("uio_td %p is not td %p",
	    uio->uio_td, td));
	FUNC0(flags & FOF_OFFSET, ("No FOF_OFFSET"));
	vp = fp->f_vnode;
	ioflag = 0;
	if (fp->f_flag & FNONBLOCK)
		ioflag |= IO_NDELAY;
	if (fp->f_flag & O_DIRECT)
		ioflag |= IO_DIRECT;
	advice = FUNC4(fp, uio);
	FUNC7(vp, LK_SHARED | LK_RETRY);

	switch (advice) {
	case POSIX_FADV_NORMAL:
	case POSIX_FADV_SEQUENTIAL:
	case POSIX_FADV_NOREUSE:
		ioflag |= FUNC6(uio, fp);
		break;
	case POSIX_FADV_RANDOM:
		/* Disable read-ahead for random I/O. */
		break;
	}
	orig_offset = uio->uio_offset;

#ifdef MAC
	error = mac_vnode_check_read(active_cred, fp->f_cred, vp);
	if (error == 0)
#endif
		error = FUNC2(vp, uio, ioflag, fp->f_cred);
	fp->f_nextoff = uio->uio_offset;
	FUNC3(vp, 0);
	if (error == 0 && advice == POSIX_FADV_NOREUSE &&
	    orig_offset != uio->uio_offset)
		/*
		 * Use POSIX_FADV_DONTNEED to flush pages and buffers
		 * for the backing file after a POSIX_FADV_NOREUSE
		 * read(2).
		 */
		error = FUNC1(vp, orig_offset, uio->uio_offset - 1,
		    POSIX_FADV_DONTNEED);
	return (error);
}