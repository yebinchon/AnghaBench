
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pqi_state; } ;
struct pqisrc_softstate {TYPE_1__ os_specific; } ;
typedef int device_t ;


 int DBG_FUNC (char*) ;
 int DBG_INFO (char*,struct pqisrc_softstate*) ;
 int SMART_STATE_SUSPEND ;
 struct pqisrc_softstate* device_get_softc (int ) ;

__attribute__((used)) static int
smartpqi_suspend(device_t dev)
{
 struct pqisrc_softstate *softs;
 softs = device_get_softc(dev);
 DBG_FUNC("IN\n");

 DBG_INFO("Suspending the device %p\n", softs);
 softs->os_specific.pqi_state |= SMART_STATE_SUSPEND;

 DBG_FUNC("OUT\n");
 return(0);
}
