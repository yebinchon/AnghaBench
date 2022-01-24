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
struct socket {int dummy; } ;
struct sockaddr {int dummy; } ;
struct inpcb {int inp_vflag; } ;

/* Variables and functions */
 int INP_IPV4 ; 
 int INP_IPV6 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct socket*,struct sockaddr**) ; 
 int /*<<< orphan*/  FUNC2 (struct sockaddr**) ; 
 int FUNC3 (struct socket*,struct sockaddr**) ; 
 struct inpcb* FUNC4 (struct socket*) ; 

int
FUNC5(struct socket *so, struct sockaddr **nam)
{
	struct	inpcb *inp;
	int	error;

	inp = FUNC4(so);
	FUNC0(inp != NULL, ("in6_mapped_peeraddr: inp == NULL"));

#ifdef INET
	if ((inp->inp_vflag & (INP_IPV4 | INP_IPV6)) == INP_IPV4) {
		error = in_getpeeraddr(so, nam);
		if (error == 0)
			in6_sin_2_v4mapsin6_in_sock(nam);
	} else
#endif
	/* scope issues will be handled in in6_getpeeraddr(). */
	error = FUNC1(so, nam);

	return error;
}