
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct ocs_softc {int attached; } ;
typedef int ocs_scsi_del_target_reason_e ;
struct TYPE_11__ {TYPE_1__* sport; struct ocs_softc* ocs; } ;
typedef TYPE_2__ ocs_node_t ;
struct TYPE_12__ {int ldt; TYPE_4__* tgt; } ;
typedef TYPE_3__ ocs_fcport ;
struct TYPE_13__ {int gone_timer; int state; } ;
typedef TYPE_4__ ocs_fc_target_t ;
typedef int int32_t ;
struct TYPE_10__ {TYPE_3__* tgt_data; } ;


 int OCS_TGT_STATE_LOST ;
 int callout_active (int *) ;
 int callout_reset (int *,int ,int ,TYPE_3__*) ;
 int hz ;
 int ocs_delete_target (struct ocs_softc*,TYPE_3__*,int) ;
 int ocs_ldt ;
 int ocs_log_err (struct ocs_softc*,char*) ;
 int ocs_tgt_find (TYPE_3__*,TYPE_2__*) ;

int32_t
ocs_scsi_del_target(ocs_node_t *node, ocs_scsi_del_target_reason_e reason)
{
 struct ocs_softc *ocs = node->ocs;
 ocs_fcport *fcp = ((void*)0);
 ocs_fc_target_t *tgt = ((void*)0);
 int32_t tgt_id;

 if (ocs == ((void*)0)) {
  ocs_log_err(ocs,"OCS is NULL \n");
  return -1;
 }

 fcp = node->sport->tgt_data;
 if (fcp == ((void*)0)) {
  ocs_log_err(ocs,"FCP is NULL \n");
  return -1;
 }

 tgt_id = ocs_tgt_find(fcp, node);
 if (tgt_id == -1) {
  ocs_log_err(ocs,"target is invalid\n");
  return -1;
 }

 tgt = &fcp->tgt[tgt_id];


 if(!ocs->attached) {
  ocs_delete_target(ocs, fcp, tgt_id);
 } else {

  tgt->state = OCS_TGT_STATE_LOST;
  tgt->gone_timer = 30;
  if (!callout_active(&fcp->ldt)) {
   callout_reset(&fcp->ldt, hz, ocs_ldt, fcp);
  }
 }

 return 0;
}
