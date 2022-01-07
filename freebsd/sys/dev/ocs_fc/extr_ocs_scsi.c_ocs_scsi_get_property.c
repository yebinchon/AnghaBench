
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int io_pool; } ;
typedef TYPE_1__ ocs_xport_t ;
struct TYPE_6__ {int ctrlmask; int hw; TYPE_1__* xport; } ;
typedef TYPE_2__ ocs_t ;
typedef int ocs_scsi_property_e ;


 int OCS_CTRLMASK_TEST_CHAINED_SGLS ;
 int OCS_FC_MAX_SGL ;
 int OCS_HW_DIF_CAPABLE ;
 int OCS_HW_DIF_MULTI_SEPARATE ;
 int OCS_HW_MAX_SGE ;
 int OCS_HW_N_SGL ;
 int OCS_HW_SEND_FRAME_CAPABLE ;







 int ocs_hw_get (int *,int ,int*) ;
 int ocs_io_pool_allocated (int ) ;
 int ocs_log_debug (TYPE_2__*,char*,int) ;

uint32_t
ocs_scsi_get_property(ocs_t *ocs, ocs_scsi_property_e prop)
{
 ocs_xport_t *xport = ocs->xport;
 uint32_t val;

 switch (prop) {
 case 129:
  if (0 == ocs_hw_get(&ocs->hw, OCS_HW_MAX_SGE, &val)) {
   return val;
  }
  break;
 case 128:
  if (ocs->ctrlmask & OCS_CTRLMASK_TEST_CHAINED_SGLS) {




   return (OCS_FC_MAX_SGL);
  }
  if (0 == ocs_hw_get(&ocs->hw, OCS_HW_N_SGL, &val)) {
   return val;
  }
  break;
 case 130:
  return ocs_io_pool_allocated(xport->io_pool);
 case 134:
         if (0 == ocs_hw_get(&ocs->hw, OCS_HW_DIF_CAPABLE, &val)) {
                 return val;
         }
  break;
 case 131:
  return 0;
 case 133:
         if (ocs_hw_get(&ocs->hw, OCS_HW_DIF_MULTI_SEPARATE, &val) == 0) {
                 return val;
         }
  break;
 case 132:

  if (ocs_hw_get(&ocs->hw, OCS_HW_SEND_FRAME_CAPABLE, &val) == 0) {
   return ! val;
  }
  break;
 default:
  break;
 }

 ocs_log_debug(ocs, "invalid property request %d\n", prop);
 return 0;
}
