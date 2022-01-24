#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ uint16_t ;
struct tcphdr {int th_off; int th_flags; scalar_t__ th_seq; scalar_t__ th_ack; scalar_t__ th_win; } ;
struct tcpcb {int dummy; } ;
struct TYPE_3__ {scalar_t__ lro_len; scalar_t__ lro_csum; scalar_t__ len; } ;
struct mbuf {TYPE_1__ m_pkthdr; struct mbuf* m_nextpkt; } ;
struct lro_entry {scalar_t__ append_cnt; scalar_t__ p_len; scalar_t__ next_seq; scalar_t__ ack_seq; scalar_t__ window; scalar_t__ ulp_csum; TYPE_2__* m_tail; int /*<<< orphan*/  mbuf_appended; int /*<<< orphan*/  mbuf_cnt; scalar_t__ tsecr; scalar_t__ tsval; struct mbuf* m_head; } ;
struct lro_ctrl {scalar_t__ lro_ackcnt_lim; scalar_t__ lro_length_lim; } ;
struct TYPE_4__ {struct mbuf* m_next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__) ; 
 int TCPOLEN_TIMESTAMP ; 
 int TCPOLEN_TSTAMP_APPA ; 
 int TCPOPT_NOP ; 
 int TCPOPT_TIMESTAMP ; 
 int TH_ACK ; 
 int TH_PUSH ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct mbuf*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC7 (struct mbuf*) ; 
 TYPE_2__* FUNC8 (struct mbuf*) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 struct tcphdr* FUNC10 (struct lro_entry*,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC11 (struct tcpcb*,struct lro_ctrl*,struct lro_entry*,struct mbuf*,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct tcpcb*,struct lro_ctrl*,struct lro_entry*,struct mbuf*,int) ; 

__attribute__((used)) static void
FUNC13(struct tcpcb *tp, struct lro_ctrl *lc, struct lro_entry *le, int locked)
{
	/* 
	 * Walk through the mbuf chain we 
	 * have on tap and compress/condense 
	 * as required.
	 */
	uint32_t *ts_ptr;
	struct mbuf *m;
	struct tcphdr *th;
	uint16_t tcp_data_len, csum_upd;
	int l;

	/* 
	 * First we must check the lead (m_head) 
	 * we must make sure that it is *not* 
	 * something that should be sent up
	 * right away (sack etc).
	 */
again:

	m = le->m_head->m_nextpkt;
	if (m == NULL) {
		/* Just the one left */
		return;
	}
	th = FUNC10(le, le->m_head);
	FUNC0(th != NULL, 
		("le:%p m:%p th comes back NULL?", le, le->m_head));
	l = (th->th_off << 2);
	l -= sizeof(*th);
	ts_ptr = (uint32_t *)(th + 1);
	if (l != 0 && (FUNC4(l != TCPOLEN_TSTAMP_APPA) ||
		       (*ts_ptr != FUNC9(TCPOPT_NOP<<24|TCPOPT_NOP<<16|
					 TCPOPT_TIMESTAMP<<8|TCPOLEN_TIMESTAMP)))) {
		/*
		 * Its not the timestamp. We can't
		 * use this guy as the head.
		 */
		le->m_head->m_nextpkt = m->m_nextpkt;
		FUNC12(tp, lc, le, m, locked);
		goto again;
	}
	if ((th->th_flags & ~(TH_ACK | TH_PUSH)) != 0) {
		/*
		 * Make sure that previously seen segements/ACKs are delivered
		 * before this segment, e.g. FIN.
		 */
		le->m_head->m_nextpkt = m->m_nextpkt;
		FUNC12(tp, lc, le, m, locked);
		goto again;
	}
	while((m = le->m_head->m_nextpkt) != NULL) {
		/* 
		 * condense m into le, first
		 * pull m out of the list.
		 */
		le->m_head->m_nextpkt = m->m_nextpkt;
		m->m_nextpkt = NULL;
		/* Setup my data */
		tcp_data_len = m->m_pkthdr.lro_len;
		th = FUNC10(le, m);
		FUNC0(th != NULL, 
			("le:%p m:%p th comes back NULL?", le, m));
		ts_ptr = (uint32_t *)(th + 1);
		l = (th->th_off << 2);
		l -= sizeof(*th);
		if (tp && locked) {
			FUNC11(tp, lc, le, m, 1, 0, 0, 0, 0);
		}
		if (le->append_cnt >= lc->lro_ackcnt_lim) {
			if (tp && locked) {
				FUNC11(tp, lc, le, m, 2, 0, 0, 0, 0);
			}
			FUNC12(tp, lc, le, m, locked);
			goto again;
		}
		if (le->p_len > (lc->lro_length_lim - tcp_data_len)) {
			/* Flush now if appending will result in overflow. */
			if (tp && locked) {
				FUNC11(tp, lc, le, m, 3, tcp_data_len, 0, 0, 0);
			}
			FUNC12(tp, lc, le, m, locked);
			goto again;
		}
		if (l != 0 && (FUNC4(l != TCPOLEN_TSTAMP_APPA) ||
			       (*ts_ptr != FUNC9(TCPOPT_NOP<<24|TCPOPT_NOP<<16|
						 TCPOPT_TIMESTAMP<<8|TCPOLEN_TIMESTAMP)))) {
			/*
			 * Maybe a sack in the new one? We need to
			 * start all over after flushing the
			 * current le. We will go up to the beginning
			 * and flush it (calling the replace again possibly
			 * or just returning).
			 */
			FUNC12(tp, lc, le, m, locked);
			goto again;
		}
		if ((th->th_flags & ~(TH_ACK | TH_PUSH)) != 0) {
			FUNC12(tp, lc, le, m, locked);
			goto again;
		}
		if (l != 0) {
			uint32_t tsval = FUNC9(*(ts_ptr + 1));
			/* Make sure timestamp values are increasing. */
			if (FUNC2(le->tsval, tsval))  {
				FUNC12(tp, lc, le, m, locked);
				goto again;
			}
			le->tsval = tsval;
			le->tsecr = *(ts_ptr + 2);
		}
		/* Try to append the new segment. */
		if (FUNC4(FUNC9(th->th_seq) != le->next_seq ||
				    (tcp_data_len == 0 &&
				     le->ack_seq == th->th_ack &&
				     le->window == th->th_win))) {
			/* Out of order packet or duplicate ACK. */
			if (tp && locked) {
				FUNC11(tp, lc, le, m, 4, tcp_data_len,
					    FUNC9(th->th_seq),
					    th->th_ack,
					    th->th_win);
			}
			FUNC12(tp, lc, le, m, locked);
			goto again;
		}
		if (tcp_data_len || FUNC1(FUNC9(th->th_ack), FUNC9(le->ack_seq))) {
			le->next_seq += tcp_data_len;
			le->ack_seq = th->th_ack;
			le->window = th->th_win;
		} else if (th->th_ack == le->ack_seq) {
			le->window = FUNC3(le->window, th->th_win);
		}
		csum_upd = m->m_pkthdr.lro_csum;
		le->ulp_csum += csum_upd;
		if (tcp_data_len == 0) {
			le->append_cnt++;
			le->mbuf_cnt--;
			if (tp && locked) {
				FUNC11(tp, lc, le, m, 5, tcp_data_len,
					    FUNC9(th->th_seq),
					    th->th_ack,
					    th->th_win);
			}
			FUNC7(m);
			continue;
		}
		le->append_cnt++;
		le->mbuf_appended++;
		le->p_len += tcp_data_len;
		/*
		 * Adjust the mbuf so that m_data points to the first byte of
		 * the ULP payload.  Adjust the mbuf to avoid complications and
		 * append new segment to existing mbuf chain.
		 */
		FUNC5(m, m->m_pkthdr.len - tcp_data_len);
		if (tp && locked) {
			FUNC11(tp, lc, le, m, 6, tcp_data_len,
					    FUNC9(th->th_seq),
					    th->th_ack,
					    th->th_win);
		}
		FUNC6(m);
		le->m_tail->m_next = m;
		le->m_tail = FUNC8(m);
	}
}