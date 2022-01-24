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
typedef  int /*<<< orphan*/  u_char ;
struct thread {int /*<<< orphan*/  td_ucred; } ;
struct socket {TYPE_1__* so_proto; } ;
struct sockaddr_in6 {int /*<<< orphan*/  sin6_addr; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
struct inpcbinfo {int dummy; } ;
struct inpcb {int inp_flags; int /*<<< orphan*/  inp_vflag; } ;
struct TYPE_2__ {int /*<<< orphan*/  pr_protocol; } ;

/* Variables and functions */
 int IN6P_IPV6_V6ONLY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct inpcbinfo*) ; 
 int /*<<< orphan*/  FUNC3 (struct inpcbinfo*) ; 
 int /*<<< orphan*/  INP_IPV4 ; 
 int /*<<< orphan*/  INP_IPV6 ; 
 int /*<<< orphan*/  FUNC4 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC5 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int FUNC7 (struct inpcb*,struct sockaddr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sockaddr_in*,struct sockaddr_in6*) ; 
 int FUNC9 (struct inpcb*,struct sockaddr*,int /*<<< orphan*/ ) ; 
 struct inpcb* FUNC10 (struct socket*) ; 
 struct inpcbinfo* FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC12(struct socket *so, struct sockaddr *nam, struct thread *td)
{
	struct inpcb *inp;
	struct inpcbinfo *pcbinfo;
	int error;
	u_char vflagsav;

	pcbinfo = FUNC11(so->so_proto->pr_protocol);
	inp = FUNC10(so);
	FUNC6(inp != NULL, ("udp6_bind: inp == NULL"));

	FUNC4(inp);
	FUNC2(pcbinfo);
	vflagsav = inp->inp_vflag;
	inp->inp_vflag &= ~INP_IPV4;
	inp->inp_vflag |= INP_IPV6;
	if ((inp->inp_flags & IN6P_IPV6_V6ONLY) == 0) {
		struct sockaddr_in6 *sin6_p;

		sin6_p = (struct sockaddr_in6 *)nam;

		if (FUNC0(&sin6_p->sin6_addr))
			inp->inp_vflag |= INP_IPV4;
#ifdef INET
		else if (IN6_IS_ADDR_V4MAPPED(&sin6_p->sin6_addr)) {
			struct sockaddr_in sin;

			in6_sin6_2_sin(&sin, sin6_p);
			inp->inp_vflag |= INP_IPV4;
			inp->inp_vflag &= ~INP_IPV6;
			error = in_pcbbind(inp, (struct sockaddr *)&sin,
			    td->td_ucred);
			goto out;
		}
#endif
	}

	error = FUNC7(inp, nam, td->td_ucred);
#ifdef INET
out:
#endif
	if (error != 0)
		inp->inp_vflag = vflagsav;
	FUNC3(pcbinfo);
	FUNC5(inp);
	return (error);
}