
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int max_cmd_size; int max_fib_size; } ;
struct TYPE_6__ {TYPE_1__ pref_settings; } ;
typedef TYPE_2__ pqisrc_softstate_t ;


 int DBG_FUNC (char*) ;
 int DBG_INIT (char*,int,int) ;
 int PQI_STATUS_SUCCESS ;
 int SIS_CMD_GET_COMM_PREFERRED_SETTINGS ;
 int pqisrc_send_sis_cmd (TYPE_2__*,int*) ;

int pqisrc_get_preferred_settings(pqisrc_softstate_t *softs)
{
 int ret = PQI_STATUS_SUCCESS;
 uint32_t mb[6] = {0};

 DBG_FUNC("IN\n");

 mb[0] = SIS_CMD_GET_COMM_PREFERRED_SETTINGS;
 ret = pqisrc_send_sis_cmd(softs, mb);
 if (!ret) {

  softs->pref_settings.max_cmd_size = mb[1] >> 16;

  softs->pref_settings.max_fib_size = mb[1] & 0x0000FFFF;
  DBG_INIT("cmd size = %x, fib size = %x\n",
   softs->pref_settings.max_cmd_size,
   softs->pref_settings.max_fib_size);
 }

 DBG_FUNC("OUT\n");
 return ret;
}
