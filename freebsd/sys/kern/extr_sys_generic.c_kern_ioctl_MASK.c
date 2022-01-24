#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u_long ;
struct thread {int /*<<< orphan*/  td_ucred; TYPE_1__* td_proc; } ;
struct filedesc {TYPE_2__* fd_ofiles; } ;
struct file {int f_flag; } ;
typedef  void* caddr_t ;
struct TYPE_4__ {int /*<<< orphan*/  fde_flags; } ;
struct TYPE_3__ {struct filedesc* p_fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int EBADF ; 
 int /*<<< orphan*/  FASYNC ; 
 int /*<<< orphan*/  FUNC2 (struct filedesc*) ; 
 int /*<<< orphan*/  FUNC3 (struct filedesc*) ; 
 int /*<<< orphan*/  FUNC4 (struct filedesc*) ; 
 int /*<<< orphan*/  FUNC5 (struct filedesc*) ; 
 int /*<<< orphan*/  FUNC6 (struct filedesc*) ; 
#define  FIOASYNC 133 
#define  FIOCLEX 132 
#define  FIONBIO 131 
#define  FIONCLEX 130 
 int /*<<< orphan*/  FNONBLOCK ; 
 int FREAD ; 
 int FWRITE ; 
#define  LA_SLOCKED 129 
 int LA_UNLOCKED ; 
#define  LA_XLOCKED 128 
 int /*<<< orphan*/  UF_EXCLOSE ; 
 int /*<<< orphan*/  FUNC7 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct filedesc*,int,int) ; 
 int /*<<< orphan*/  cap_ioctl_rights ; 
 int /*<<< orphan*/  FUNC10 (struct file*,struct thread*) ; 
 int FUNC11 (struct thread*,int,int /*<<< orphan*/ *,struct file**) ; 
 struct file* FUNC12 (struct filedesc*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct file*) ; 
 int FUNC14 (struct file*,int,void*,int /*<<< orphan*/ ,struct thread*) ; 

int
FUNC15(struct thread *td, int fd, u_long com, caddr_t data)
{
	struct file *fp;
	struct filedesc *fdp;
	int error, tmp, locked;

	FUNC1(fd);
	FUNC0(com);

	fdp = td->td_proc->p_fd;

	switch (com) {
	case FIONCLEX:
	case FIOCLEX:
		FUNC5(fdp);
		locked = LA_XLOCKED;
		break;
	default:
#ifdef CAPABILITIES
		FILEDESC_SLOCK(fdp);
		locked = LA_SLOCKED;
#else
		locked = LA_UNLOCKED;
#endif
		break;
	}

#ifdef CAPABILITIES
	if ((fp = fget_locked(fdp, fd)) == NULL) {
		error = EBADF;
		goto out;
	}
	if ((error = cap_ioctl_check(fdp, fd, com)) != 0) {
		fp = NULL;	/* fhold() was not called yet */
		goto out;
	}
	if (!fhold(fp)) {
		error = EBADF;
		fp = NULL;
		goto out;
	}
	if (locked == LA_SLOCKED) {
		FILEDESC_SUNLOCK(fdp);
		locked = LA_UNLOCKED;
	}
#else
	error = FUNC11(td, fd, &cap_ioctl_rights, &fp);
	if (error != 0) {
		fp = NULL;
		goto out;
	}
#endif
	if ((fp->f_flag & (FREAD | FWRITE)) == 0) {
		error = EBADF;
		goto out;
	}

	switch (com) {
	case FIONCLEX:
		fdp->fd_ofiles[fd].fde_flags &= ~UF_EXCLOSE;
		goto out;
	case FIOCLEX:
		fdp->fd_ofiles[fd].fde_flags |= UF_EXCLOSE;
		goto out;
	case FIONBIO:
		if ((tmp = *(int *)data))
			FUNC8(&fp->f_flag, FNONBLOCK);
		else
			FUNC7(&fp->f_flag, FNONBLOCK);
		data = (void *)&tmp;
		break;
	case FIOASYNC:
		if ((tmp = *(int *)data))
			FUNC8(&fp->f_flag, FASYNC);
		else
			FUNC7(&fp->f_flag, FASYNC);
		data = (void *)&tmp;
		break;
	}

	error = FUNC14(fp, com, data, td->td_ucred, td);
out:
	switch (locked) {
	case LA_XLOCKED:
		FUNC6(fdp);
		break;
#ifdef CAPABILITIES
	case LA_SLOCKED:
		FILEDESC_SUNLOCK(fdp);
		break;
#endif
	default:
		FUNC4(fdp);
		break;
	}
	if (fp != NULL)
		FUNC10(fp, td);
	return (error);
}