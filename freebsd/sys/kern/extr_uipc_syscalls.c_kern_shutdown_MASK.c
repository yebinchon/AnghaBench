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
struct thread {TYPE_1__* td_proc; } ;
struct socket {int dummy; } ;
struct file {struct socket* f_data; } ;
struct TYPE_2__ {scalar_t__ p_osrel; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOTCONN ; 
 scalar_t__ P_OSREL_SHUTDOWN_ENOTCONN ; 
 int /*<<< orphan*/  cap_shutdown_rights ; 
 int /*<<< orphan*/  FUNC1 (struct file*,struct thread*) ; 
 int FUNC2 (struct thread*,int,int /*<<< orphan*/ *,struct file**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct socket*,int) ; 

int
FUNC4(struct thread *td, int s, int how)
{
	struct socket *so;
	struct file *fp;
	int error;

	FUNC0(s);
	error = FUNC2(td, s, &cap_shutdown_rights,
	    &fp, NULL, NULL);
	if (error == 0) {
		so = fp->f_data;
		error = FUNC3(so, how);
		/*
		 * Previous versions did not return ENOTCONN, but 0 in
		 * case the socket was not connected. Some important
		 * programs like syslogd up to r279016, 2015-02-19,
		 * still depend on this behavior.
		 */
		if (error == ENOTCONN &&
		    td->td_proc->p_osrel < P_OSREL_SHUTDOWN_ENOTCONN)
			error = 0;
		FUNC1(fp, td);
	}
	return (error);
}