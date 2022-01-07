
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u_short ;
typedef int u_int8_t ;
typedef int u_int32_t ;
typedef int u_int16_t ;
struct tcphdr {int th_flags; int th_off; int th_ack; int th_sport; int th_dport; int th_sum; int th_seq; int th_win; } ;
struct pfi_kif {int pfik_ifp; } ;
struct pf_state_peer {int wscale; scalar_t__ seqlo; scalar_t__ seqdiff; int max_win; scalar_t__ state; int seqhi; int * scrub; } ;
struct TYPE_10__ {TYPE_5__* ptr; } ;
struct TYPE_9__ {scalar_t__ state; } ;
struct TYPE_8__ {scalar_t__ state; } ;
struct pf_state {scalar_t__ direction; scalar_t__* packets; TYPE_4__ rule; TYPE_3__ src; TYPE_2__ dst; int timeout; int expire; int * src_node; } ;
struct TYPE_7__ {struct tcphdr* tcp; } ;
struct pf_pdesc {int flags; int p_len; scalar_t__ dir; int src; int dst; int af; TYPE_1__ hdr; } ;
struct mbuf {int dummy; } ;
struct TYPE_12__ {scalar_t__ debug; } ;
struct TYPE_11__ {int return_ttl; } ;


 int MAX (int,int) ;
 int MAXACKWINDOW ;
 int PFDESC_IP_REAS ;
 int PFDESC_TCP_NORM ;
 int PFRES_BADSTATE ;
 int PFRES_MEMORY ;
 int PFRES_SRCLIMIT ;
 int PFTM_TCP_CLOSED ;
 int PFTM_TCP_CLOSING ;
 int PFTM_TCP_ESTABLISHED ;
 int PFTM_TCP_FIN_WAIT ;
 int PFTM_TCP_OPENING ;
 scalar_t__ PF_DEBUG_MISC ;
 int PF_DROP ;
 scalar_t__ PF_IN ;
 int PF_PASS ;
 int PF_WSCALE_FLAG ;
 int PF_WSCALE_MASK ;
 int REASON_SET (int *,int ) ;
 scalar_t__ SEQ_GEQ (int,int) ;
 scalar_t__ SEQ_GT (int,int) ;
 scalar_t__ TCPS_CLOSING ;
 scalar_t__ TCPS_ESTABLISHED ;
 scalar_t__ TCPS_FIN_WAIT_2 ;
 scalar_t__ TCPS_SYN_SENT ;
 void* TCPS_TIME_WAIT ;
 int TH_ACK ;
 int TH_FIN ;
 int TH_RST ;
 int TH_SYN ;
 TYPE_6__ V_pf_status ;
 scalar_t__ arc4random () ;
 int htonl (int) ;
 int ntohl (int ) ;
 int ntohs (int ) ;
 int pf_change_proto_a (struct mbuf*,int *,int *,int ,int ) ;
 int pf_get_wscale (struct mbuf*,int,int,int ) ;
 scalar_t__ pf_modulate_sack (struct mbuf*,int,struct pf_pdesc*,struct tcphdr*,struct pf_state_peer*) ;
 scalar_t__ pf_normalize_tcp_init (struct mbuf*,int,struct pf_pdesc*,struct tcphdr*,struct pf_state_peer*,struct pf_state_peer*) ;
 scalar_t__ pf_normalize_tcp_stateful (struct mbuf*,int,struct pf_pdesc*,int *,struct tcphdr*,struct pf_state*,struct pf_state_peer*,struct pf_state_peer*,int*) ;
 int pf_print_flags (int) ;
 int pf_print_state (struct pf_state*) ;
 int pf_send_tcp (int *,TYPE_5__*,int ,int ,int ,int ,int ,int,int ,int,int ,int ,int ,int,int ,int ) ;
 scalar_t__ pf_src_connlimit (struct pf_state**) ;
 int printf (char*,...) ;
 int time_uptime ;

__attribute__((used)) static int
pf_tcp_track_full(struct pf_state_peer *src, struct pf_state_peer *dst,
 struct pf_state **state, struct pfi_kif *kif, struct mbuf *m, int off,
 struct pf_pdesc *pd, u_short *reason, int *copyback)
{
 struct tcphdr *th = pd->hdr.tcp;
 u_int16_t win = ntohs(th->th_win);
 u_int32_t ack, end, seq, orig_seq;
 u_int8_t sws, dws;
 int ackskew;

 if (src->wscale && dst->wscale && !(th->th_flags & TH_SYN)) {
  sws = src->wscale & PF_WSCALE_MASK;
  dws = dst->wscale & PF_WSCALE_MASK;
 } else
  sws = dws = 0;







 orig_seq = seq = ntohl(th->th_seq);
 if (src->seqlo == 0) {


  if ((pd->flags & PFDESC_TCP_NORM || dst->scrub) &&
      src->scrub == ((void*)0)) {
   if (pf_normalize_tcp_init(m, off, pd, th, src, dst)) {
    REASON_SET(reason, PFRES_MEMORY);
    return (PF_DROP);
   }
  }


  if (dst->seqdiff && !src->seqdiff) {

   while ((src->seqdiff = arc4random() - seq) == 0)
    ;
   ack = ntohl(th->th_ack) - dst->seqdiff;
   pf_change_proto_a(m, &th->th_seq, &th->th_sum, htonl(seq +
       src->seqdiff), 0);
   pf_change_proto_a(m, &th->th_ack, &th->th_sum, htonl(ack), 0);
   *copyback = 1;
  } else {
   ack = ntohl(th->th_ack);
  }

  end = seq + pd->p_len;
  if (th->th_flags & TH_SYN) {
   end++;
   if (dst->wscale & PF_WSCALE_FLAG) {
    src->wscale = pf_get_wscale(m, off, th->th_off,
        pd->af);
    if (src->wscale & PF_WSCALE_FLAG) {


     sws = src->wscale & PF_WSCALE_MASK;
     win = ((u_int32_t)win + (1 << sws) - 1)
         >> sws;
     dws = dst->wscale & PF_WSCALE_MASK;
    } else {

     dst->max_win <<= dst->wscale &
         PF_WSCALE_MASK;

     dst->wscale = 0;
    }
   }
  }
  if (th->th_flags & TH_FIN)
   end++;

  src->seqlo = seq;
  if (src->state < TCPS_SYN_SENT)
   src->state = TCPS_SYN_SENT;






  if (src->seqhi == 1 ||
      SEQ_GEQ(end + MAX(1, dst->max_win << dws), src->seqhi))
   src->seqhi = end + MAX(1, dst->max_win << dws);
  if (win > src->max_win)
   src->max_win = win;

 } else {
  ack = ntohl(th->th_ack) - dst->seqdiff;
  if (src->seqdiff) {

   pf_change_proto_a(m, &th->th_seq, &th->th_sum, htonl(seq +
       src->seqdiff), 0);
   pf_change_proto_a(m, &th->th_ack, &th->th_sum, htonl(ack), 0);
   *copyback = 1;
  }
  end = seq + pd->p_len;
  if (th->th_flags & TH_SYN)
   end++;
  if (th->th_flags & TH_FIN)
   end++;
 }

 if ((th->th_flags & TH_ACK) == 0) {

  ack = dst->seqlo;
 } else if ((ack == 0 &&
     (th->th_flags & (TH_ACK|TH_RST)) == (TH_ACK|TH_RST)) ||

     (dst->state < TCPS_SYN_SENT)) {




  ack = dst->seqlo;
 }

 if (seq == end) {

  seq = src->seqlo;
  end = seq;
 }

 ackskew = dst->seqlo - ack;
 if (dst->seqdiff && (th->th_off << 2) > sizeof(struct tcphdr)) {
  if (pf_modulate_sack(m, off, pd, th, dst))
   *copyback = 1;
 }



 if (SEQ_GEQ(src->seqhi, end) &&

     SEQ_GEQ(seq, src->seqlo - (dst->max_win << dws)) &&

     (ackskew >= -(0xffff + 1500)) &&

     (ackskew <= ((0xffff + 1500) << sws)) &&

     ((th->th_flags & TH_RST) == 0 || orig_seq == src->seqlo ||
     (orig_seq == src->seqlo + 1) || (orig_seq + 1 == src->seqlo) ||
     (pd->flags & PFDESC_IP_REAS) == 0)) {


  if (dst->scrub || src->scrub) {
   if (pf_normalize_tcp_stateful(m, off, pd, reason, th,
       *state, src, dst, copyback))
    return (PF_DROP);
  }


  if (src->max_win < win)
   src->max_win = win;

  if (SEQ_GT(end, src->seqlo))
   src->seqlo = end;

  if (SEQ_GEQ(ack + (win << sws), dst->seqhi))
   dst->seqhi = ack + MAX((win << sws), 1);



  if (th->th_flags & TH_SYN)
   if (src->state < TCPS_SYN_SENT)
    src->state = TCPS_SYN_SENT;
  if (th->th_flags & TH_FIN)
   if (src->state < TCPS_CLOSING)
    src->state = TCPS_CLOSING;
  if (th->th_flags & TH_ACK) {
   if (dst->state == TCPS_SYN_SENT) {
    dst->state = TCPS_ESTABLISHED;
    if (src->state == TCPS_ESTABLISHED &&
        (*state)->src_node != ((void*)0) &&
        pf_src_connlimit(state)) {
     REASON_SET(reason, PFRES_SRCLIMIT);
     return (PF_DROP);
    }
   } else if (dst->state == TCPS_CLOSING)
    dst->state = TCPS_FIN_WAIT_2;
  }
  if (th->th_flags & TH_RST)
   src->state = dst->state = TCPS_TIME_WAIT;


  (*state)->expire = time_uptime;
  if (src->state >= TCPS_FIN_WAIT_2 &&
      dst->state >= TCPS_FIN_WAIT_2)
   (*state)->timeout = PFTM_TCP_CLOSED;
  else if (src->state >= TCPS_CLOSING &&
      dst->state >= TCPS_CLOSING)
   (*state)->timeout = PFTM_TCP_FIN_WAIT;
  else if (src->state < TCPS_ESTABLISHED ||
      dst->state < TCPS_ESTABLISHED)
   (*state)->timeout = PFTM_TCP_OPENING;
  else if (src->state >= TCPS_CLOSING ||
      dst->state >= TCPS_CLOSING)
   (*state)->timeout = PFTM_TCP_CLOSING;
  else
   (*state)->timeout = PFTM_TCP_ESTABLISHED;



 } else if ((dst->state < TCPS_SYN_SENT ||
  dst->state >= TCPS_FIN_WAIT_2 ||
  src->state >= TCPS_FIN_WAIT_2) &&
     SEQ_GEQ(src->seqhi + (0xffff + 1500), end) &&

     SEQ_GEQ(seq, src->seqlo - (0xffff + 1500))) {
  if (V_pf_status.debug >= PF_DEBUG_MISC) {
   printf("pf: loose state match: ");
   pf_print_state(*state);
   pf_print_flags(th->th_flags);
   printf(" seq=%u (%u) ack=%u len=%u ackskew=%d "
       "pkts=%llu:%llu dir=%s,%s\n", seq, orig_seq, ack,
       pd->p_len, ackskew, (unsigned long long)(*state)->packets[0],
       (unsigned long long)(*state)->packets[1],
       pd->dir == PF_IN ? "in" : "out",
       pd->dir == (*state)->direction ? "fwd" : "rev");
  }

  if (dst->scrub || src->scrub) {
   if (pf_normalize_tcp_stateful(m, off, pd, reason, th,
       *state, src, dst, copyback))
    return (PF_DROP);
  }


  if (src->max_win < win)
   src->max_win = win;

  if (SEQ_GT(end, src->seqlo))
   src->seqlo = end;

  if (SEQ_GEQ(ack + (win << sws), dst->seqhi))
   dst->seqhi = ack + MAX((win << sws), 1);






  if (th->th_flags & TH_FIN)
   if (src->state < TCPS_CLOSING)
    src->state = TCPS_CLOSING;
  if (th->th_flags & TH_RST)
   src->state = dst->state = TCPS_TIME_WAIT;



 } else {
  if ((*state)->dst.state == TCPS_SYN_SENT &&
      (*state)->src.state == TCPS_SYN_SENT) {

   if (!(th->th_flags & TH_RST))
    pf_send_tcp(((void*)0), (*state)->rule.ptr, pd->af,
        pd->dst, pd->src, th->th_dport,
        th->th_sport, ntohl(th->th_ack), 0,
        TH_RST, 0, 0,
        (*state)->rule.ptr->return_ttl, 1, 0,
        kif->pfik_ifp);
   src->seqlo = 0;
   src->seqhi = 1;
   src->max_win = 1;
  } else if (V_pf_status.debug >= PF_DEBUG_MISC) {
   printf("pf: BAD state: ");
   pf_print_state(*state);
   pf_print_flags(th->th_flags);
   printf(" seq=%u (%u) ack=%u len=%u ackskew=%d "
       "pkts=%llu:%llu dir=%s,%s\n",
       seq, orig_seq, ack, pd->p_len, ackskew,
       (unsigned long long)(*state)->packets[0],
       (unsigned long long)(*state)->packets[1],
       pd->dir == PF_IN ? "in" : "out",
       pd->dir == (*state)->direction ? "fwd" : "rev");
   printf("pf: State failure on: %c %c %c %c | %c %c\n",
       SEQ_GEQ(src->seqhi, end) ? ' ' : '1',
       SEQ_GEQ(seq, src->seqlo - (dst->max_win << dws)) ?
       ' ': '2',
       (ackskew >= -(0xffff + 1500)) ? ' ' : '3',
       (ackskew <= ((0xffff + 1500) << sws)) ? ' ' : '4',
       SEQ_GEQ(src->seqhi + (0xffff + 1500), end) ?' ' :'5',
       SEQ_GEQ(seq, src->seqlo - (0xffff + 1500)) ?' ' :'6');
  }
  REASON_SET(reason, PFRES_BADSTATE);
  return (PF_DROP);
 }

 return (PF_PASS);
}
