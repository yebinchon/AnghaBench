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
typedef  int /*<<< orphan*/  u_short ;
struct tcphdr {scalar_t__ th_sport; scalar_t__ th_dport; int th_flags; int /*<<< orphan*/  th_sum; int /*<<< orphan*/  th_seq; int /*<<< orphan*/  th_ack; int /*<<< orphan*/  th_win; } ;
struct pfi_kif {int dummy; } ;
struct pf_state_peer {scalar_t__ state; int seqlo; int seqhi; int seqdiff; scalar_t__ wscale; void* max_win; int /*<<< orphan*/  mss; } ;
struct pf_state_key_cmp {scalar_t__* port; int /*<<< orphan*/  af; int /*<<< orphan*/ * addr; int /*<<< orphan*/  proto; } ;
struct pf_state_key {scalar_t__* port; int /*<<< orphan*/ * addr; } ;
struct TYPE_5__ {int /*<<< orphan*/  ptr; } ;
struct pf_state {int direction; int state_flags; struct pf_state_key** key; struct pf_state_peer dst; struct pf_state_peer src; TYPE_2__ rule; int /*<<< orphan*/  tag; int /*<<< orphan*/ * src_node; } ;
struct TYPE_4__ {struct tcphdr* tcp; } ;
struct pf_pdesc {size_t didx; size_t sidx; int /*<<< orphan*/  af; int /*<<< orphan*/  ip_sum; int /*<<< orphan*/ * dst; int /*<<< orphan*/ * src; TYPE_1__ hdr; } ;
struct mbuf {int dummy; } ;
typedef  int /*<<< orphan*/  key ;
typedef  int /*<<< orphan*/  caddr_t ;
struct TYPE_6__ {scalar_t__ debug; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPPROTO_TCP ; 
 void* FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PFRES_SRCLIMIT ; 
 int /*<<< orphan*/  PFRES_SYNPROXY ; 
 int PFSTATE_SLOPPY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ PF_DEBUG_MISC ; 
 int PF_DROP ; 
 int /*<<< orphan*/  PF_ENTER_LOCKED ; 
 int PF_IN ; 
 int PF_PASS ; 
 size_t PF_SK_STACK ; 
 size_t PF_SK_WIRE ; 
 int PF_SYNPROXY_DROP ; 
 scalar_t__ PF_TCPS_PROXY_DST ; 
 scalar_t__ PF_TCPS_PROXY_SRC ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pfi_kif*,struct pf_state_key_cmp*,int,struct pf_state*,struct pf_pdesc*) ; 
 scalar_t__ TCPS_CLOSED ; 
 scalar_t__ TCPS_ESTABLISHED ; 
 scalar_t__ TCPS_FIN_WAIT_2 ; 
 int TH_ACK ; 
 int TH_FIN ; 
 int TH_RST ; 
 int TH_SYN ; 
 TYPE_3__ V_pf_status ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct pf_state_key_cmp*,int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mbuf*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct mbuf*,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (struct pf_state*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,scalar_t__,int,int,int,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (struct pf_state**) ; 
 int FUNC16 (struct pf_state_peer*,struct pf_state_peer*,struct pf_state**,struct pfi_kif*,struct mbuf*,int,struct pf_pdesc*,int /*<<< orphan*/ *,int*) ; 
 int FUNC17 (struct pf_state_peer*,struct pf_state_peer*,struct pf_state**,struct pf_pdesc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (struct pf_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 

__attribute__((used)) static int
FUNC20(struct pf_state **state, int direction, struct pfi_kif *kif,
    struct mbuf *m, int off, void *h, struct pf_pdesc *pd,
    u_short *reason)
{
	struct pf_state_key_cmp	 key;
	struct tcphdr		*th = pd->hdr.tcp;
	int			 copyback = 0;
	struct pf_state_peer	*src, *dst;
	struct pf_state_key	*sk;

	FUNC6(&key, sizeof(key));
	key.af = pd->af;
	key.proto = IPPROTO_TCP;
	if (direction == PF_IN)	{	/* wire side, straight */
		FUNC1(&key.addr[0], pd->src, key.af);
		FUNC1(&key.addr[1], pd->dst, key.af);
		key.port[0] = th->th_sport;
		key.port[1] = th->th_dport;
	} else {			/* stack side, reverse */
		FUNC1(&key.addr[1], pd->src, key.af);
		FUNC1(&key.addr[0], pd->dst, key.af);
		key.port[1] = th->th_sport;
		key.port[0] = th->th_dport;
	}

	FUNC4(kif, &key, direction, *state, pd);

	if (direction == (*state)->direction) {
		src = &(*state)->src;
		dst = &(*state)->dst;
	} else {
		src = &(*state)->dst;
		dst = &(*state)->src;
	}

	sk = (*state)->key[pd->didx];

	if ((*state)->src.state == PF_TCPS_PROXY_SRC) {
		if (direction != (*state)->direction) {
			FUNC3(reason, PFRES_SYNPROXY);
			return (PF_SYNPROXY_DROP);
		}
		if (th->th_flags & TH_SYN) {
			if (FUNC9(th->th_seq) != (*state)->src.seqlo) {
				FUNC3(reason, PFRES_SYNPROXY);
				return (PF_DROP);
			}
			FUNC14(NULL, (*state)->rule.ptr, pd->af, pd->dst,
			    pd->src, th->th_dport, th->th_sport,
			    (*state)->src.seqhi, FUNC9(th->th_seq) + 1,
			    TH_SYN|TH_ACK, 0, (*state)->src.mss, 0, 1, 0, NULL);
			FUNC3(reason, PFRES_SYNPROXY);
			return (PF_SYNPROXY_DROP);
		} else if ((th->th_flags & (TH_ACK|TH_RST|TH_FIN)) != TH_ACK ||
		    (FUNC9(th->th_ack) != (*state)->src.seqhi + 1) ||
		    (FUNC9(th->th_seq) != (*state)->src.seqlo + 1)) {
			FUNC3(reason, PFRES_SYNPROXY);
			return (PF_DROP);
		} else if ((*state)->src_node != NULL &&
		    FUNC15(state)) {
			FUNC3(reason, PFRES_SRCLIMIT);
			return (PF_DROP);
		} else
			(*state)->src.state = PF_TCPS_PROXY_DST;
	}
	if ((*state)->src.state == PF_TCPS_PROXY_DST) {
		if (direction == (*state)->direction) {
			if (((th->th_flags & (TH_SYN|TH_ACK)) != TH_ACK) ||
			    (FUNC9(th->th_ack) != (*state)->src.seqhi + 1) ||
			    (FUNC9(th->th_seq) != (*state)->src.seqlo + 1)) {
				FUNC3(reason, PFRES_SYNPROXY);
				return (PF_DROP);
			}
			(*state)->src.max_win = FUNC0(FUNC10(th->th_win), 1);
			if ((*state)->dst.seqhi == 1)
				(*state)->dst.seqhi = FUNC7(FUNC5());
			FUNC14(NULL, (*state)->rule.ptr, pd->af,
			    &sk->addr[pd->sidx], &sk->addr[pd->didx],
			    sk->port[pd->sidx], sk->port[pd->didx],
			    (*state)->dst.seqhi, 0, TH_SYN, 0,
			    (*state)->src.mss, 0, 0, (*state)->tag, NULL);
			FUNC3(reason, PFRES_SYNPROXY);
			return (PF_SYNPROXY_DROP);
		} else if (((th->th_flags & (TH_SYN|TH_ACK)) !=
		    (TH_SYN|TH_ACK)) ||
		    (FUNC9(th->th_ack) != (*state)->dst.seqhi + 1)) {
			FUNC3(reason, PFRES_SYNPROXY);
			return (PF_DROP);
		} else {
			(*state)->dst.max_win = FUNC0(FUNC10(th->th_win), 1);
			(*state)->dst.seqlo = FUNC9(th->th_seq);
			FUNC14(NULL, (*state)->rule.ptr, pd->af, pd->dst,
			    pd->src, th->th_dport, th->th_sport,
			    FUNC9(th->th_ack), FUNC9(th->th_seq) + 1,
			    TH_ACK, (*state)->src.max_win, 0, 0, 0,
			    (*state)->tag, NULL);
			FUNC14(NULL, (*state)->rule.ptr, pd->af,
			    &sk->addr[pd->sidx], &sk->addr[pd->didx],
			    sk->port[pd->sidx], sk->port[pd->didx],
			    (*state)->src.seqhi + 1, (*state)->src.seqlo + 1,
			    TH_ACK, (*state)->dst.max_win, 0, 0, 1, 0, NULL);
			(*state)->src.seqdiff = (*state)->dst.seqhi -
			    (*state)->src.seqlo;
			(*state)->dst.seqdiff = (*state)->src.seqhi -
			    (*state)->dst.seqlo;
			(*state)->src.seqhi = (*state)->src.seqlo +
			    (*state)->dst.max_win;
			(*state)->dst.seqhi = (*state)->dst.seqlo +
			    (*state)->src.max_win;
			(*state)->src.wscale = (*state)->dst.wscale = 0;
			(*state)->src.state = (*state)->dst.state =
			    TCPS_ESTABLISHED;
			FUNC3(reason, PFRES_SYNPROXY);
			return (PF_SYNPROXY_DROP);
		}
	}

	if (((th->th_flags & (TH_SYN|TH_ACK)) == TH_SYN) &&
	    dst->state >= TCPS_FIN_WAIT_2 &&
	    src->state >= TCPS_FIN_WAIT_2) {
		if (V_pf_status.debug >= PF_DEBUG_MISC) {
			FUNC19("pf: state reuse ");
			FUNC13(*state);
			FUNC12(th->th_flags);
			FUNC19("\n");
		}
		/* XXX make sure it's the same direction ?? */
		(*state)->src.state = (*state)->dst.state = TCPS_CLOSED;
		FUNC18(*state, PF_ENTER_LOCKED);
		*state = NULL;
		return (PF_DROP);
	}

	if ((*state)->state_flags & PFSTATE_SLOPPY) {
		if (FUNC17(src, dst, state, pd, reason) == PF_DROP)
			return (PF_DROP);
	} else {
		if (FUNC16(src, dst, state, kif, m, off, pd, reason,
		    &copyback) == PF_DROP)
			return (PF_DROP);
	}

	/* translate source/destination address, if necessary */
	if ((*state)->key[PF_SK_WIRE] != (*state)->key[PF_SK_STACK]) {
		struct pf_state_key *nk = (*state)->key[pd->didx];

		if (FUNC2(pd->src, &nk->addr[pd->sidx], pd->af) ||
		    nk->port[pd->sidx] != th->th_sport)
			FUNC11(m, pd->src, &th->th_sport,
			    pd->ip_sum, &th->th_sum, &nk->addr[pd->sidx],
			    nk->port[pd->sidx], 0, pd->af);

		if (FUNC2(pd->dst, &nk->addr[pd->didx], pd->af) ||
		    nk->port[pd->didx] != th->th_dport)
			FUNC11(m, pd->dst, &th->th_dport,
			    pd->ip_sum, &th->th_sum, &nk->addr[pd->didx],
			    nk->port[pd->didx], 0, pd->af);
		copyback = 1;
	}

	/* Copyback sequence modulation or stateful scrub changes if needed */
	if (copyback)
		FUNC8(m, off, sizeof(*th), (caddr_t)th);

	return (PF_PASS);
}