
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr {int dummy; } ;
struct TYPE_2__ {struct sctp_nets* primary_destination; int nets; int * alternate; } ;
struct sctp_tcb {TYPE_1__ asoc; } ;
struct sctp_nets {int dest_state; } ;


 int SCTP_ADDR_PF ;
 int SCTP_ADDR_REQ_PRIMARY ;
 int SCTP_ADDR_UNCONFIRMED ;
 struct sctp_nets* TAILQ_FIRST (int *) ;
 int TAILQ_INSERT_HEAD (int *,struct sctp_nets*,int ) ;
 int TAILQ_REMOVE (int *,struct sctp_nets*,int ) ;
 struct sctp_nets* sctp_findnet (struct sctp_tcb*,struct sockaddr*) ;
 int sctp_free_remote_addr (int *) ;
 int sctp_next ;

int
sctp_set_primary_addr(struct sctp_tcb *stcb, struct sockaddr *sa,
    struct sctp_nets *net)
{

 if (net == ((void*)0) && sa)
  net = sctp_findnet(stcb, sa);

 if (net == ((void*)0)) {

  return (-1);
 } else {

  if (net->dest_state & SCTP_ADDR_UNCONFIRMED) {

   net->dest_state |= SCTP_ADDR_REQ_PRIMARY;
   return (0);
  }
  stcb->asoc.primary_destination = net;
  if (!(net->dest_state & SCTP_ADDR_PF) && (stcb->asoc.alternate)) {
   sctp_free_remote_addr(stcb->asoc.alternate);
   stcb->asoc.alternate = ((void*)0);
  }
  net = TAILQ_FIRST(&stcb->asoc.nets);
  if (net != stcb->asoc.primary_destination) {





   TAILQ_REMOVE(&stcb->asoc.nets, stcb->asoc.primary_destination, sctp_next);
   TAILQ_INSERT_HEAD(&stcb->asoc.nets, stcb->asoc.primary_destination, sctp_next);
  }
  return (0);
 }
}
