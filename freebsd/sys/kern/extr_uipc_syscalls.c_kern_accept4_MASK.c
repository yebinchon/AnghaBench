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
typedef  int u_int ;
struct thread {int* td_retval; int /*<<< orphan*/  td_ucred; } ;
struct TYPE_2__ {int /*<<< orphan*/  si_note; } ;
struct socket {int so_options; int /*<<< orphan*/  so_sigio; TYPE_1__ so_rdsel; } ;
struct sockaddr {scalar_t__ sa_len; } ;
struct filecaps {int dummy; } ;
struct file {struct socket* f_data; } ;
typedef  scalar_t__ socklen_t ;
typedef  scalar_t__ pid_t ;

/* Variables and functions */
 int ACCEPT4_INHERIT ; 
 int /*<<< orphan*/  AT_FDCWD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct thread*,int /*<<< orphan*/ ,struct sockaddr*) ; 
 int /*<<< orphan*/  DTYPE_SOCKET ; 
 int EINVAL ; 
 int FASYNC ; 
 int /*<<< orphan*/  FIOASYNC ; 
 int /*<<< orphan*/  FIONBIO ; 
 int FNONBLOCK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct thread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KTR_STRUCT ; 
 int /*<<< orphan*/  M_SONAME ; 
 int /*<<< orphan*/  O_CLOEXEC ; 
 int SOCK_CLOEXEC ; 
 int /*<<< orphan*/  FUNC4 (struct socket*) ; 
 int SOCK_NONBLOCK ; 
 int /*<<< orphan*/  FUNC5 (struct socket*) ; 
 int /*<<< orphan*/  FUNC6 (struct socket*) ; 
 int SO_ACCEPTCONN ; 
 int /*<<< orphan*/  cap_accept_rights ; 
 int FUNC7 (struct thread*,struct file**,int*,int /*<<< orphan*/ ,struct filecaps*) ; 
 int /*<<< orphan*/  FUNC8 (struct thread*,struct file*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct file*,struct thread*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct filecaps*) ; 
 int /*<<< orphan*/  FUNC12 (struct file*,int,int /*<<< orphan*/ ,struct socket*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct file*,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,struct thread*) ; 
 int /*<<< orphan*/  FUNC14 (struct sockaddr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,int /*<<< orphan*/ *) ; 
 int FUNC16 (struct thread*,int,int /*<<< orphan*/ *,struct file**,int*,struct filecaps*) ; 
 int /*<<< orphan*/  FUNC17 (struct sockaddr*) ; 
 int FUNC18 (int /*<<< orphan*/ ,struct socket*) ; 
 int FUNC19 (struct socket*,struct sockaddr**) ; 
 int /*<<< orphan*/  socketops ; 
 int FUNC20 (struct socket*,struct socket**,int) ; 

int
FUNC21(struct thread *td, int s, struct sockaddr **name,
    socklen_t *namelen, int flags, struct file **fp)
{
	struct file *headfp, *nfp = NULL;
	struct sockaddr *sa = NULL;
	struct socket *head, *so;
	struct filecaps fcaps;
	u_int fflag;
	pid_t pgid;
	int error, fd, tmp;

	if (name != NULL)
		*name = NULL;

	FUNC0(s);
	error = FUNC16(td, s, &cap_accept_rights,
	    &headfp, &fflag, &fcaps);
	if (error != 0)
		return (error);
	head = headfp->f_data;
	if ((head->so_options & SO_ACCEPTCONN) == 0) {
		error = EINVAL;
		goto done;
	}
#ifdef MAC
	error = mac_socket_check_accept(td->td_ucred, head);
	if (error != 0)
		goto done;
#endif
	error = FUNC7(td, &nfp, &fd,
	    (flags & SOCK_CLOEXEC) ? O_CLOEXEC : 0, &fcaps);
	if (error != 0)
		goto done;
	FUNC4(head);
	if (!FUNC6(head)) {
		FUNC5(head);
		error = EINVAL;
		goto noconnection;
	}

	error = FUNC20(head, &so, flags);
	if (error != 0)
		goto noconnection;

	/* An extra reference on `nfp' has been held for us by falloc(). */
	td->td_retval[0] = fd;

	/* Connection has been removed from the listen queue. */
	FUNC2(&head->so_rdsel.si_note, 0);

	if (flags & ACCEPT4_INHERIT) {
		pgid = FUNC10(&head->so_sigio);
		if (pgid != 0)
			FUNC15(pgid, &so->so_sigio);
	} else {
		fflag &= ~(FNONBLOCK | FASYNC);
		if (flags & SOCK_NONBLOCK)
			fflag |= FNONBLOCK;
	}

	FUNC12(nfp, fflag, DTYPE_SOCKET, so, &socketops);
	/* Sync socket nonblocking/async state with file flags */
	tmp = fflag & FNONBLOCK;
	(void) FUNC13(nfp, FIONBIO, &tmp, td->td_ucred, td);
	tmp = fflag & FASYNC;
	(void) FUNC13(nfp, FIOASYNC, &tmp, td->td_ucred, td);
	error = FUNC19(so, &sa);
	if (error != 0)
		goto noconnection;
	if (sa == NULL) {
		if (name)
			*namelen = 0;
		goto done;
	}
	FUNC1(td, AT_FDCWD, sa);
	if (name) {
		/* check sa_len before it is destroyed */
		if (*namelen > sa->sa_len)
			*namelen = sa->sa_len;
#ifdef KTRACE
		if (KTRPOINT(td, KTR_STRUCT))
			ktrsockaddr(sa);
#endif
		*name = sa;
		sa = NULL;
	}
noconnection:
	FUNC14(sa, M_SONAME);

	/*
	 * close the new descriptor, assuming someone hasn't ripped it
	 * out from under us.
	 */
	if (error != 0)
		FUNC8(td, nfp, fd);

	/*
	 * Release explicitly held references before returning.  We return
	 * a reference on nfp to the caller on success if they request it.
	 */
done:
	if (nfp == NULL)
		FUNC11(&fcaps);
	if (fp != NULL) {
		if (error == 0) {
			*fp = nfp;
			nfp = NULL;
		} else
			*fp = NULL;
	}
	if (nfp != NULL)
		FUNC9(nfp, td);
	FUNC9(headfp, td);
	return (error);
}