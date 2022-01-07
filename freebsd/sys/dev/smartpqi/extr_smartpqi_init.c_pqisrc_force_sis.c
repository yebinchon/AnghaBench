
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pqisrc_softstate_t ;


 scalar_t__ CTRL_SIS_MODE ;
 int DBG_INIT (char*) ;
 scalar_t__ PQI_GET_CTRL_MODE (int *) ;
 int PQI_SAVE_CTRL_MODE (int *,scalar_t__) ;
 int PQI_STATUS_FAILURE ;
 int PQI_STATUS_SUCCESS ;
 scalar_t__ SIS_IS_KERNEL_PANIC (int *) ;
 scalar_t__ SIS_IS_KERNEL_UP (int *) ;
 int pqi_reset (int *) ;
 int pqisrc_reenable_sis (int *) ;
 int sis_disable_interrupt (int *) ;

int pqisrc_force_sis(pqisrc_softstate_t *softs)
{
 int ret = PQI_STATUS_SUCCESS;

 if (SIS_IS_KERNEL_PANIC(softs)) {
  DBG_INIT("Controller FW is not runnning");
  return PQI_STATUS_FAILURE;
 }

 if (PQI_GET_CTRL_MODE(softs) == CTRL_SIS_MODE) {
  return ret;
 }

 if (SIS_IS_KERNEL_UP(softs)) {
  PQI_SAVE_CTRL_MODE(softs, CTRL_SIS_MODE);
  return ret;
 }

 sis_disable_interrupt(softs);


 ret = pqi_reset(softs);
 if (ret) {
  return ret;
 }

 ret = pqisrc_reenable_sis(softs);
 if (ret) {
  return ret;
 }

 PQI_SAVE_CTRL_MODE(softs, CTRL_SIS_MODE);

 return ret;
}
