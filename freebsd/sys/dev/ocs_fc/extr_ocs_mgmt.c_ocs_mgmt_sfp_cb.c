
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int ocs_t ;
struct TYPE_3__ {int running; int cb_lock; int semaphore; int page_data; int bytes_read; int status; } ;
typedef TYPE_1__ ocs_mgmt_sfp_result_t ;
typedef int int32_t ;


 int SFP_PAGE_SIZE ;
 int ocs_free (int *,TYPE_1__*,int) ;
 int ocs_lock (int *) ;
 int ocs_memcpy (int *,int *,int ) ;
 int ocs_sem_v (int *) ;
 int ocs_unlock (int *) ;

__attribute__((used)) static void
ocs_mgmt_sfp_cb(void *os, int32_t status, uint32_t bytes_read, uint32_t *data, void *arg)
{
 ocs_mgmt_sfp_result_t *result = arg;
 ocs_t *ocs = os;

 ocs_lock(&(result->cb_lock));
 result->running++;
 if(result->running == 2) {

  ocs_unlock(&(result->cb_lock));
  ocs_free(ocs, result, sizeof(ocs_mgmt_sfp_result_t));
  return;
 }

 result->status = status;
 result->bytes_read = bytes_read;
 ocs_memcpy(&result->page_data, data, SFP_PAGE_SIZE);

 ocs_sem_v(&(result->semaphore));
 ocs_unlock(&(result->cb_lock));
}
