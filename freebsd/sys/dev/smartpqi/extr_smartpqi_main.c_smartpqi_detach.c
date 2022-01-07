
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int heartbeat_timeout_id; int wellness_periodic; int eh; } ;
struct pqisrc_softstate {TYPE_1__ os_specific; } ;
typedef int device_t ;


 int DBG_FUNC (char*) ;
 int EVENTHANDLER_DEREGISTER (int ,int ) ;
 int deregister_sim (struct pqisrc_softstate*) ;
 int destroy_char_dev (struct pqisrc_softstate*) ;
 struct pqisrc_softstate* device_get_softc (int ) ;
 int os_start_heartbeat_timer ;
 int os_wellness_periodic ;
 int pci_release_msi (int ) ;
 int pqisrc_uninit (struct pqisrc_softstate*) ;
 int shutdown_final ;
 int smartpqi_shutdown (struct pqisrc_softstate*) ;
 int untimeout (int ,struct pqisrc_softstate*,int ) ;

__attribute__((used)) static int
smartpqi_detach(device_t dev)
{
 struct pqisrc_softstate *softs = ((void*)0);
 softs = device_get_softc(dev);
 DBG_FUNC("IN\n");

 EVENTHANDLER_DEREGISTER(shutdown_final, softs->os_specific.eh);


 untimeout(os_wellness_periodic, softs,
   softs->os_specific.wellness_periodic);

 untimeout(os_start_heartbeat_timer, softs,
   softs->os_specific.heartbeat_timeout_id);

 smartpqi_shutdown(softs);
 destroy_char_dev(softs);
 pqisrc_uninit(softs);
 deregister_sim(softs);
 pci_release_msi(dev);

 DBG_FUNC("OUT\n");
 return 0;
}
