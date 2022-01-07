
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int result_string ;
typedef int ocs_textbuf_t ;
struct TYPE_7__ {int hw; } ;
typedef TYPE_1__ ocs_t ;
struct TYPE_8__ {scalar_t__ status; int * wwnn; int semaphore; } ;
typedef TYPE_2__ ocs_mgmt_get_nvparms_result_t ;


 int MGMT_MODE_RW ;
 scalar_t__ OCS_HW_RTN_SUCCESS ;
 int OCS_SEM_FOREVER ;
 scalar_t__ ocs_hw_get_nvparms (int *,int ,TYPE_2__*) ;
 int ocs_log_err (TYPE_1__*,char*) ;
 int ocs_log_test (TYPE_1__*,char*,scalar_t__) ;
 int ocs_mgmt_emit_string (int *,int ,char*,char*) ;
 int ocs_mgmt_get_nvparms_cb ;
 int ocs_sem_init (int *,int ,char*) ;
 scalar_t__ ocs_sem_p (int *,int ) ;
 int ocs_snprintf (char*,int,char*,int ,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void
get_nv_wwnn(ocs_t *ocs, char *name, ocs_textbuf_t *textbuf)
{
 char result_string[24];
 ocs_mgmt_get_nvparms_result_t result;

 ocs_sem_init(&(result.semaphore), 0, "get_nv_wwnn");

 if(ocs_hw_get_nvparms(&ocs->hw, ocs_mgmt_get_nvparms_cb, &result) == OCS_HW_RTN_SUCCESS) {
  if (ocs_sem_p(&(result.semaphore), OCS_SEM_FOREVER) != 0) {

   ocs_log_err(ocs, "ocs_sem_p failed\n");
   return;
  }
  if (result.status == 0) {

   ocs_snprintf(result_string, sizeof(result_string), "%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x",
     result.wwnn[0], result.wwnn[1], result.wwnn[2],
     result.wwnn[3], result.wwnn[4], result.wwnn[5],
     result.wwnn[6], result.wwnn[7]);
   ocs_mgmt_emit_string(textbuf, MGMT_MODE_RW, "nv_wwnn", result_string);
  } else {
   ocs_log_test(ocs, "getting wwnn status 0x%x\n", result.status);
  }
 }
}
