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
struct socket {int dummy; } ;
struct file {struct socket* f_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  cap_listen_rights ; 
 int /*<<< orphan*/  FUNC1 (struct file*,struct thread*) ; 
 int FUNC2 (struct thread*,int,int /*<<< orphan*/ *,struct file**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct socket*) ; 
 int FUNC4 (struct socket*,int,struct thread*) ; 

int
FUNC5(struct thread *td, int s, int backlog)
{
	struct socket *so;
	struct file *fp;
	int error;

	FUNC0(s);
	error = FUNC2(td, s, &cap_listen_rights,
	    &fp, NULL, NULL);
	if (error == 0) {
		so = fp->f_data;
#ifdef MAC
		error = mac_socket_check_listen(td->td_ucred, so);
		if (error == 0)
#endif
			error = FUNC4(so, backlog, td);
		FUNC1(fp, td);
	}
	return (error);
}