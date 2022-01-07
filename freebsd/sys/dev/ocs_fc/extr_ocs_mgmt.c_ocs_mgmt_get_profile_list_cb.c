
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int semaphore; int * list; int status; } ;
typedef TYPE_1__ ocs_mgmt_get_profile_list_result_t ;
typedef int ocs_hw_profile_list_t ;
typedef int int32_t ;


 int ocs_sem_v (int *) ;

__attribute__((used)) static void
ocs_mgmt_get_profile_list_cb(int32_t status, ocs_hw_profile_list_t *list, void *ul_arg)
{
 ocs_mgmt_get_profile_list_result_t *result = ul_arg;

 result->status = status;
 result->list = list;

 ocs_sem_v(&(result->semaphore));
}
