
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pqisrc_softstate {scalar_t__** device_list; } ;


 int DBG_FUNC (char*) ;
 int PQI_MAX_DEVICES ;
 int PQI_MAX_MULTILUN ;
 int smartpqi_lun_rescan (struct pqisrc_softstate*,int,int) ;

void smartpqi_target_rescan(struct pqisrc_softstate *softs)
{
 int target = 0, lun = 0;

 DBG_FUNC("IN\n");

 for(target = 0; target < PQI_MAX_DEVICES; target++){
  for(lun = 0; lun < PQI_MAX_MULTILUN; lun++){
   if(softs->device_list[target][lun]){
    smartpqi_lun_rescan(softs, target, lun);
   }
  }
 }

 DBG_FUNC("OUT\n");
}
