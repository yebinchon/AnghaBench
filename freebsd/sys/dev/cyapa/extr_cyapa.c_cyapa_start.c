
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cyapa_softc {int intr_hook; } ;
typedef void* device_t ;


 int CMD_POWER_MODE_IDLE ;
 int config_intrhook_disestablish (int *) ;
 int cyapa_poll_thread ;
 int cyapa_set_power_mode (struct cyapa_softc*,int ) ;
 struct cyapa_softc* device_get_softc (void*) ;
 int kthread_add (int ,struct cyapa_softc*,int *,int *,int ,int ,char*) ;

__attribute__((used)) static void
cyapa_start(void *xdev)
{
 struct cyapa_softc *sc;
 device_t dev = xdev;

 sc = device_get_softc(dev);

 config_intrhook_disestablish(&sc->intr_hook);


 cyapa_set_power_mode(sc, CMD_POWER_MODE_IDLE);


 kthread_add(cyapa_poll_thread, sc, ((void*)0), ((void*)0),
     0, 0, "cyapa-poll");
}
