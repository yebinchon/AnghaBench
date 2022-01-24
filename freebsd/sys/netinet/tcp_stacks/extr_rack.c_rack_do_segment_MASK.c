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
typedef  int /*<<< orphan*/  uint8_t ;
struct timeval {int tv_sec; int tv_usec; } ;
struct tcphdr {int dummy; } ;
struct tcpcb {int /*<<< orphan*/  t_inpcb; scalar_t__ t_in_pkt; } ;
struct socket {int dummy; } ;
struct TYPE_2__ {int rcv_tstmp; } ;
struct mbuf {int m_flags; TYPE_1__ m_pkthdr; } ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int M_TSTMP_LRO ; 
 scalar_t__ FUNC1 (struct socket*,struct tcpcb*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mbuf*) ; 
 scalar_t__ FUNC3 (struct mbuf*,struct tcphdr*,struct socket*,struct tcpcb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct timeval*) ; 
 int /*<<< orphan*/  FUNC4 (struct timeval*) ; 

void
FUNC5(struct mbuf *m, struct tcphdr *th, struct socket *so,
    struct tcpcb *tp, int32_t drop_hdrlen, int32_t tlen, uint8_t iptos)
{
	struct timeval tv;

	/* First lets see if we have old packets */
	if (tp->t_in_pkt) {
		if (FUNC1(so, tp, 1)) {
			FUNC2(m);
			return;
		}
	}
	if (m->m_flags & M_TSTMP_LRO) {
		tv.tv_sec = m->m_pkthdr.rcv_tstmp /1000000000;
		tv.tv_usec = (m->m_pkthdr.rcv_tstmp % 1000000000)/1000;
	} else {
		/* Should not be should we kassert instead? */
		FUNC4(&tv);
	}
	if(FUNC3(m, th, so, tp,
				    drop_hdrlen, tlen, iptos, 0, &tv) == 0)
		FUNC0(tp->t_inpcb);
}