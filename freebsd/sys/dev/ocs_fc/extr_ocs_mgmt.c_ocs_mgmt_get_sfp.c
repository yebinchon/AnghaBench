
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_12__ {int hw; } ;
typedef TYPE_1__ ocs_t ;
struct TYPE_13__ {int running; scalar_t__ status; int bytes_read; int page_data; int cb_lock; int semaphore; } ;
typedef TYPE_2__ ocs_mgmt_sfp_result_t ;
typedef int int32_t ;


 int EFAULT ;
 int ENXIO ;
 int OCS_M_NOWAIT ;
 int OCS_M_ZERO ;
 int ocs_free (TYPE_1__*,TYPE_2__*,int) ;
 int ocs_hw_get_sfp (int *,int ,int ,TYPE_2__*) ;
 int ocs_lock (int *) ;
 int ocs_lock_init (TYPE_1__*,int *,char*) ;
 int ocs_log_err (TYPE_1__*,char*) ;
 int ocs_log_test (TYPE_1__*,char*,scalar_t__) ;
 TYPE_2__* ocs_malloc (TYPE_1__*,int,int) ;
 int ocs_memcpy (void*,int ,int) ;
 int ocs_mgmt_sfp_cb ;
 int ocs_sem_init (int *,int ,char*) ;
 scalar_t__ ocs_sem_p (int *,int) ;
 int ocs_unlock (int *) ;

__attribute__((used)) static int32_t
ocs_mgmt_get_sfp(ocs_t *ocs, uint16_t page, void *buf, uint32_t buf_len)
{
 int rc = 0;
 ocs_mgmt_sfp_result_t *result = ocs_malloc(ocs, sizeof(ocs_mgmt_sfp_result_t), OCS_M_ZERO | OCS_M_NOWAIT);;

 ocs_sem_init(&(result->semaphore), 0, "get_sfp");
 ocs_lock_init(ocs, &(result->cb_lock), "get_sfp");


 ocs_hw_get_sfp(&ocs->hw, page, ocs_mgmt_sfp_cb, result);


 if (ocs_sem_p(&(result->semaphore), 5 * 1000 * 1000) != 0) {

  ocs_lock(&(result->cb_lock));
  result->running++;
  if(result->running == 1) {
   ocs_log_err(ocs, "ocs_sem_p failed\n");
   ocs_unlock(&(result->cb_lock));
   return (-ENXIO);
  }

  ocs_unlock(&(result->cb_lock));
 }


 if (result->status != 0) {
  ocs_log_test(ocs, "read_transceiver_data returned status %d\n",
        result->status);
  rc = -EFAULT;
 }

 if (rc == 0) {
  rc = (result->bytes_read > buf_len ? buf_len : result->bytes_read);

  ocs_memcpy(buf, result->page_data, rc);
 }

 ocs_free(ocs, result, sizeof(ocs_mgmt_sfp_result_t));
 return rc;
}
