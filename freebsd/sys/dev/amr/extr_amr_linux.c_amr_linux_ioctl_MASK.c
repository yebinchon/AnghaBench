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
struct thread {int /*<<< orphan*/  td_ucred; } ;
struct linux_ioctl_args {scalar_t__ arg; int /*<<< orphan*/  cmd; int /*<<< orphan*/  fd; } ;
struct file {int dummy; } ;
typedef  int /*<<< orphan*/  cap_rights_t ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_IOCTL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct file*,struct thread*) ; 
 int FUNC2 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct file**) ; 
 int FUNC3 (struct file*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct thread*) ; 

__attribute__((used)) static int
FUNC4(struct thread *p, struct linux_ioctl_args *args)
{
	cap_rights_t rights;
	struct file *fp;
	int error;

	error = FUNC2(p, args->fd, FUNC0(&rights, CAP_IOCTL), &fp);
	if (error != 0)
		return (error);
	error = FUNC3(fp, args->cmd, (caddr_t)args->arg, p->td_ucred, p);
	FUNC1(fp, p);
	return (error);
}