
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_short ;
struct tcphdr {scalar_t__ th_sport; scalar_t__ th_dport; int th_flags; int th_sum; int th_seq; int th_ack; int th_win; } ;
struct pfi_kif {int dummy; } ;
struct pf_state_peer {scalar_t__ state; int seqlo; int seqhi; int seqdiff; scalar_t__ wscale; void* max_win; int mss; } ;
struct pf_state_key_cmp {scalar_t__* port; int af; int * addr; int proto; } ;
struct pf_state_key {scalar_t__* port; int * addr; } ;
struct TYPE_5__ {int ptr; } ;
struct pf_state {int direction; int state_flags; struct pf_state_key** key; struct pf_state_peer dst; struct pf_state_peer src; TYPE_2__ rule; int tag; int * src_node; } ;
struct TYPE_4__ {struct tcphdr* tcp; } ;
struct pf_pdesc {size_t didx; size_t sidx; int af; int ip_sum; int * dst; int * src; TYPE_1__ hdr; } ;
struct mbuf {int dummy; } ;
typedef int key ;
typedef int caddr_t ;
struct TYPE_6__ {scalar_t__ debug; } ;


 int IPPROTO_TCP ;
 void* MAX (int ,int) ;
 int PFRES_SRCLIMIT ;
 int PFRES_SYNPROXY ;
 int PFSTATE_SLOPPY ;
 int PF_ACPY (int *,int *,int ) ;
 scalar_t__ PF_ANEQ (int *,int *,int ) ;
 scalar_t__ PF_DEBUG_MISC ;
 int PF_DROP ;
 int PF_ENTER_LOCKED ;
 int PF_IN ;
 int PF_PASS ;
 size_t PF_SK_STACK ;
 size_t PF_SK_WIRE ;
 int PF_SYNPROXY_DROP ;
 scalar_t__ PF_TCPS_PROXY_DST ;
 scalar_t__ PF_TCPS_PROXY_SRC ;
 int REASON_SET (int *,int ) ;
 int STATE_LOOKUP (struct pfi_kif*,struct pf_state_key_cmp*,int,struct pf_state*,struct pf_pdesc*) ;
 scalar_t__ TCPS_CLOSED ;
 scalar_t__ TCPS_ESTABLISHED ;
 scalar_t__ TCPS_FIN_WAIT_2 ;
 int TH_ACK ;
 int TH_FIN ;
 int TH_RST ;
 int TH_SYN ;
 TYPE_3__ V_pf_status ;
 int arc4random () ;
 int bzero (struct pf_state_key_cmp*,int) ;
 int htonl (int ) ;
 int m_copyback (struct mbuf*,int,int,int ) ;
 int ntohl (int ) ;
 int ntohs (int ) ;
 int pf_change_ap (struct mbuf*,int *,scalar_t__*,int ,int *,int *,scalar_t__,int ,int ) ;
 int pf_print_flags (int) ;
 int pf_print_state (struct pf_state*) ;
 int pf_send_tcp (int *,int ,int ,int *,int *,scalar_t__,scalar_t__,int,int,int,void*,int ,int ,int,int ,int *) ;
 scalar_t__ pf_src_connlimit (struct pf_state**) ;
 int pf_tcp_track_full (struct pf_state_peer*,struct pf_state_peer*,struct pf_state**,struct pfi_kif*,struct mbuf*,int,struct pf_pdesc*,int *,int*) ;
 int pf_tcp_track_sloppy (struct pf_state_peer*,struct pf_state_peer*,struct pf_state**,struct pf_pdesc*,int *) ;
 int pf_unlink_state (struct pf_state*,int ) ;
 int printf (char*) ;

__attribute__((used)) static int
pf_test_state_tcp(struct pf_state **state, int direction, struct pfi_kif *kif,
    struct mbuf *m, int off, void *h, struct pf_pdesc *pd,
    u_short *reason)
{
 struct pf_state_key_cmp key;
 struct tcphdr *th = pd->hdr.tcp;
 int copyback = 0;
 struct pf_state_peer *src, *dst;
 struct pf_state_key *sk;

 bzero(&key, sizeof(key));
 key.af = pd->af;
 key.proto = IPPROTO_TCP;
 if (direction == PF_IN) {
  PF_ACPY(&key.addr[0], pd->src, key.af);
  PF_ACPY(&key.addr[1], pd->dst, key.af);
  key.port[0] = th->th_sport;
  key.port[1] = th->th_dport;
 } else {
  PF_ACPY(&key.addr[1], pd->src, key.af);
  PF_ACPY(&key.addr[0], pd->dst, key.af);
  key.port[1] = th->th_sport;
  key.port[0] = th->th_dport;
 }

 STATE_LOOKUP(kif, &key, direction, *state, pd);

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
   REASON_SET(reason, PFRES_SYNPROXY);
   return (PF_SYNPROXY_DROP);
  }
  if (th->th_flags & TH_SYN) {
   if (ntohl(th->th_seq) != (*state)->src.seqlo) {
    REASON_SET(reason, PFRES_SYNPROXY);
    return (PF_DROP);
   }
   pf_send_tcp(((void*)0), (*state)->rule.ptr, pd->af, pd->dst,
       pd->src, th->th_dport, th->th_sport,
       (*state)->src.seqhi, ntohl(th->th_seq) + 1,
       TH_SYN|TH_ACK, 0, (*state)->src.mss, 0, 1, 0, ((void*)0));
   REASON_SET(reason, PFRES_SYNPROXY);
   return (PF_SYNPROXY_DROP);
  } else if ((th->th_flags & (TH_ACK|TH_RST|TH_FIN)) != TH_ACK ||
      (ntohl(th->th_ack) != (*state)->src.seqhi + 1) ||
      (ntohl(th->th_seq) != (*state)->src.seqlo + 1)) {
   REASON_SET(reason, PFRES_SYNPROXY);
   return (PF_DROP);
  } else if ((*state)->src_node != ((void*)0) &&
      pf_src_connlimit(state)) {
   REASON_SET(reason, PFRES_SRCLIMIT);
   return (PF_DROP);
  } else
   (*state)->src.state = PF_TCPS_PROXY_DST;
 }
 if ((*state)->src.state == PF_TCPS_PROXY_DST) {
  if (direction == (*state)->direction) {
   if (((th->th_flags & (TH_SYN|TH_ACK)) != TH_ACK) ||
       (ntohl(th->th_ack) != (*state)->src.seqhi + 1) ||
       (ntohl(th->th_seq) != (*state)->src.seqlo + 1)) {
    REASON_SET(reason, PFRES_SYNPROXY);
    return (PF_DROP);
   }
   (*state)->src.max_win = MAX(ntohs(th->th_win), 1);
   if ((*state)->dst.seqhi == 1)
    (*state)->dst.seqhi = htonl(arc4random());
   pf_send_tcp(((void*)0), (*state)->rule.ptr, pd->af,
       &sk->addr[pd->sidx], &sk->addr[pd->didx],
       sk->port[pd->sidx], sk->port[pd->didx],
       (*state)->dst.seqhi, 0, TH_SYN, 0,
       (*state)->src.mss, 0, 0, (*state)->tag, ((void*)0));
   REASON_SET(reason, PFRES_SYNPROXY);
   return (PF_SYNPROXY_DROP);
  } else if (((th->th_flags & (TH_SYN|TH_ACK)) !=
      (TH_SYN|TH_ACK)) ||
      (ntohl(th->th_ack) != (*state)->dst.seqhi + 1)) {
   REASON_SET(reason, PFRES_SYNPROXY);
   return (PF_DROP);
  } else {
   (*state)->dst.max_win = MAX(ntohs(th->th_win), 1);
   (*state)->dst.seqlo = ntohl(th->th_seq);
   pf_send_tcp(((void*)0), (*state)->rule.ptr, pd->af, pd->dst,
       pd->src, th->th_dport, th->th_sport,
       ntohl(th->th_ack), ntohl(th->th_seq) + 1,
       TH_ACK, (*state)->src.max_win, 0, 0, 0,
       (*state)->tag, ((void*)0));
   pf_send_tcp(((void*)0), (*state)->rule.ptr, pd->af,
       &sk->addr[pd->sidx], &sk->addr[pd->didx],
       sk->port[pd->sidx], sk->port[pd->didx],
       (*state)->src.seqhi + 1, (*state)->src.seqlo + 1,
       TH_ACK, (*state)->dst.max_win, 0, 0, 1, 0, ((void*)0));
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
   REASON_SET(reason, PFRES_SYNPROXY);
   return (PF_SYNPROXY_DROP);
  }
 }

 if (((th->th_flags & (TH_SYN|TH_ACK)) == TH_SYN) &&
     dst->state >= TCPS_FIN_WAIT_2 &&
     src->state >= TCPS_FIN_WAIT_2) {
  if (V_pf_status.debug >= PF_DEBUG_MISC) {
   printf("pf: state reuse ");
   pf_print_state(*state);
   pf_print_flags(th->th_flags);
   printf("\n");
  }

  (*state)->src.state = (*state)->dst.state = TCPS_CLOSED;
  pf_unlink_state(*state, PF_ENTER_LOCKED);
  *state = ((void*)0);
  return (PF_DROP);
 }

 if ((*state)->state_flags & PFSTATE_SLOPPY) {
  if (pf_tcp_track_sloppy(src, dst, state, pd, reason) == PF_DROP)
   return (PF_DROP);
 } else {
  if (pf_tcp_track_full(src, dst, state, kif, m, off, pd, reason,
      &copyback) == PF_DROP)
   return (PF_DROP);
 }


 if ((*state)->key[PF_SK_WIRE] != (*state)->key[PF_SK_STACK]) {
  struct pf_state_key *nk = (*state)->key[pd->didx];

  if (PF_ANEQ(pd->src, &nk->addr[pd->sidx], pd->af) ||
      nk->port[pd->sidx] != th->th_sport)
   pf_change_ap(m, pd->src, &th->th_sport,
       pd->ip_sum, &th->th_sum, &nk->addr[pd->sidx],
       nk->port[pd->sidx], 0, pd->af);

  if (PF_ANEQ(pd->dst, &nk->addr[pd->didx], pd->af) ||
      nk->port[pd->didx] != th->th_dport)
   pf_change_ap(m, pd->dst, &th->th_dport,
       pd->ip_sum, &th->th_sum, &nk->addr[pd->didx],
       nk->port[pd->didx], 0, pd->af);
  copyback = 1;
 }


 if (copyback)
  m_copyback(m, off, sizeof(*th), (caddr_t)th);

 return (PF_PASS);
}
