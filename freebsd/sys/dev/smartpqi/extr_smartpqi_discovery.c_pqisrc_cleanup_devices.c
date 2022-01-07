
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
 int pqisrc_device_mem_free (TYPE_1__*,int *) ;

void pqisrc_cleanup_devices(pqisrc_softstate_t *softs)
{

 int i = 0,j = 0;
 pqi_scsi_dev_t *dvp = ((void*)0);
 DBG_FUNC("IN\n");

  for(i = 0; i < PQI_MAX_DEVICES; i++) {
  for(j = 0; j < PQI_MAX_MULTILUN; j++) {
   if (softs->device_list[i][j] == ((void*)0))
    continue;
   dvp = softs->device_list[i][j];
   pqisrc_device_mem_free(softs, dvp);
  }
 }
 DBG_FUNC("OUT\n");
}
