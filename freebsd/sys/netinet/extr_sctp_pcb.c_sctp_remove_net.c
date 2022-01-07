
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_association {struct sctp_nets* alternate; struct sctp_nets* last_control_chunk_from; int nets; struct sctp_nets* last_data_chunk_from; struct sctp_nets* primary_destination; struct sctp_nets* deleted_primary; int numnets; } ;
struct sctp_tcb {struct sctp_association asoc; int sctp_ep; } ;
struct sctp_nets {int lastsv; int lastsa; int ref_count; } ;


 int SCTPDBG (int ,char*) ;
 int SCTP_DEBUG_ASCONF1 ;
 int SCTP_MOBILITY_BASE ;
 int SCTP_MOBILITY_FASTHANDOFF ;
 int SCTP_MOBILITY_PRIM_DELETED ;
 int SCTP_TIMER_TYPE_PRIM_DELETED ;
 void* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct sctp_nets*,int ) ;
 int atomic_add_int (int *,int) ;
 int memset (int *,int ,int) ;
 struct sctp_nets* sctp_find_alternate_net (struct sctp_tcb*,struct sctp_nets*,int ) ;
 int sctp_free_remote_addr (struct sctp_nets*) ;
 scalar_t__ sctp_is_mobility_feature_on (int ,int ) ;
 int sctp_mobility_feature_on (int ,int ) ;
 int sctp_next ;
 int sctp_timer_start (int ,int ,struct sctp_tcb*,int *) ;

void
sctp_remove_net(struct sctp_tcb *stcb, struct sctp_nets *net)
{
 struct sctp_association *asoc;

 asoc = &stcb->asoc;
 asoc->numnets--;
 TAILQ_REMOVE(&asoc->nets, net, sctp_next);
 if (net == asoc->primary_destination) {

  struct sctp_nets *lnet;

  lnet = TAILQ_FIRST(&asoc->nets);





  if (sctp_is_mobility_feature_on(stcb->sctp_ep,
      SCTP_MOBILITY_BASE) ||
      sctp_is_mobility_feature_on(stcb->sctp_ep,
      SCTP_MOBILITY_FASTHANDOFF)) {
   SCTPDBG(SCTP_DEBUG_ASCONF1, "remove_net: primary dst is deleting\n");
   if (asoc->deleted_primary != ((void*)0)) {
    SCTPDBG(SCTP_DEBUG_ASCONF1, "remove_net: deleted primary may be already stored\n");
    goto out;
   }
   asoc->deleted_primary = net;
   atomic_add_int(&net->ref_count, 1);
   memset(&net->lastsa, 0, sizeof(net->lastsa));
   memset(&net->lastsv, 0, sizeof(net->lastsv));
   sctp_mobility_feature_on(stcb->sctp_ep,
       SCTP_MOBILITY_PRIM_DELETED);
   sctp_timer_start(SCTP_TIMER_TYPE_PRIM_DELETED,
       stcb->sctp_ep, stcb, ((void*)0));
  }
out:

  asoc->primary_destination = sctp_find_alternate_net(stcb, lnet, 0);
 }
 if (net == asoc->last_data_chunk_from) {

  asoc->last_data_chunk_from = TAILQ_FIRST(&asoc->nets);
 }
 if (net == asoc->last_control_chunk_from) {

  asoc->last_control_chunk_from = ((void*)0);
 }
 if (net == stcb->asoc.alternate) {
  sctp_free_remote_addr(stcb->asoc.alternate);
  stcb->asoc.alternate = ((void*)0);
 }
 sctp_free_remote_addr(net);
}
