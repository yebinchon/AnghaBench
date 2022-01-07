
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_8__ {int hw; } ;
typedef TYPE_1__ ocs_t ;
struct TYPE_9__ {char* status; int semaphore; int preferred_d_id; int hard_alpa; int * wwnn; int * wwpn; } ;
typedef TYPE_2__ ocs_mgmt_get_nvparms_result_t ;
typedef scalar_t__ int32_t ;


 scalar_t__ ENXIO ;
 scalar_t__ OCS_HW_RTN_SUCCESS ;
 int OCS_SEM_FOREVER ;
 scalar_t__ ocs_hw_get_nvparms (int *,int ,TYPE_2__*) ;
 scalar_t__ ocs_hw_set_nvparms (int *,int ,int *,int *,int ,int ,TYPE_2__*) ;
 int ocs_log_err (TYPE_1__*,char*) ;
 int ocs_log_test (TYPE_1__*,char*,char*) ;
 int ocs_mgmt_get_nvparms_cb ;
 int ocs_mgmt_set_nvparms_cb ;
 int ocs_sem_init (int *,int ,char*) ;
 scalar_t__ ocs_sem_p (int *,int ) ;
 int ocs_sscanf (char*,char*,int *,int *,int *,int *,int *,int *,int *,int *) ;
 int ocs_strcmp (char*,char*) ;
 char* ocs_strsep (char**,char*) ;

__attribute__((used)) static int32_t
set_nv_wwn(ocs_t *ocs, char *name, char *wwn_p)
{
 ocs_mgmt_get_nvparms_result_t result;
 uint8_t new_wwpn[8];
 uint8_t new_wwnn[8];
 char *wwpn_p = ((void*)0);
 char *wwnn_p = ((void*)0);
 int32_t rc = -1;
 int wwpn = 0;
 int wwnn = 0;
 int i;




 ocs_sem_init(&(result.semaphore), 0, "set_nv_wwn1");

 rc = ocs_hw_get_nvparms(&ocs->hw, ocs_mgmt_get_nvparms_cb, &result);

 if (rc == OCS_HW_RTN_SUCCESS) {
  if (ocs_sem_p(&(result.semaphore), OCS_SEM_FOREVER) != 0) {

   ocs_log_err(ocs, "ocs_sem_p failed\n");
   return -ENXIO;
  }
  if (result.status != 0) {
   ocs_log_test(ocs, "getting nvparms status 0x%x\n", result.status);
   return -1;
  }
 }


 if (wwn_p != ((void*)0)) {
  wwpn_p = ocs_strsep(&wwn_p, "@");
  wwnn_p = wwn_p;
 }

 if (wwpn_p != ((void*)0)) {
  wwpn = ocs_strcmp(wwpn_p, "NA");
 }

 if (wwnn_p != ((void*)0)) {
  wwnn = ocs_strcmp(wwnn_p, "NA");
 }


 if ((wwpn_p != ((void*)0)) && (wwpn != 0)) {
  if (ocs_sscanf(wwpn_p, "%2hhx:%2hhx:%2hhx:%2hhx:%2hhx:%2hhx:%2hhx:%2hhx",
    &(new_wwpn[0]), &(new_wwpn[1]), &(new_wwpn[2]),
    &(new_wwpn[3]), &(new_wwpn[4]), &(new_wwpn[5]),
    &(new_wwpn[6]), &(new_wwpn[7])) != 8) {
   ocs_log_test(ocs, "can't parse WWPN %s\n", wwpn_p);
   return -1;
  }
 }


 if ((wwnn_p != ((void*)0)) && (wwnn != 0 )) {
  if (ocs_sscanf(wwnn_p, "%2hhx:%2hhx:%2hhx:%2hhx:%2hhx:%2hhx:%2hhx:%2hhx",
    &(new_wwnn[0]), &(new_wwnn[1]), &(new_wwnn[2]),
    &(new_wwnn[3]), &(new_wwnn[4]), &(new_wwnn[5]),
    &(new_wwnn[6]), &(new_wwnn[7])) != 8) {
   ocs_log_test(ocs, "can't parse WWNN %s\n", wwnn_p);
   return -1;
  }
 }

 for (i = 0; i < 8; i++) {

  if (wwpn == 0) {
   new_wwpn[i] = result.wwpn[i];
  }


  if (wwnn == 0) {
   new_wwnn[i] = result.wwnn[i];
  }
 }


 ocs_sem_init(&(result.semaphore), 0, "set_nv_wwn2");

 rc = ocs_hw_set_nvparms(&ocs->hw, ocs_mgmt_set_nvparms_cb, new_wwpn,
     new_wwnn, result.hard_alpa, result.preferred_d_id,
     &result);
 if (rc == OCS_HW_RTN_SUCCESS) {
  if (ocs_sem_p(&(result.semaphore), OCS_SEM_FOREVER) != 0) {

   ocs_log_err(ocs, "ocs_sem_p failed\n");
   return -ENXIO;
  }
  if (result.status != 0) {
   ocs_log_test(ocs, "setting wwn status 0x%x\n", result.status);
   return -1;
  }
 }

 return rc;
}
