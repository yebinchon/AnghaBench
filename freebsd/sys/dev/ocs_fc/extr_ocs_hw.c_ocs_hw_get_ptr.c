
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int os; int sli; } ;
typedef TYPE_1__ ocs_hw_t ;
typedef int ocs_hw_property_e ;
 int ocs_log_test (int ,char*,int) ;
 void* sli_get_bios_version_string (int *) ;
 void* sli_get_fw_name (int *,int) ;
 void* sli_get_ipl_name (int *) ;
 void* sli_get_portnum (int *) ;
 void* sli_get_vpd (int *) ;
 int sli_get_vpd_len (int *) ;
 void* sli_get_wwn_node (int *) ;
 void* sli_get_wwn_port (int *) ;

void *
ocs_hw_get_ptr(ocs_hw_t *hw, ocs_hw_property_e prop)
{
 void *rc = ((void*)0);

 switch (prop) {
 case 129:
  rc = sli_get_wwn_node(&hw->sli);
  break;
 case 128:
  rc = sli_get_wwn_port(&hw->sli);
  break;
 case 130:

  if (sli_get_vpd_len(&hw->sli)) {
   rc = sli_get_vpd(&hw->sli);
  }
  break;
 case 134:
  rc = sli_get_fw_name(&hw->sli, 0);
  break;
 case 133:
  rc = sli_get_fw_name(&hw->sli, 1);
  break;
 case 132:
  rc = sli_get_ipl_name(&hw->sli);
  break;
 case 131:
  rc = sli_get_portnum(&hw->sli);
  break;
 case 135:
  rc = sli_get_bios_version_string(&hw->sli);
  break;
 default:
  ocs_log_test(hw->os, "unsupported property %#x\n", prop);
 }

 return rc;
}
