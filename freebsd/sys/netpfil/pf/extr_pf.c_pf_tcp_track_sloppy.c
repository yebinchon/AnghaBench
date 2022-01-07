
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_short ;
struct tcphdr {int th_flags; } ;
struct pf_state_peer {scalar_t__ state; scalar_t__ seqlo; } ;
struct pf_state {int timeout; int expire; int * src_node; } ;
struct TYPE_2__ {struct tcphdr* tcp; } ;
struct pf_pdesc {TYPE_1__ hdr; } ;


 int PFRES_SRCLIMIT ;
 int PFTM_TCP_CLOSED ;
 int PFTM_TCP_CLOSING ;
 int PFTM_TCP_ESTABLISHED ;
 int PFTM_TCP_FIN_WAIT ;
 int PFTM_TCP_OPENING ;
 int PF_DROP ;
 int PF_PASS ;
 int REASON_SET (int *,int ) ;
 scalar_t__ TCPS_CLOSING ;
 scalar_t__ TCPS_ESTABLISHED ;
 scalar_t__ TCPS_FIN_WAIT_2 ;
 scalar_t__ TCPS_SYN_SENT ;
 scalar_t__ TCPS_TIME_WAIT ;
 int TH_ACK ;
 int TH_FIN ;
 int TH_RST ;
 int TH_SYN ;
 scalar_t__ pf_src_connlimit (struct pf_state**) ;
 int time_uptime ;

__attribute__((used)) static int
pf_tcp_track_sloppy(struct pf_state_peer *src, struct pf_state_peer *dst,
 struct pf_state **state, struct pf_pdesc *pd, u_short *reason)
{
 struct tcphdr *th = pd->hdr.tcp;

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
  } else if (dst->state == TCPS_CLOSING) {
   dst->state = TCPS_FIN_WAIT_2;
  } else if (src->state == TCPS_SYN_SENT &&
      dst->state < TCPS_SYN_SENT) {






   dst->state = src->state = TCPS_ESTABLISHED;
   if ((*state)->src_node != ((void*)0) &&
       pf_src_connlimit(state)) {
    REASON_SET(reason, PFRES_SRCLIMIT);
    return (PF_DROP);
   }
  } else if (src->state == TCPS_CLOSING &&
      dst->state == TCPS_ESTABLISHED &&
      dst->seqlo == 0) {





   dst->state = TCPS_CLOSING;
  }
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

 return (PF_PASS);
}
