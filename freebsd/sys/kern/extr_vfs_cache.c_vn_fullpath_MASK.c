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
struct vnode {int dummy; } ;
struct thread {TYPE_1__* td_proc; } ;
struct filedesc {struct vnode* fd_rdir; } ;
struct TYPE_2__ {struct filedesc* p_fd; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct filedesc*) ; 
 int /*<<< orphan*/  FUNC1 (struct filedesc*) ; 
 int /*<<< orphan*/  MAXPATHLEN ; 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  M_WAITOK ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  disablefullpath ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct thread*,struct vnode*,struct vnode*,char*,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC7 (struct vnode*) ; 

int
FUNC8(struct thread *td, struct vnode *vn, char **retbuf, char **freebuf)
{
	char *buf;
	struct filedesc *fdp;
	struct vnode *rdir;
	int error;

	if (FUNC2(disablefullpath))
		return (ENODEV);
	if (FUNC2(vn == NULL))
		return (EINVAL);

	buf = FUNC4(MAXPATHLEN, M_TEMP, M_WAITOK);
	fdp = td->td_proc->p_fd;
	FUNC0(fdp);
	rdir = fdp->fd_rdir;
	FUNC6(rdir);
	FUNC1(fdp);
	error = FUNC5(td, vn, rdir, buf, retbuf, MAXPATHLEN);
	FUNC7(rdir);

	if (!error)
		*freebuf = buf;
	else
		FUNC3(buf, M_TEMP);
	return (error);
}