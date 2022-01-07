
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int state; } ;
struct sctp_tcb {TYPE_1__ asoc; } ;


 int KASSERT (int,char*) ;
 int SCTP_CLEAR_SUBSTATE (struct sctp_tcb*,int ) ;
 int SCTP_PROBE6 (int ,int *,struct sctp_tcb*,int *,struct sctp_tcb*,int *,int) ;
 int SCTP_STATE_EMPTY ;
 int SCTP_STATE_INUSE ;
 int SCTP_STATE_MASK ;
 int SCTP_STATE_SHUTDOWN_ACK_SENT ;
 int SCTP_STATE_SHUTDOWN_PENDING ;
 int SCTP_STATE_SHUTDOWN_RECEIVED ;
 int SCTP_STATE_SHUTDOWN_SENT ;
 int state__change ;

void
sctp_set_state(struct sctp_tcb *stcb, int new_state)
{




 KASSERT((new_state & ~SCTP_STATE_MASK) == 0,
     ("sctp_set_state: Can't set substate (new_state = %x)",
     new_state));
 stcb->asoc.state = (stcb->asoc.state & ~SCTP_STATE_MASK) | new_state;
 if ((new_state == SCTP_STATE_SHUTDOWN_RECEIVED) ||
     (new_state == SCTP_STATE_SHUTDOWN_SENT) ||
     (new_state == SCTP_STATE_SHUTDOWN_ACK_SENT)) {
  SCTP_CLEAR_SUBSTATE(stcb, SCTP_STATE_SHUTDOWN_PENDING);
 }







}
