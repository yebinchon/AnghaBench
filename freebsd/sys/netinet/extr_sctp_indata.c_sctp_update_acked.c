
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {scalar_t__ total_flight; scalar_t__ peers_rwnd; } ;
struct sctp_tcb {TYPE_1__ asoc; } ;
struct sctp_shutdown_chunk {int cumulative_tsn_ack; } ;


 scalar_t__ ntohl (int ) ;
 int sctp_express_handle_sack (struct sctp_tcb*,scalar_t__,scalar_t__,int*,int ) ;

void
sctp_update_acked(struct sctp_tcb *stcb, struct sctp_shutdown_chunk *cp, int *abort_flag)
{

 uint32_t cum_ack, a_rwnd;

 cum_ack = ntohl(cp->cumulative_tsn_ack);

 a_rwnd = stcb->asoc.peers_rwnd + stcb->asoc.total_flight;


 sctp_express_handle_sack(stcb, cum_ack, a_rwnd, abort_flag, 0);
}
