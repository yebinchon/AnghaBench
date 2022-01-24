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
struct sockaddr {int dummy; } ;
struct file {struct socket* f_data; } ;

/* Variables and functions */
 int AT_FDCWD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct thread*,int,struct sockaddr*) ; 
 int ECAPMODE ; 
 scalar_t__ FUNC2 (struct thread*) ; 
 scalar_t__ FUNC3 (struct thread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KTR_STRUCT ; 
 int /*<<< orphan*/  cap_bind_rights ; 
 int /*<<< orphan*/  FUNC4 (struct file*,struct thread*) ; 
 int FUNC5 (struct thread*,int,int /*<<< orphan*/ *,struct file**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct sockaddr*) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct socket*,struct sockaddr*) ; 
 int FUNC8 (struct socket*,struct sockaddr*,struct thread*) ; 
 int FUNC9 (int,struct socket*,struct sockaddr*,struct thread*) ; 

int
FUNC10(struct thread *td, int dirfd, int fd, struct sockaddr *sa)
{
	struct socket *so;
	struct file *fp;
	int error;

#ifdef CAPABILITY_MODE
	if (IN_CAPABILITY_MODE(td) && (dirfd == AT_FDCWD))
		return (ECAPMODE);
#endif

	FUNC0(fd);
	FUNC1(td, dirfd, sa);
	error = FUNC5(td, fd, &cap_bind_rights,
	    &fp, NULL, NULL);
	if (error != 0)
		return (error);
	so = fp->f_data;
#ifdef KTRACE
	if (KTRPOINT(td, KTR_STRUCT))
		ktrsockaddr(sa);
#endif
#ifdef MAC
	error = mac_socket_check_bind(td->td_ucred, so, sa);
	if (error == 0) {
#endif
		if (dirfd == AT_FDCWD)
			error = FUNC8(so, sa, td);
		else
			error = FUNC9(dirfd, so, sa, td);
#ifdef MAC
	}
#endif
	FUNC4(fp, td);
	return (error);
}