
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ active; } ;
struct bstp_port {int bp_state; int bp_role; int bp_protover; scalar_t__ bp_tc_ack; TYPE_1__ bp_tc_timer; scalar_t__ bp_agree; scalar_t__ bp_proposing; } ;




 int BSTP_PDU_F_A ;
 int BSTP_PDU_F_ALT ;
 int BSTP_PDU_F_DESG ;
 int BSTP_PDU_F_F ;
 int BSTP_PDU_F_L ;
 int BSTP_PDU_F_P ;
 int BSTP_PDU_F_ROOT ;
 int BSTP_PDU_F_TC ;
 int BSTP_PDU_F_TCA ;
 int BSTP_PDU_PRSHIFT ;
 int BSTP_PDU_RSTPMASK ;
 int BSTP_PDU_STPMASK ;







__attribute__((used)) static int
bstp_pdu_flags(struct bstp_port *bp)
{
 int flags = 0;

 if (bp->bp_proposing && bp->bp_state != 135)
  flags |= BSTP_PDU_F_P;

 if (bp->bp_agree)
  flags |= BSTP_PDU_F_A;

 if (bp->bp_tc_timer.active)
  flags |= BSTP_PDU_F_TC;

 if (bp->bp_tc_ack)
  flags |= BSTP_PDU_F_TCA;

 switch (bp->bp_state) {
  case 134:
   flags |= BSTP_PDU_F_L;
   break;

  case 135:
   flags |= (BSTP_PDU_F_L | BSTP_PDU_F_F);
   break;
 }

 switch (bp->bp_role) {
  case 128:
   flags |=
    (BSTP_PDU_F_ROOT << BSTP_PDU_PRSHIFT);
   break;

  case 131:
  case 130:
   flags |=
    (BSTP_PDU_F_ALT << BSTP_PDU_PRSHIFT);
   break;

  case 129:
   flags |=
    (BSTP_PDU_F_DESG << BSTP_PDU_PRSHIFT);
   break;
 }


 switch (bp->bp_protover) {
  case 132:
   flags &= BSTP_PDU_STPMASK;
   break;
  case 133:
   flags &= BSTP_PDU_RSTPMASK;
   break;
 }
 return (flags);
}
