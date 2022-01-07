
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int hw; } ;
typedef TYPE_1__ ocs_t ;
struct TYPE_8__ {scalar_t__ status; int semaphore; } ;
typedef TYPE_2__ ocs_mgmt_set_active_profile_result_t ;
typedef int int32_t ;


 int ENXIO ;
 int OCS_HW_RTN_SUCCESS ;
 int OCS_SEM_FOREVER ;
 int ocs_hw_set_active_profile (int *,int ,int,TYPE_2__*) ;
 int ocs_log_err (TYPE_1__*,char*) ;
 int ocs_log_test (TYPE_1__*,char*,scalar_t__) ;
 int ocs_mgmt_set_active_profile_cb ;
 int ocs_sem_init (int *,int ,char*) ;
 scalar_t__ ocs_sem_p (int *,int ) ;
 int ocs_strtoul (char*,int *,int ) ;

__attribute__((used)) static int32_t
set_active_profile(ocs_t *ocs, char *name, char *value)
{
 ocs_mgmt_set_active_profile_result_t result;
 int32_t rc = 0;
 int32_t new_profile;

 new_profile = ocs_strtoul(value, ((void*)0), 0);

 ocs_sem_init(&(result.semaphore), 0, "set_active_profile");

 rc = ocs_hw_set_active_profile(&ocs->hw, ocs_mgmt_set_active_profile_cb, new_profile, &result);
 if (rc == OCS_HW_RTN_SUCCESS) {
  if (ocs_sem_p(&(result.semaphore), OCS_SEM_FOREVER) != 0) {

   ocs_log_err(ocs, "ocs_sem_p failed\n");
   return -ENXIO;
  }
  if (result.status == 0) {

   rc = 0;
  } else {
   rc = -1;
   ocs_log_test(ocs, "setting active profile status 0x%x\n", result.status);
  }
 }

 return rc;
}
