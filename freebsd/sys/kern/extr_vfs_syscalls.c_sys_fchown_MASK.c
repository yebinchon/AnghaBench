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
struct file {int dummy; } ;
struct fchown_args {int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; int /*<<< orphan*/  fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cap_fchown_rights ; 
 int /*<<< orphan*/  FUNC2 (struct file*,struct thread*) ; 
 int FUNC3 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct file**) ; 
 int FUNC4 (struct file*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct thread*) ; 

int
FUNC5(struct thread *td, struct fchown_args *uap)
{
	struct file *fp;
	int error;

	FUNC0(uap->fd);
	FUNC1(uap->uid, uap->gid);
	error = FUNC3(td, uap->fd, &cap_fchown_rights, &fp);
	if (error != 0)
		return (error);
	error = FUNC4(fp, uap->uid, uap->gid, td->td_ucred, td);
	FUNC2(fp, td);
	return (error);
}