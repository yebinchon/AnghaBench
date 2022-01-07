
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int pqisrc_softstate_t ;


 int DBG_FUNC (char*) ;
 int DBG_INIT (char*,int ,int ) ;
 int PQI_STATUS_SUCCESS ;
 int SIS_CMD_GET_ADAPTER_PROPERTIES ;
 int pqisrc_send_sis_cmd (int *,int *) ;

int pqisrc_get_adapter_properties(pqisrc_softstate_t *softs,
    uint32_t *prop, uint32_t *ext_prop)
{
 int ret = PQI_STATUS_SUCCESS;
 uint32_t mb[6] = {0};

 DBG_FUNC("IN\n");

 mb[0] = SIS_CMD_GET_ADAPTER_PROPERTIES;
 ret = pqisrc_send_sis_cmd(softs, mb);
 if (!ret) {
  DBG_INIT("GET_PROPERTIES prop = %x, ext_prop = %x\n",
     mb[1], mb[4]);
  *prop = mb[1];
  *ext_prop = mb[4];
 }

 DBG_FUNC("OUT\n");
 return ret;
}
