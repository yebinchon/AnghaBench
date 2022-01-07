
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bstp_state {scalar_t__ bs_running; scalar_t__ bs_txholdcount; } ;
struct TYPE_2__ {scalar_t__ active; } ;
struct bstp_port {scalar_t__ bp_txcount; scalar_t__ bp_protover; int bp_role; int bp_flags; int bp_desg_htime; TYPE_1__ bp_hello_timer; scalar_t__ bp_tc_ack; } ;


 int BSTP_PORT_NEWINFO ;
 scalar_t__ BSTP_PROTO_RSTP ;


 int bstp_hello_timer_expiry (struct bstp_state*,struct bstp_port*) ;
 int bstp_timer_start (TYPE_1__*,int ) ;
 int bstp_transmit_bpdu (struct bstp_state*,struct bstp_port*) ;
 int bstp_transmit_tcn (struct bstp_state*,struct bstp_port*) ;

__attribute__((used)) static void
bstp_transmit(struct bstp_state *bs, struct bstp_port *bp)
{
 if (bs->bs_running == 0)
  return;





 if (bp->bp_hello_timer.active == 0) {

  bstp_hello_timer_expiry(bs, bp);
  return;
 }
 if (bp->bp_txcount > bs->bs_txholdcount)

  return;

 if (bp->bp_protover == BSTP_PROTO_RSTP) {
  bstp_transmit_bpdu(bs, bp);
  bp->bp_tc_ack = 0;
 } else {
  switch (bp->bp_role) {
   case 129:
    bstp_transmit_bpdu(bs, bp);
    bp->bp_tc_ack = 0;
    break;

   case 128:
    bstp_transmit_tcn(bs, bp);
    break;
  }
 }
 bstp_timer_start(&bp->bp_hello_timer, bp->bp_desg_htime);
 bp->bp_flags &= ~BSTP_PORT_NEWINFO;
}
