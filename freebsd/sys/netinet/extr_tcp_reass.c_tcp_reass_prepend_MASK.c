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
struct tseg_qent {int tqe_start; int tqe_len; int tqe_mbuf_cnt; struct mbuf* tqe_m; } ;
struct tcphdr {int th_seq; } ;
struct tcpcb {int /*<<< orphan*/  t_rcvoopack; } ;
struct TYPE_2__ {int len; } ;
struct mbuf {TYPE_1__ m_pkthdr; struct mbuf* m_next; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TCP_R_LOG_PREPEND ; 
 int /*<<< orphan*/  TCP_R_LOG_TRIM ; 
 int /*<<< orphan*/  FUNC3 (struct mbuf*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct tcpcb*,struct tseg_qent*,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct tcpcb*,int,int,struct mbuf*,int /*<<< orphan*/ ,struct tseg_qent*) ; 
 int /*<<< orphan*/  tcps_rcvoobyte ; 
 int /*<<< orphan*/  tcps_rcvoopack ; 

__attribute__((used)) static void
FUNC6(struct tcpcb *tp, struct tseg_qent *first, struct mbuf *m, struct tcphdr *th,
		  int tlen, struct mbuf *mlast, int lenofoh)
{
	int i;
	
#ifdef TCP_REASS_LOGGING
	tcp_log_reassm(tp, first, NULL, th->th_seq, tlen, TCP_R_LOG_PREPEND, 0);
#endif
	if (FUNC0((th->th_seq + tlen), first->tqe_start)) {
		/* The new data overlaps into the old */
		i = (th->th_seq + tlen) - first->tqe_start;
#ifdef TCP_REASS_LOGGING
		tcp_log_reassm(tp, first, NULL, 0, i, TCP_R_LOG_TRIM, 1);
#endif
		FUNC3(first->tqe_m, i);
		first->tqe_len -= i;
		first->tqe_start += i;
	}
	/* Ok now setup our chain to point to the old first */
	mlast->m_next = first->tqe_m;
	first->tqe_m = m;
	first->tqe_len += tlen;
	first->tqe_start = th->th_seq;
	first->tqe_m->m_pkthdr.len = first->tqe_len;
	first->tqe_mbuf_cnt += lenofoh;
	tp->t_rcvoopack++;
	FUNC2(tcps_rcvoopack);
	FUNC1(tcps_rcvoobyte, tlen);
#ifdef TCP_REASS_LOGGING
	tcp_reass_log_new_in(tp, first->tqe_start, lenofoh, first->tqe_m,
			     TCP_R_LOG_PREPEND,
			     first);
#endif
}