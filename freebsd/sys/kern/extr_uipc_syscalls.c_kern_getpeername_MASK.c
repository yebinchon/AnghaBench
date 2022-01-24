#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct thread {int dummy; } ;
struct socket {int so_state; TYPE_2__* so_proto; int /*<<< orphan*/  so_vnet; } ;
struct sockaddr {int /*<<< orphan*/  sa_len; } ;
struct file {struct socket* f_data; } ;
typedef  scalar_t__ socklen_t ;
struct TYPE_4__ {TYPE_1__* pr_usrreqs; } ;
struct TYPE_3__ {int (* pru_peeraddr ) (struct socket*,struct sockaddr**) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int ENOTCONN ; 
 scalar_t__ FUNC3 (struct thread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KTR_STRUCT ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_SONAME ; 
 int SS_ISCONFIRMING ; 
 int SS_ISCONNECTED ; 
 int /*<<< orphan*/  cap_getpeername_rights ; 
 int /*<<< orphan*/  FUNC5 (struct file*,struct thread*) ; 
 int /*<<< orphan*/  FUNC6 (struct sockaddr*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct thread*,int,int /*<<< orphan*/ *,struct file**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct sockaddr*) ; 
 int FUNC9 (struct socket*,struct sockaddr**) ; 

int
FUNC10(struct thread *td, int fd, struct sockaddr **sa,
    socklen_t *alen)
{
	struct socket *so;
	struct file *fp;
	socklen_t len;
	int error;

	FUNC0(fd);
	error = FUNC7(td, fd, &cap_getpeername_rights,
	    &fp, NULL, NULL);
	if (error != 0)
		return (error);
	so = fp->f_data;
	if ((so->so_state & (SS_ISCONNECTED|SS_ISCONFIRMING)) == 0) {
		error = ENOTCONN;
		goto done;
	}
	*sa = NULL;
	FUNC2(so->so_vnet);
	error = (*so->so_proto->pr_usrreqs->pru_peeraddr)(so, sa);
	FUNC1();
	if (error != 0)
		goto bad;
	if (*sa == NULL)
		len = 0;
	else
		len = FUNC4(*alen, (*sa)->sa_len);
	*alen = len;
#ifdef KTRACE
	if (KTRPOINT(td, KTR_STRUCT))
		ktrsockaddr(*sa);
#endif
bad:
	if (error != 0 && *sa != NULL) {
		FUNC6(*sa, M_SONAME);
		*sa = NULL;
	}
done:
	FUNC5(fp, td);
	return (error);
}