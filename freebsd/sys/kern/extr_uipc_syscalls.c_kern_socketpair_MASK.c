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
struct unpcb {int dummy; } ;
struct thread {int /*<<< orphan*/  td_ucred; } ;
struct socket {TYPE_1__* so_proto; } ;
struct file {struct socket* f_data; } ;
struct TYPE_2__ {int pr_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int) ; 
 int /*<<< orphan*/  DTYPE_SOCKET ; 
 int /*<<< orphan*/  FIONBIO ; 
 int FNONBLOCK ; 
 int FREAD ; 
 int FWRITE ; 
 int O_CLOEXEC ; 
 int PR_CONNREQUIRED ; 
 int SOCK_CLOEXEC ; 
 int SOCK_DGRAM ; 
 int SOCK_NONBLOCK ; 
 int FUNC1 (struct thread*,struct file**,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct thread*,struct file*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct file*,struct thread*) ; 
 int /*<<< orphan*/  FUNC4 (struct file*,int,int /*<<< orphan*/ ,struct socket*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct file*,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,struct thread*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  socketops ; 
 int /*<<< orphan*/  FUNC7 (struct socket*) ; 
 int FUNC8 (struct socket*,struct socket*) ; 
 int FUNC9 (int,struct socket**,int,int,int /*<<< orphan*/ ,struct thread*) ; 
 struct unpcb* FUNC10 (struct socket*) ; 
 int /*<<< orphan*/  FUNC11 (struct thread*,struct unpcb*,struct unpcb*,struct unpcb*) ; 

int
FUNC12(struct thread *td, int domain, int type, int protocol,
    int *rsv)
{
	struct file *fp1, *fp2;
	struct socket *so1, *so2;
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
	/* We might want to have a separate check for socket pairs. */
	error = mac_socket_check_create(td->td_ucred, domain, type,
	    protocol);
	if (error != 0)
		return (error);
#endif
	error = FUNC9(domain, &so1, type, protocol, td->td_ucred, td);
	if (error != 0)
		return (error);
	error = FUNC9(domain, &so2, type, protocol, td->td_ucred, td);
	if (error != 0)
		goto free1;
	/* On success extra reference to `fp1' and 'fp2' is set by falloc. */
	error = FUNC1(td, &fp1, &fd, oflag);
	if (error != 0)
		goto free2;
	rsv[0] = fd;
	fp1->f_data = so1;	/* so1 already has ref count */
	error = FUNC1(td, &fp2, &fd, oflag);
	if (error != 0)
		goto free3;
	fp2->f_data = so2;	/* so2 already has ref count */
	rsv[1] = fd;
	error = FUNC8(so1, so2);
	if (error != 0)
		goto free4;
	if (type == SOCK_DGRAM) {
		/*
		 * Datagram socket connection is asymmetric.
		 */
		 error = FUNC8(so2, so1);
		 if (error != 0)
			goto free4;
	} else if (so1->so_proto->pr_flags & PR_CONNREQUIRED) {
		struct unpcb *unp, *unp2;
		unp = FUNC10(so1);
		unp2 = FUNC10(so2);
		/* 
		 * No need to lock the unps, because the sockets are brand-new.
		 * No other threads can be using them yet
		 */
		FUNC11(td, unp, unp2, unp);
	}
	FUNC4(fp1, FREAD | FWRITE | fflag, DTYPE_SOCKET, fp1->f_data,
	    &socketops);
	FUNC4(fp2, FREAD | FWRITE | fflag, DTYPE_SOCKET, fp2->f_data,
	    &socketops);
	if ((fflag & FNONBLOCK) != 0) {
		(void) FUNC5(fp1, FIONBIO, &fflag, td->td_ucred, td);
		(void) FUNC5(fp2, FIONBIO, &fflag, td->td_ucred, td);
	}
	FUNC3(fp1, td);
	FUNC3(fp2, td);
	return (0);
free4:
	FUNC2(td, fp2, rsv[1]);
	FUNC3(fp2, td);
free3:
	FUNC2(td, fp1, rsv[0]);
	FUNC3(fp1, td);
free2:
	if (so2 != NULL)
		(void)FUNC7(so2);
free1:
	if (so1 != NULL)
		(void)FUNC7(so1);
	return (error);
}