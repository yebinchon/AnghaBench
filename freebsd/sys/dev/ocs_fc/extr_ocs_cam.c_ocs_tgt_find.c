
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint32_t ;
typedef int ocs_node_t ;
struct TYPE_4__ {TYPE_2__* tgt; } ;
typedef TYPE_1__ ocs_fcport ;
struct TYPE_5__ {scalar_t__ state; scalar_t__ wwpn; } ;
typedef TYPE_2__ ocs_fc_target_t ;
typedef size_t int32_t ;


 size_t OCS_MAX_TARGETS ;
 scalar_t__ OCS_TGT_STATE_NONE ;
 scalar_t__ ocs_node_get_wwpn (int *) ;

int32_t
ocs_tgt_find(ocs_fcport *fcp, ocs_node_t *node)
{
 ocs_fc_target_t *tgt = ((void*)0);
 uint32_t i;

 for (i = 0; i < OCS_MAX_TARGETS; i++) {
  tgt = &fcp->tgt[i];

  if (tgt->state == OCS_TGT_STATE_NONE)
   continue;

  if (ocs_node_get_wwpn(node) == tgt->wwpn) {
   return i;
  }
 }

 return -1;
}
