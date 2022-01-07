
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ target_id_t ;
struct ccb_hdr {scalar_t__ target_id; size_t target_lun; } ;
typedef int ocs_tgt_resource_t ;
struct TYPE_3__ {int * targ_rsrc; int targ_rsrc_wildcard; } ;
typedef TYPE_1__ ocs_fcport ;
typedef size_t lun_id_t ;


 int CAM_LUN_INVALID ;
 size_t CAM_LUN_WILDCARD ;
 scalar_t__ CAM_TARGET_WILDCARD ;
 size_t OCS_MAX_LUN ;

__attribute__((used)) static ocs_tgt_resource_t *ocs_tgt_resource_get(ocs_fcport *fcp,
    struct ccb_hdr *ccb_h, uint32_t *status)
{
 target_id_t tid = ccb_h->target_id;
 lun_id_t lun = ccb_h->target_lun;

 if (CAM_TARGET_WILDCARD == tid) {
  if (CAM_LUN_WILDCARD != lun) {
   *status = CAM_LUN_INVALID;
   return ((void*)0);
  }
  return &fcp->targ_rsrc_wildcard;
 } else {
  if (lun < OCS_MAX_LUN) {
   return &fcp->targ_rsrc[lun];
  } else {
   *status = CAM_LUN_INVALID;
   return ((void*)0);
  }
 }

}
