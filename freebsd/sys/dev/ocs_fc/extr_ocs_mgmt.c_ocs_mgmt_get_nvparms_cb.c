
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_2__ {int semaphore; int preferred_d_id; int hard_alpa; int wwnn; int wwpn; int status; } ;
typedef TYPE_1__ ocs_mgmt_get_nvparms_result_t ;
typedef int int32_t ;


 int ocs_memcpy (int ,int *,int) ;
 int ocs_sem_v (int *) ;

__attribute__((used)) static void
ocs_mgmt_get_nvparms_cb(int32_t status, uint8_t *wwpn, uint8_t *wwnn, uint8_t hard_alpa,
  uint32_t preferred_d_id, void *ul_arg)
{
 ocs_mgmt_get_nvparms_result_t *result = ul_arg;

 result->status = status;
 ocs_memcpy(result->wwpn, wwpn, sizeof(result->wwpn));
 ocs_memcpy(result->wwnn, wwnn, sizeof(result->wwnn));
 result->hard_alpa = hard_alpa;
 result->preferred_d_id = preferred_d_id;

 ocs_sem_v(&(result->semaphore));
}
