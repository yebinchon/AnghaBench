
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int *** device_list; } ;
typedef TYPE_1__ pqisrc_softstate_t ;
typedef int pqi_scsi_dev_t ;


 int DBG_FUNC (char*) ;
 int PQI_MAX_DEVICES ;
 int PQI_MAX_MULTILUN ;
 int pqisrc_remove_device (TYPE_1__*,int *) ;

void pqisrc_take_devices_offline(pqisrc_softstate_t *softs)
{
 pqi_scsi_dev_t *device = ((void*)0);
 int i,j;

 DBG_FUNC("IN\n");
 for(i = 0; i < PQI_MAX_DEVICES; i++) {
  for(j = 0; j < PQI_MAX_MULTILUN; j++) {
   if(softs->device_list[i][j] == ((void*)0))
    continue;
   device = softs->device_list[i][j];
   pqisrc_remove_device(softs, device);
  }
 }

 DBG_FUNC("OUT\n");
}
