
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int semaphore; int active_profile_id; int status; } ;
typedef TYPE_1__ ocs_mgmt_get_active_profile_result_t ;
typedef int int32_t ;


 int ocs_sem_v (int *) ;

__attribute__((used)) static void
ocs_mgmt_get_active_profile_cb(int32_t status, uint32_t active_profile, void *ul_arg)
{
 ocs_mgmt_get_active_profile_result_t *result = ul_arg;

 result->status = status;
 result->active_profile_id = active_profile;

 ocs_sem_v(&(result->semaphore));
}
