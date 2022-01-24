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
typedef  scalar_t__ u_long ;
struct thread {int /*<<< orphan*/  td_ucred; } ;
struct linux_ioctl_args {scalar_t__ cmd; scalar_t__ arg; int /*<<< orphan*/  fd; } ;
struct file {int dummy; } ;
typedef  int /*<<< orphan*/  cap_rights_t ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_IOCTL ; 
 int ENOTSUP ; 
 scalar_t__ MRSAS_LINUX_CMD32 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct file*,struct thread*) ; 
 int FUNC2 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int FUNC3 (struct file*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct thread*) ; 

__attribute__((used)) static int
FUNC4(struct thread *p, struct linux_ioctl_args *args)
{
#if (__FreeBSD_version >= 1000000)
	cap_rights_t rights;

#endif
	struct file *fp;
	int error;
	u_long cmd = args->cmd;

	if (cmd != MRSAS_LINUX_CMD32) {
		error = ENOTSUP;
		goto END;
	}
#if (__FreeBSD_version >= 1000000)
	error = fget(p, args->fd, cap_rights_init(&rights, CAP_IOCTL), &fp);
#elif (__FreeBSD_version <= 900000)
	error = FUNC2(p, args->fd, &fp);
#else					/* For FreeBSD version greater than
					 * 9.0.0 but less than 10.0.0 */
	error = fget(p, args->fd, CAP_IOCTL, &fp);
#endif
	if (error != 0)
		goto END;

	error = FUNC3(fp, cmd, (caddr_t)args->arg, p->td_ucred, p);
	FUNC1(fp, p);
END:
	return (error);
}