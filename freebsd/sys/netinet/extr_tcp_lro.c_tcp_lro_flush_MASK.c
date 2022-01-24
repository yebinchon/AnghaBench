#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct tcpcb {int dummy; } ;
struct lro_entry {int eh_type; int need_wakeup; scalar_t__ tcp_tot_p_len; scalar_t__ mbuf_cnt; TYPE_2__* m_last_mbuf; TYPE_2__* m_head; int /*<<< orphan*/  dest_port; TYPE_1__* le_ip4; int /*<<< orphan*/  source_port; int /*<<< orphan*/  dest_ip6; int /*<<< orphan*/  source_ip6; } ;
struct lro_ctrl {scalar_t__ lro_length_lim; scalar_t__ lro_ackcnt_lim; int /*<<< orphan*/  lro_free; int /*<<< orphan*/  lro_flushed; TYPE_3__* ifp; } ;
struct inpcb {int inp_flags; int inp_flags2; scalar_t__ inp_in_input; } ;
struct epoch_tracker {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  if_vnet; } ;
struct TYPE_6__ {int m_flags; } ;
struct TYPE_5__ {int /*<<< orphan*/  ip_dst; int /*<<< orphan*/  ip_src; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
#define  ETHERTYPE_IP 129 
#define  ETHERTYPE_IPV6 128 
 int /*<<< orphan*/  INPLOOKUP_WLOCKPCB ; 
 int INP_DONT_SACK_QUEUE ; 
 int INP_DROPPED ; 
 int INP_FREED ; 
 int INP_MBUF_QUEUE_READY ; 
 int INP_SUPPORTS_MBUFQ ; 
 int INP_TIMEWAIT ; 
 int /*<<< orphan*/  FUNC2 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct lro_entry*,int /*<<< orphan*/ ) ; 
 int M_VLANTAG ; 
 int /*<<< orphan*/  FUNC4 (struct epoch_tracker) ; 
 int /*<<< orphan*/  FUNC5 (struct epoch_tracker) ; 
 int /*<<< orphan*/  V_tcbinfo ; 
 int /*<<< orphan*/  FUNC6 (struct lro_entry*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ hold_lock_over_compress ; 
 struct inpcb* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 struct inpcb* FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 struct tcpcb* FUNC10 (struct inpcb*) ; 
 int /*<<< orphan*/  next ; 
 int /*<<< orphan*/  FUNC11 (struct tcpcb*,struct lro_ctrl*,struct lro_entry*,int) ; 
 int /*<<< orphan*/  tcp_inp_lro_compressed ; 
 int /*<<< orphan*/  tcp_inp_lro_direct_queue ; 
 int /*<<< orphan*/  tcp_inp_lro_locks_taken ; 
 int /*<<< orphan*/  tcp_inp_lro_sack_wake ; 
 int /*<<< orphan*/  tcp_inp_lro_single_push ; 
 int /*<<< orphan*/  tcp_inp_lro_wokeup_queue ; 
 int /*<<< orphan*/  FUNC12 (struct tcpcb*,struct lro_ctrl*,struct lro_entry*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct tcpcb*,struct lro_ctrl*,struct lro_entry*,int /*<<< orphan*/ *,int,int,int,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC14 (struct tcpcb*,struct lro_entry*) ; 
 int /*<<< orphan*/  FUNC15 (struct inpcb*) ; 
 scalar_t__ tcplro_stacks_wanting_mbufq ; 

void
FUNC16(struct lro_ctrl *lc, struct lro_entry *le)
{
	struct tcpcb *tp = NULL;
	int locked = 0;
#ifdef TCPHPTS
	struct inpcb *inp = NULL;
	int need_wakeup = 0, can_queue = 0;
	struct epoch_tracker et;	

	/* Now lets lookup the inp first */
	CURVNET_SET(lc->ifp->if_vnet);
	/*
	 * XXXRRS Currently the common input handler for
	 * mbuf queuing cannot handle VLAN Tagged. This needs
	 * to be fixed and the or condition removed (i.e. the 
	 * common code should do the right lookup for the vlan
	 * tag and anything else that the vlan_input() does).
	 */
	if ((tcplro_stacks_wanting_mbufq == 0) || (le->m_head->m_flags & M_VLANTAG))
		goto skip_lookup;
	NET_EPOCH_ENTER(et);
	switch (le->eh_type) {
#ifdef INET6
	case ETHERTYPE_IPV6:
		inp = in6_pcblookup(&V_tcbinfo, &le->source_ip6,
				    le->source_port, &le->dest_ip6,le->dest_port,
				    INPLOOKUP_WLOCKPCB,
				    lc->ifp);
		break;
#endif
#ifdef INET
	case ETHERTYPE_IP:
		inp = in_pcblookup(&V_tcbinfo, le->le_ip4->ip_src,
				   le->source_port, le->le_ip4->ip_dst, le->dest_port,
				   INPLOOKUP_WLOCKPCB,
				   lc->ifp);
		break;
#endif
	}
	NET_EPOCH_EXIT(et);
	if (inp && ((inp->inp_flags & (INP_DROPPED|INP_TIMEWAIT)) ||
		    (inp->inp_flags2 & INP_FREED))) {
		/* We don't want this guy */
		INP_WUNLOCK(inp);		
		inp = NULL;
	}
	if (inp && (inp->inp_flags2 & INP_SUPPORTS_MBUFQ)) {
		/* The transport supports mbuf queuing */
		can_queue = 1;
		if (le->need_wakeup ||
		    ((inp->inp_in_input == 0) &&
		     ((inp->inp_flags2 & INP_MBUF_QUEUE_READY) == 0))) {
			/* 
			 * Either the transport is off on a keep-alive
			 * (it has the queue_ready flag clear and its
			 *  not already been woken) or the entry has
			 * some urgent thing (FIN or possibly SACK blocks).
			 * This means we need to wake the transport up by
			 * putting it on the input pacer. 
			 */
			need_wakeup = 1;
			if ((inp->inp_flags2 & INP_DONT_SACK_QUEUE) &&
			    (le->need_wakeup != 1)) {
				/*
				 * Prohibited from a sack wakeup.
				 */
				need_wakeup = 0;
			}
		}
		/* Do we need to be awoken due to lots of data or acks? */
		if ((le->tcp_tot_p_len >= lc->lro_length_lim) ||
		    (le->mbuf_cnt >= lc->lro_ackcnt_lim))
			need_wakeup = 1;
	}
	if (inp) {
		tp = intotcpcb(inp);
		locked = 1;
	} else
		tp = NULL;
	if (can_queue) {
		counter_u64_add(tcp_inp_lro_direct_queue, 1);
		tcp_lro_log(tp, lc, le, NULL, 22, need_wakeup,
			    inp->inp_flags2, inp->inp_in_input, le->need_wakeup);
		tcp_queue_pkts(tp, le);
		if (need_wakeup) {
			/* 
			 * We must get the guy to wakeup via
			 * hpts.
			 */
			counter_u64_add(tcp_inp_lro_wokeup_queue, 1);
			if (le->need_wakeup)
				counter_u64_add(tcp_inp_lro_sack_wake, 1);
			tcp_queue_to_input(inp);
		}
	}
	if (inp && (hold_lock_over_compress == 0)) {
		/* Unlock it */
		locked = 0;
		tp = NULL;
		counter_u64_add(tcp_inp_lro_locks_taken, 1);
		INP_WUNLOCK(inp);
	}
	if (can_queue == 0) {
skip_lookup:
#endif /* TCPHPTS */
		/* Old fashioned lro method */
		if (le->m_head != le->m_last_mbuf)  {
			FUNC7(tcp_inp_lro_compressed, 1);
			FUNC12(tp, lc, le, locked);
		} else
			FUNC7(tcp_inp_lro_single_push, 1);
		FUNC11(tp, lc, le, locked);
#ifdef TCPHPTS
	}
	if (inp && locked) {
		counter_u64_add(tcp_inp_lro_locks_taken, 1);
		INP_WUNLOCK(inp);
	}
	CURVNET_RESTORE();
#endif
	lc->lro_flushed++;
	FUNC6(le, sizeof(*le));
	FUNC3(&lc->lro_free, le, next);
}