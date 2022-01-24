#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct thread {int /*<<< orphan*/  td_proc; int /*<<< orphan*/  td_ucred; } ;
struct TYPE_3__ {int sb_timeo; int /*<<< orphan*/  sb_flags; } ;
struct socket {int so_state; int so_error; int /*<<< orphan*/  so_timeo; TYPE_1__ so_snd; TYPE_1__ so_rcv; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
struct nbpcb {int /*<<< orphan*/  nbp_vc; int /*<<< orphan*/  nbp_rcvbuf; int /*<<< orphan*/  nbp_sndbuf; struct socket* nbp_tso; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int /*<<< orphan*/  PSOCK ; 
 int SBT_1S ; 
 int /*<<< orphan*/  SB_NOINTR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_KEEPALIVE ; 
 int /*<<< orphan*/  SO_RCV ; 
 int SS_ISCONNECTING ; 
 int /*<<< orphan*/  TCP_NODELAY ; 
 int hz ; 
 int FUNC2 (struct nbpcb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct socket*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  nb_upcall ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct thread*) ; 
 int FUNC5 (struct socket*,struct sockaddr*,struct thread*) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct socket**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct thread*) ; 
 int FUNC7 (struct socket*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct socket*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nbpcb*) ; 
 int FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int
FUNC12(struct nbpcb *nbp, struct sockaddr_in *to, struct thread *td)
{
	struct socket *so;
	int error, s;

	error = FUNC6(AF_INET, &so, SOCK_STREAM, IPPROTO_TCP,
	    td->td_ucred, td);
	if (error)
		return error;
	nbp->nbp_tso = so;
	FUNC0(&so->so_rcv);
	FUNC8(so, SO_RCV, nb_upcall, nbp);
	FUNC1(&so->so_rcv);
	so->so_rcv.sb_timeo = (5 * SBT_1S);
	so->so_snd.sb_timeo = (5 * SBT_1S);
	error = FUNC7(so, nbp->nbp_sndbuf, nbp->nbp_rcvbuf);
	if (error)
		goto bad;
	FUNC3(so, SOL_SOCKET, SO_KEEPALIVE, 1);
	FUNC3(so, IPPROTO_TCP, TCP_NODELAY, 1);
	FUNC0(&so->so_rcv);
	so->so_rcv.sb_flags &= ~SB_NOINTR;
	FUNC1(&so->so_rcv);
	FUNC0(&so->so_snd);
	so->so_snd.sb_flags &= ~SB_NOINTR;
	FUNC1(&so->so_snd);
	error = FUNC5(so, (struct sockaddr*)to, td);
	if (error)
		goto bad;
	s = FUNC9();
	while ((so->so_state & SS_ISCONNECTING) && so->so_error == 0) {
		FUNC11(&so->so_timeo, PSOCK, "nbcon", 2 * hz);
		if ((so->so_state & SS_ISCONNECTING) && so->so_error == 0 &&
			(error = FUNC2(nbp, td->td_proc)) != 0) {
			so->so_state &= ~SS_ISCONNECTING;
			FUNC10(s);
			goto bad;
		}
	}
	if (so->so_error) {
		error = so->so_error;
		so->so_error = 0;
		FUNC10(s);
		goto bad;
	}
	FUNC10(s);
	return 0;
bad:
	FUNC4(nbp->nbp_vc, td);
	return error;
}