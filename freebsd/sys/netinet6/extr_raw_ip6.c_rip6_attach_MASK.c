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
struct thread {int dummy; } ;
struct socket {scalar_t__ so_pcb; } ;
struct inpcb {long inp_ip_p; int in6p_hops; int in6p_cksum; struct icmp6_filter* in6p_icmp6filt; int /*<<< orphan*/  inp_vflag; } ;
struct icmp6_filter {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct icmp6_filter*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  INP_IPV6 ; 
 int /*<<< orphan*/  FUNC3 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  M_PCB ; 
 int /*<<< orphan*/  PRIV_NETINET_RAW ; 
 int /*<<< orphan*/  V_ripcbinfo ; 
 int /*<<< orphan*/  FUNC5 (struct icmp6_filter*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct socket*,int /*<<< orphan*/ *) ; 
 struct icmp6_filter* FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct thread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rip_recvspace ; 
 int /*<<< orphan*/  rip_sendspace ; 
 int FUNC9 (struct socket*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct inpcb* FUNC10 (struct socket*) ; 

__attribute__((used)) static int
FUNC11(struct socket *so, int proto, struct thread *td)
{
	struct inpcb *inp;
	struct icmp6_filter *filter;
	int error;

	inp = FUNC10(so);
	FUNC4(inp == NULL, ("rip6_attach: inp != NULL"));

	error = FUNC8(td, PRIV_NETINET_RAW);
	if (error)
		return (error);
	error = FUNC9(so, rip_sendspace, rip_recvspace);
	if (error)
		return (error);
	filter = FUNC7(sizeof(struct icmp6_filter), M_PCB, M_NOWAIT);
	if (filter == NULL)
		return (ENOMEM);
	FUNC1(&V_ripcbinfo);
	error = FUNC6(so, &V_ripcbinfo);
	if (error) {
		FUNC2(&V_ripcbinfo);
		FUNC5(filter, M_PCB);
		return (error);
	}
	inp = (struct inpcb *)so->so_pcb;
	FUNC2(&V_ripcbinfo);
	inp->inp_vflag |= INP_IPV6;
	inp->inp_ip_p = (long)proto;
	inp->in6p_hops = -1;	/* use kernel default */
	inp->in6p_cksum = -1;
	inp->in6p_icmp6filt = filter;
	FUNC0(inp->in6p_icmp6filt);
	FUNC3(inp);
	return (0);
}