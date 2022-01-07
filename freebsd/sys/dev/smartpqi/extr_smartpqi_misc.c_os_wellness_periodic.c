
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int wellness_periodic; } ;
struct pqisrc_softstate {TYPE_1__ os_specific; } ;


 int DBG_ERR (char*,int) ;
 int OS_HOST_WELLNESS_TIMEOUT ;
 int hz ;
 int pqisrc_ctrl_offline (struct pqisrc_softstate*) ;
 int pqisrc_write_current_time_to_host_wellness (struct pqisrc_softstate*) ;
 int timeout (void (*) (void*),struct pqisrc_softstate*,int) ;

void os_wellness_periodic(void *data)
{
 struct pqisrc_softstate *softs = (struct pqisrc_softstate *)data;
 int ret = 0;



 if (!pqisrc_ctrl_offline(softs)){
  if( (ret = pqisrc_write_current_time_to_host_wellness(softs)) != 0 )
   DBG_ERR("Failed to update time to FW in periodic ret = %d\n", ret);
 }


 softs->os_specific.wellness_periodic = timeout(os_wellness_periodic,
     softs, OS_HOST_WELLNESS_TIMEOUT * hz);
}
