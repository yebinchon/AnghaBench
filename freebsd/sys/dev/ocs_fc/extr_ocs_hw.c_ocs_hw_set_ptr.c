
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_4__ {int * filter_def; } ;
struct TYPE_5__ {int os; TYPE_1__ config; void* hw_war_version; } ;
typedef TYPE_2__ ocs_hw_t ;
typedef int ocs_hw_rtn_e ;
typedef int ocs_hw_property_e ;


 size_t ARRAY_SIZE (int *) ;

 int OCS_HW_RTN_ERROR ;
 int OCS_HW_RTN_SUCCESS ;

 int ocs_log_test (int ,char*,int) ;
 char* ocs_strchr (char*,char) ;
 int ocs_strtoul (char*,int ,int ) ;

ocs_hw_rtn_e
ocs_hw_set_ptr(ocs_hw_t *hw, ocs_hw_property_e prop, void *value)
{
 ocs_hw_rtn_e rc = OCS_HW_RTN_SUCCESS;

 switch (prop) {
 case 128:
  hw->hw_war_version = value;
  break;
 case 129: {
  char *p = value;
  uint32_t idx = 0;

  for (idx = 0; idx < ARRAY_SIZE(hw->config.filter_def); idx++) {
   hw->config.filter_def[idx] = 0;
  }

  for (idx = 0; (idx < ARRAY_SIZE(hw->config.filter_def)) && (p != ((void*)0)) && *p; ) {
   hw->config.filter_def[idx++] = ocs_strtoul(p, 0, 0);
   p = ocs_strchr(p, ',');
   if (p != ((void*)0)) {
    p++;
   }
  }

  break;
 }
 default:
  ocs_log_test(hw->os, "unsupported property %#x\n", prop);
  rc = OCS_HW_RTN_ERROR;
  break;
 }
 return rc;
}
