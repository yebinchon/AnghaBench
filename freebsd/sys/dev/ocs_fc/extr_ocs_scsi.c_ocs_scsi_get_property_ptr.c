
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_10__ {int hw; TYPE_2__* domain; } ;
typedef TYPE_3__ ocs_t ;
typedef int ocs_scsi_property_e ;
struct TYPE_9__ {TYPE_1__* sport; } ;
struct TYPE_8__ {int * wwnn_str; } ;


 int OCS_HW_BIOS_VERSION_STRING ;
 int OCS_HW_PORTNUM ;
 int OCS_HW_VPD ;
 int OCS_HW_VPD_LEN ;
 int OCS_HW_WWN_NODE ;
 int OCS_HW_WWN_PORT ;






 void* ocs_find_vpd (int *,int ,char*) ;
 int ocs_hw_get (int *,int ,int *) ;
 void* ocs_hw_get_ptr (int *,int ) ;
 int ocs_log_debug (TYPE_3__*,char*,int) ;
 int ocs_log_test (TYPE_3__*,char*) ;
 int ocs_strlen (void*) ;
 int scsi_log (TYPE_3__*,char*) ;

void *ocs_scsi_get_property_ptr(ocs_t *ocs, ocs_scsi_property_e prop)
{
 void *rc = ((void*)0);

 switch (prop) {
 case 129:
  rc = ocs_hw_get_ptr(&ocs->hw, OCS_HW_WWN_NODE);
  break;
 case 128:
  rc = ocs_hw_get_ptr(&ocs->hw, OCS_HW_WWN_PORT);
  break;
 case 131:
  rc = ocs_hw_get_ptr(&ocs->hw, OCS_HW_PORTNUM);
  break;
 case 133:
  rc = ocs_hw_get_ptr(&ocs->hw, OCS_HW_BIOS_VERSION_STRING);
  break;
 default:
  break;
 }

 if (rc == ((void*)0)) {
  ocs_log_debug(ocs, "invalid property request %d\n", prop);
 }
 return rc;
}
