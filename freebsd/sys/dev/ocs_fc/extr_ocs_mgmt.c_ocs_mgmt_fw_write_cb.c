
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* uint32_t ;
struct TYPE_2__ {int semaphore; void* change_status; void* actual_xfer; int status; } ;
typedef TYPE_1__ ocs_mgmt_fw_write_result_t ;
typedef int int32_t ;


 int ocs_sem_v (int *) ;

__attribute__((used)) static void
ocs_mgmt_fw_write_cb(int32_t status, uint32_t actual_write_length, uint32_t change_status, void *arg)
{
 ocs_mgmt_fw_write_result_t *result = arg;

 result->status = status;
 result->actual_xfer = actual_write_length;
 result->change_status = change_status;

 ocs_sem_v(&(result->semaphore));
}
