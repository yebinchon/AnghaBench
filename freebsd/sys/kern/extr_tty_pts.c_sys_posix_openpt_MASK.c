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
struct thread {int* td_retval; } ;
struct posix_openpt_args {int flags; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int O_ACCMODE ; 
 int O_CLOEXEC ; 
 int O_NOCTTY ; 
 int O_RDWR ; 
 int FUNC1 (struct thread*,struct file**,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct thread*,struct file*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct file*,struct thread*) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct thread*,struct file*) ; 

int
FUNC5(struct thread *td, struct posix_openpt_args *uap)
{
	int error, fd;
	struct file *fp;

	/*
	 * POSIX states it's unspecified when other flags are passed. We
	 * don't allow this.
	 */
	if (uap->flags & ~(O_RDWR|O_NOCTTY|O_CLOEXEC))
		return (EINVAL);

	error = FUNC1(td, &fp, &fd, uap->flags);
	if (error)
		return (error);

	/* Allocate the actual pseudo-TTY. */
	error = FUNC4(FUNC0(uap->flags & O_ACCMODE), td, fp);
	if (error != 0) {
		FUNC2(td, fp, fd);
		FUNC3(fp, td);
		return (error);
	}

	/* Pass it back to userspace. */
	td->td_retval[0] = fd;
	FUNC3(fp, td);

	return (0);
}