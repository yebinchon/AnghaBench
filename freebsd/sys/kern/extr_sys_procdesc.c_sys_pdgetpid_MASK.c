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
struct thread {int dummy; } ;
struct pdgetpid_args {int /*<<< orphan*/  pidp; int /*<<< orphan*/  fd; } ;
typedef  int /*<<< orphan*/  pid_t ;
typedef  int /*<<< orphan*/  pid ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cap_pdgetpid_rights ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int
FUNC3(struct thread *td, struct pdgetpid_args *uap)
{
	pid_t pid;
	int error;

	FUNC0(uap->fd);
	error = FUNC2(td, uap->fd, &cap_pdgetpid_rights, &pid);
	if (error == 0)
		error = FUNC1(&pid, uap->pidp, sizeof(pid));
	return (error);
}