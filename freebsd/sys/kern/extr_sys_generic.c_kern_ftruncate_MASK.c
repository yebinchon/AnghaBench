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
struct thread {int /*<<< orphan*/  td_ucred; int /*<<< orphan*/  td_proc; } ;
struct file {int f_flag; } ;
typedef  int /*<<< orphan*/  off_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct file*) ; 
 int EINVAL ; 
 int FWRITE ; 
 int /*<<< orphan*/  cap_ftruncate_rights ; 
 int /*<<< orphan*/  FUNC2 (struct file*,struct thread*) ; 
 int FUNC3 (struct thread*,int,int /*<<< orphan*/ *,struct file**) ; 
 int FUNC4 (struct file*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct thread*) ; 

int
FUNC5(struct thread *td, int fd, off_t length)
{
	struct file *fp;
	int error;

	FUNC0(fd);
	if (length < 0)
		return (EINVAL);
	error = FUNC3(td, fd, &cap_ftruncate_rights, &fp);
	if (error)
		return (error);
	FUNC1(td->td_proc, fp);
	if (!(fp->f_flag & FWRITE)) {
		FUNC2(fp, td);
		return (EINVAL);
	}
	error = FUNC4(fp, length, td->td_ucred, td);
	FUNC2(fp, td);
	return (error);
}