#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint8_t ;
struct socket {TYPE_1__* so_proto; } ;
struct pr_usrreqs {int /*<<< orphan*/  (* pru_abort ) (struct socket*) ;} ;
struct inpcbinfo {int dummy; } ;
struct inpcb {int inp_vflag; int /*<<< orphan*/  in6p_laddr; int /*<<< orphan*/  in6p_faddr; TYPE_3__* inp_socket; } ;
struct TYPE_8__ {struct pr_usrreqs* pr_usrreqs; } ;
struct TYPE_7__ {TYPE_2__* so_proto; } ;
struct TYPE_6__ {scalar_t__ pr_protocol; } ;
struct TYPE_5__ {int /*<<< orphan*/  pr_protocol; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct inpcbinfo*) ; 
 int /*<<< orphan*/  FUNC2 (struct inpcbinfo*) ; 
 int INP_IPV4 ; 
 int /*<<< orphan*/  FUNC3 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC4 (struct inpcb*) ; 
 scalar_t__ IPPROTO_UDP ; 
 scalar_t__ IPPROTO_UDPLITE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct inpcb*) ; 
 int /*<<< orphan*/  in6addr_any ; 
 TYPE_4__* inetsw ; 
 size_t* ip_protox ; 
 int /*<<< orphan*/  FUNC7 (struct socket*) ; 
 struct inpcb* FUNC8 (struct socket*) ; 
 int /*<<< orphan*/  FUNC9 (struct socket*) ; 
 struct inpcbinfo* FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC11(struct socket *so)
{
	struct inpcb *inp;
	struct inpcbinfo *pcbinfo;

	pcbinfo = FUNC10(so->so_proto->pr_protocol);
	inp = FUNC8(so);
	FUNC5(inp != NULL, ("udp6_abort: inp == NULL"));

	FUNC3(inp);
#ifdef INET
	if (inp->inp_vflag & INP_IPV4) {
		struct pr_usrreqs *pru;
		uint8_t nxt;

		nxt = (inp->inp_socket->so_proto->pr_protocol == IPPROTO_UDP) ?
		    IPPROTO_UDP : IPPROTO_UDPLITE;
		INP_WUNLOCK(inp);
		pru = inetsw[ip_protox[nxt]].pr_usrreqs;
		(*pru->pru_abort)(so);
		return;
	}
#endif

	if (!FUNC0(&inp->in6p_faddr)) {
		FUNC1(pcbinfo);
		FUNC6(inp);
		inp->in6p_laddr = in6addr_any;
		FUNC2(pcbinfo);
		FUNC7(so);
	}
	FUNC4(inp);
}