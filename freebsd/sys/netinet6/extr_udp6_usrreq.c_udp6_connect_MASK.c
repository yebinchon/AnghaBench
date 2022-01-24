#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  void* u_char ;
struct thread {int /*<<< orphan*/  td_ucred; } ;
struct socket {TYPE_1__* so_proto; } ;
struct sockaddr_in6 {int /*<<< orphan*/  sin6_addr; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_addr; } ;
struct sockaddr {int dummy; } ;
struct inpcbinfo {int dummy; } ;
struct TYPE_6__ {scalar_t__ s_addr; } ;
struct TYPE_5__ {scalar_t__ s_addr; } ;
struct inpcb {int inp_flags; int inp_vflag; scalar_t__ inp_lport; int /*<<< orphan*/  in6p_laddr; int /*<<< orphan*/  in6p_faddr; TYPE_3__ inp_laddr; TYPE_2__ inp_faddr; } ;
struct TYPE_4__ {int /*<<< orphan*/  pr_protocol; } ;

/* Variables and functions */
 int EAFNOSUPPORT ; 
 int EINVAL ; 
 int EISCONN ; 
 int IN6P_IPV6_V6ONLY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ INADDR_ANY ; 
 int /*<<< orphan*/  FUNC2 (struct inpcbinfo*) ; 
 int /*<<< orphan*/  FUNC3 (struct inpcbinfo*) ; 
 int INP_IPV4 ; 
 int INP_IPV6 ; 
 int /*<<< orphan*/  FUNC4 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC5 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int FUNC7 (struct inpcb*,struct sockaddr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sockaddr_in*,struct sockaddr_in6*) ; 
 int FUNC9 (struct inpcb*,struct sockaddr*,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct socket*) ; 
 struct inpcb* FUNC13 (struct socket*) ; 
 struct inpcbinfo* FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC15(struct socket *so, struct sockaddr *nam, struct thread *td)
{
	struct inpcb *inp;
	struct inpcbinfo *pcbinfo;
	struct sockaddr_in6 *sin6;
	int error;
	u_char vflagsav;

	pcbinfo = FUNC14(so->so_proto->pr_protocol);
	inp = FUNC13(so);
	sin6 = (struct sockaddr_in6 *)nam;
	FUNC6(inp != NULL, ("udp6_connect: inp == NULL"));

	/*
	 * XXXRW: Need to clarify locking of v4/v6 flags.
	 */
	FUNC4(inp);
#ifdef INET
	if (IN6_IS_ADDR_V4MAPPED(&sin6->sin6_addr)) {
		struct sockaddr_in sin;

		if ((inp->inp_flags & IN6P_IPV6_V6ONLY) != 0) {
			error = EINVAL;
			goto out;
		}
		if ((inp->inp_vflag & INP_IPV4) == 0) {
			error = EAFNOSUPPORT;
			goto out;
		}
		if (inp->inp_faddr.s_addr != INADDR_ANY) {
			error = EISCONN;
			goto out;
		}
		in6_sin6_2_sin(&sin, sin6);
		error = prison_remote_ip4(td->td_ucred, &sin.sin_addr);
		if (error != 0)
			goto out;
		vflagsav = inp->inp_vflag;
		inp->inp_vflag |= INP_IPV4;
		inp->inp_vflag &= ~INP_IPV6;
		INP_HASH_WLOCK(pcbinfo);
		error = in_pcbconnect(inp, (struct sockaddr *)&sin,
		    td->td_ucred);
		INP_HASH_WUNLOCK(pcbinfo);
		/*
		 * If connect succeeds, mark socket as connected. If
		 * connect fails and socket is unbound, reset inp_vflag
		 * field.
		 */
		if (error == 0)
			soisconnected(so);
		else if (inp->inp_laddr.s_addr == INADDR_ANY &&
		    inp->inp_lport == 0)
			inp->inp_vflag = vflagsav;
		goto out;
	} else {
		if ((inp->inp_vflag & INP_IPV6) == 0) {
			error = EAFNOSUPPORT;
			goto out;
		}
	}
#endif
	if (!FUNC0(&inp->in6p_faddr)) {
		error = EISCONN;
		goto out;
	}
	error = FUNC11(td->td_ucred, &sin6->sin6_addr);
	if (error != 0)
		goto out;
	vflagsav = inp->inp_vflag;
	inp->inp_vflag &= ~INP_IPV4;
	inp->inp_vflag |= INP_IPV6;
	FUNC2(pcbinfo);
	error = FUNC7(inp, nam, td->td_ucred);
	FUNC3(pcbinfo);
	/*
	 * If connect succeeds, mark socket as connected. If
	 * connect fails and socket is unbound, reset inp_vflag
	 * field.
	 */
	if (error == 0)
		FUNC12(so);
	else if (FUNC0(&inp->in6p_laddr) &&
	    inp->inp_lport == 0)
		inp->inp_vflag = vflagsav;
out:
	FUNC5(inp);
	return (error);
}