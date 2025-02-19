
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


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef scalar_t__ uint16_t ;
struct sctphdr {int dummy; } ;
struct TYPE_11__ {int (* sctp_cwnd_update_after_packet_dropped ) (struct sctp_tcb*,struct sctp_nets*,struct sctp_pktdrop_chunk*,scalar_t__*,scalar_t__*) ;} ;
struct TYPE_12__ {scalar_t__ peers_rwnd; scalar_t__ total_flight; scalar_t__ sat_t3_loss_recovery; TYPE_5__ cc_functions; scalar_t__ sat_network; } ;
struct sctp_tcb {TYPE_6__ asoc; TYPE_3__* sctp_ep; } ;
struct TYPE_10__ {int chunk_flags; int chunk_length; } ;
struct sctp_pktdrop_chunk {TYPE_4__ ch; int current_onq; int bottle_bw; int trunc_len; scalar_t__ data; } ;
struct sctp_nets {int dummy; } ;
struct TYPE_7__ {int tsn; } ;
struct sctp_data_chunk {TYPE_1__ dp; } ;
struct sctp_chunkhdr {scalar_t__ chunk_type; int chunk_length; } ;
struct sctp_chunk_desc {scalar_t__ chunk_type; int tsn_ifany; int * data_bytes; } ;
typedef int desc ;
typedef scalar_t__ caddr_t ;
struct TYPE_8__ {scalar_t__ sctp_sws_sender; } ;
struct TYPE_9__ {TYPE_2__ sctp_ep; } ;


 scalar_t__ SCTP_DATA ;
 int SCTP_FROM_MIDDLE_BOX ;
 unsigned int SCTP_SIZE32 (unsigned int) ;
 int SCTP_STAT_INCR (int ) ;
 int memset (struct sctp_chunk_desc*,int ,int) ;
 scalar_t__ ntohl (int ) ;
 unsigned int ntohs (int ) ;
 scalar_t__ process_chunk_drop (struct sctp_tcb*,struct sctp_chunk_desc*,struct sctp_nets*,int) ;
 int sctps_pdrpbwrpt ;
 int sctps_pdrpcrupt ;
 int sctps_pdrpfehos ;
 int sctps_pdrpfmbox ;
 int sctps_pdrpmbct ;
 int sctps_pdrpmbda ;
 int sctps_pdrpnedat ;
 int sctps_pdrppdbrk ;
 int stub1 (struct sctp_tcb*,struct sctp_nets*,struct sctp_pktdrop_chunk*,scalar_t__*,scalar_t__*) ;

__attribute__((used)) static void
sctp_handle_packet_dropped(struct sctp_pktdrop_chunk *cp,
    struct sctp_tcb *stcb, struct sctp_nets *net, uint32_t limit)
{
 uint32_t bottle_bw, on_queue;
 uint16_t trunc_len;
 unsigned int chlen;
 unsigned int at;
 struct sctp_chunk_desc desc;
 struct sctp_chunkhdr *ch;

 chlen = ntohs(cp->ch.chunk_length);
 chlen -= sizeof(struct sctp_pktdrop_chunk);

 if (chlen == 0) {
  ch = ((void*)0);
  if (cp->ch.chunk_flags & SCTP_FROM_MIDDLE_BOX)
   SCTP_STAT_INCR(sctps_pdrpbwrpt);
 } else {
  ch = (struct sctp_chunkhdr *)(cp->data + sizeof(struct sctphdr));
  chlen -= sizeof(struct sctphdr);

  memset(&desc, 0, sizeof(desc));
 }
 trunc_len = (uint16_t)ntohs(cp->trunc_len);
 if (trunc_len > limit) {
  trunc_len = limit;
 }


 while ((ch != ((void*)0)) && (chlen >= sizeof(struct sctp_chunkhdr))) {
  desc.chunk_type = ch->chunk_type;

  at = ntohs(ch->chunk_length);
  if (at < sizeof(struct sctp_chunkhdr)) {

   SCTP_STAT_INCR(sctps_pdrpcrupt);
   break;
  }
  if (trunc_len == 0) {

   if (at > chlen) {

    SCTP_STAT_INCR(sctps_pdrpcrupt);
    break;
   }
  } else {

   if (desc.chunk_type == SCTP_DATA) {
    if (chlen < (sizeof(struct sctp_data_chunk) +
        sizeof(desc.data_bytes))) {
     break;
    }
   } else {
    if (chlen < sizeof(struct sctp_chunkhdr)) {
     break;
    }
   }
  }
  if (desc.chunk_type == SCTP_DATA) {

   if ((cp->ch.chunk_flags & SCTP_FROM_MIDDLE_BOX))
    SCTP_STAT_INCR(sctps_pdrpmbda);

   if (chlen >= (sizeof(struct sctp_data_chunk) + sizeof(uint32_t))) {

    struct sctp_data_chunk *dcp;
    uint8_t *ddp;
    unsigned int iii;

    dcp = (struct sctp_data_chunk *)ch;
    ddp = (uint8_t *)(dcp + 1);
    for (iii = 0; iii < sizeof(desc.data_bytes); iii++) {
     desc.data_bytes[iii] = ddp[iii];
    }
    desc.tsn_ifany = dcp->dp.tsn;
   } else {

    SCTP_STAT_INCR(sctps_pdrpnedat);
    break;
   }
  } else {
   if ((cp->ch.chunk_flags & SCTP_FROM_MIDDLE_BOX))
    SCTP_STAT_INCR(sctps_pdrpmbct);
  }

  if (process_chunk_drop(stcb, &desc, net, cp->ch.chunk_flags)) {
   SCTP_STAT_INCR(sctps_pdrppdbrk);
   break;
  }
  if (SCTP_SIZE32(at) > chlen) {
   break;
  }
  chlen -= SCTP_SIZE32(at);
  if (chlen < sizeof(struct sctp_chunkhdr)) {

   break;
  }
  ch = (struct sctp_chunkhdr *)((caddr_t)ch + SCTP_SIZE32(at));
 }

 if ((cp->ch.chunk_flags & SCTP_FROM_MIDDLE_BOX) == 0) {

  uint32_t a_rwnd;

  SCTP_STAT_INCR(sctps_pdrpfehos);

  bottle_bw = ntohl(cp->bottle_bw);
  on_queue = ntohl(cp->current_onq);
  if (bottle_bw && on_queue) {

   if (bottle_bw > on_queue)
    a_rwnd = bottle_bw - on_queue;
   else
    a_rwnd = 0;

   if (a_rwnd == 0)
    stcb->asoc.peers_rwnd = 0;
   else {
    if (a_rwnd > stcb->asoc.total_flight) {
     stcb->asoc.peers_rwnd =
         a_rwnd - stcb->asoc.total_flight;
    } else {
     stcb->asoc.peers_rwnd = 0;
    }
    if (stcb->asoc.peers_rwnd <
        stcb->sctp_ep->sctp_ep.sctp_sws_sender) {

     stcb->asoc.peers_rwnd = 0;
    }
   }
  }
 } else {
  SCTP_STAT_INCR(sctps_pdrpfmbox);
 }


 if ((cp->ch.chunk_flags & SCTP_FROM_MIDDLE_BOX) &&
     (stcb->asoc.sat_t3_loss_recovery == 0) &&
     (stcb->asoc.sat_network)) {





  stcb->asoc.cc_functions.sctp_cwnd_update_after_packet_dropped(stcb,
      net, cp, &bottle_bw, &on_queue);
 }
}
