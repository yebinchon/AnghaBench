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
struct thread {int dummy; } ;
struct TYPE_6__ {scalar_t__ sb_hiwat; } ;
struct TYPE_5__ {scalar_t__ sb_hiwat; } ;
struct socket {scalar_t__ so_pcb; TYPE_3__ so_rcv; TYPE_2__ so_snd; TYPE_1__* so_proto; } ;
struct inpcbinfo {int dummy; } ;
struct inpcb {int inp_flags; int in6p_hops; int in6p_cksum; int /*<<< orphan*/  inp_ip_ttl; int /*<<< orphan*/  inp_vflag; } ;
struct TYPE_4__ {int /*<<< orphan*/  pr_protocol; } ;

/* Variables and functions */
 int IN6P_IPV6_V6ONLY ; 
 int /*<<< orphan*/  FUNC0 (struct inpcbinfo*) ; 
 int /*<<< orphan*/  FUNC1 (struct inpcbinfo*) ; 
 int /*<<< orphan*/  INP_IPV4 ; 
 int /*<<< orphan*/  INP_IPV6 ; 
 int /*<<< orphan*/  FUNC2 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  V_ip_defttl ; 
 int FUNC4 (struct socket*,struct inpcbinfo*) ; 
 int /*<<< orphan*/  FUNC5 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC6 (struct inpcb*) ; 
 int FUNC7 (struct socket*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct inpcb* FUNC8 (struct socket*) ; 
 struct inpcbinfo* FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (struct inpcb*) ; 
 int /*<<< orphan*/  udp_recvspace ; 
 int /*<<< orphan*/  udp_sendspace ; 

__attribute__((used)) static int
FUNC11(struct socket *so, int proto, struct thread *td)
{
	struct inpcb *inp;
	struct inpcbinfo *pcbinfo;
	int error;

	pcbinfo = FUNC9(so->so_proto->pr_protocol);
	inp = FUNC8(so);
	FUNC3(inp == NULL, ("udp6_attach: inp != NULL"));

	if (so->so_snd.sb_hiwat == 0 || so->so_rcv.sb_hiwat == 0) {
		error = FUNC7(so, udp_sendspace, udp_recvspace);
		if (error)
			return (error);
	}
	FUNC0(pcbinfo);
	error = FUNC4(so, pcbinfo);
	if (error) {
		FUNC1(pcbinfo);
		return (error);
	}
	inp = (struct inpcb *)so->so_pcb;
	inp->inp_vflag |= INP_IPV6;
	if ((inp->inp_flags & IN6P_IPV6_V6ONLY) == 0)
		inp->inp_vflag |= INP_IPV4;
	inp->in6p_hops = -1;	/* use kernel default */
	inp->in6p_cksum = -1;	/* just to be sure */
	/*
	 * XXX: ugly!!
	 * IPv4 TTL initialization is necessary for an IPv6 socket as well,
	 * because the socket may be bound to an IPv6 wildcard address,
	 * which may match an IPv4-mapped IPv6 address.
	 */
	inp->inp_ip_ttl = V_ip_defttl;

	error = FUNC10(inp);
	if (error) {
		FUNC5(inp);
		FUNC6(inp);
		FUNC1(pcbinfo);
		return (error);
	}
	FUNC2(inp);
	FUNC1(pcbinfo);
	return (0);
}