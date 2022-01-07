
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int pqisrc_softstate_t ;


 int COND_WAIT (int,int ) ;
 int DBG_ERR (char*) ;
 int DBG_FUNC (char*) ;
 int GET_FW_STATUS (int *) ;
 int OS_SLEEP (int) ;
 int PQI_CTRL_KERNEL_UP_AND_RUNNING ;
 int PQI_STATUS_SUCCESS ;
 int PQI_STATUS_TIMEOUT ;
 int SIS_STATUS_OK_TIMEOUT ;

int pqisrc_check_fw_status(pqisrc_softstate_t *softs)
{
 int ret = PQI_STATUS_SUCCESS;
 uint32_t timeout = SIS_STATUS_OK_TIMEOUT;

 DBG_FUNC("IN\n");

 OS_SLEEP(1000000);
 COND_WAIT((GET_FW_STATUS(softs) &
  PQI_CTRL_KERNEL_UP_AND_RUNNING), timeout);
 if (!timeout) {
  DBG_ERR("FW check status timedout\n");
  ret = PQI_STATUS_TIMEOUT;
 }

 DBG_FUNC("OUT\n");
 return ret;
}
