
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int state; } ;
struct sctp_tcb {TYPE_1__ asoc; } ;


 int KASSERT (int,char*) ;
 int SCTP_PROBE6 (int ,int *,struct sctp_tcb*,int *,struct sctp_tcb*,int *,int) ;
 int SCTP_STATE_ABOUT_TO_BE_FREED ;
 int SCTP_STATE_MASK ;
 int SCTP_STATE_SHUTDOWN_PENDING ;
 int state__change ;

void
sctp_add_substate(struct sctp_tcb *stcb, int substate)
{




 KASSERT((substate & SCTP_STATE_MASK) == 0,
     ("sctp_add_substate: Can't set state (substate = %x)",
     substate));
 stcb->asoc.state |= substate;
}
