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
struct socket {int so_state; scalar_t__ so_type; int /*<<< orphan*/  so_timeo; int /*<<< orphan*/  so_vnet; int /*<<< orphan*/  so_error; struct protosw* so_proto; } ;
struct protosw {TYPE_1__* pr_usrreqs; } ;
struct TYPE_2__ {int (* pru_shutdown ) (struct socket*) ;int /*<<< orphan*/  (* pru_flush ) (struct socket*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ECONNABORTED ; 
 int EINVAL ; 
 int ENOTCONN ; 
 int SHUT_RD ; 
 int SHUT_RDWR ; 
 int SHUT_WR ; 
 scalar_t__ SOCK_DGRAM ; 
 scalar_t__ FUNC2 (struct socket*) ; 
 int /*<<< orphan*/  FUNC3 (struct socket*) ; 
 int SS_ISCONNECTED ; 
 int SS_ISCONNECTING ; 
 int SS_ISDISCONNECTING ; 
 int /*<<< orphan*/  FUNC4 (struct socket*) ; 
 int /*<<< orphan*/  FUNC5 (struct socket*) ; 
 int /*<<< orphan*/  FUNC6 (struct socket*,int) ; 
 int FUNC7 (struct socket*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int
FUNC9(struct socket *so, int how)
{
	struct protosw *pr = so->so_proto;
	int error, soerror_enotconn;

	if (!(how == SHUT_RD || how == SHUT_WR || how == SHUT_RDWR))
		return (EINVAL);

	soerror_enotconn = 0;
	if ((so->so_state &
	    (SS_ISCONNECTED | SS_ISCONNECTING | SS_ISDISCONNECTING)) == 0) {
		/*
		 * POSIX mandates us to return ENOTCONN when shutdown(2) is
		 * invoked on a datagram sockets, however historically we would
		 * actually tear socket down. This is known to be leveraged by
		 * some applications to unblock process waiting in recvXXX(2)
		 * by other process that it shares that socket with. Try to meet
		 * both backward-compatibility and POSIX requirements by forcing
		 * ENOTCONN but still asking protocol to perform pru_shutdown().
		 */
		if (so->so_type != SOCK_DGRAM && !FUNC2(so))
			return (ENOTCONN);
		soerror_enotconn = 1;
	}

	if (FUNC2(so)) {
		if (how != SHUT_WR) {
			FUNC3(so);
			so->so_error = ECONNABORTED;
			FUNC4(so);	/* unlocks so */
		}
		goto done;
	}

	FUNC1(so->so_vnet);
	if (pr->pr_usrreqs->pru_flush != NULL)
		(*pr->pr_usrreqs->pru_flush)(so, how);
	if (how != SHUT_WR)
		FUNC5(so);
	if (how != SHUT_RD) {
		error = (*pr->pr_usrreqs->pru_shutdown)(so);
		FUNC8(&so->so_timeo);
		FUNC0();
		return ((error == 0 && soerror_enotconn) ? ENOTCONN : error);
	}
	FUNC8(&so->so_timeo);
	FUNC0();

done:
	return (soerror_enotconn ? ENOTCONN : 0);
}