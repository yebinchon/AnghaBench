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
struct thread {int* td_retval; int /*<<< orphan*/  td_ucred; } ;
struct socket {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int) ; 
 int /*<<< orphan*/  DTYPE_SOCKET ; 
 int /*<<< orphan*/  FIONBIO ; 
 int FNONBLOCK ; 
 int FREAD ; 
 int FWRITE ; 
 int O_CLOEXEC ; 
 int SOCK_CLOEXEC ; 
 int SOCK_NONBLOCK ; 
 int FUNC1 (struct thread*,struct file**,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct thread*,struct file*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct file*,struct thread*) ; 
 int /*<<< orphan*/  FUNC4 (struct file*,int,int /*<<< orphan*/ ,struct socket*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct file*,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,struct thread*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  socketops ; 
 int FUNC7 (int,struct socket**,int,int,int /*<<< orphan*/ ,struct thread*) ; 

int
FUNC8(struct thread *td, int domain, int type, int protocol)
{
	struct socket *so;
	struct file *fp;
	int fd, error, oflag, fflag;

	FUNC0(domain, type, protocol);

	oflag = 0;
	fflag = 0;
	if ((type & SOCK_CLOEXEC) != 0) {
		type &= ~SOCK_CLOEXEC;
		oflag |= O_CLOEXEC;
	}
	if ((type & SOCK_NONBLOCK) != 0) {
		type &= ~SOCK_NONBLOCK;
		fflag |= FNONBLOCK;
	}

#ifdef MAC
	error = mac_socket_check_create(td->td_ucred, domain, type, protocol);
	if (error != 0)
		return (error);
#endif
	error = FUNC1(td, &fp, &fd, oflag);
	if (error != 0)
		return (error);
	/* An extra reference on `fp' has been held for us by falloc(). */
	error = FUNC7(domain, &so, type, protocol, td->td_ucred, td);
	if (error != 0) {
		FUNC2(td, fp, fd);
	} else {
		FUNC4(fp, FREAD | FWRITE | fflag, DTYPE_SOCKET, so, &socketops);
		if ((fflag & FNONBLOCK) != 0)
			(void) FUNC5(fp, FIONBIO, &fflag, td->td_ucred, td);
		td->td_retval[0] = fd;
	}
	FUNC3(fp, td);
	return (error);
}