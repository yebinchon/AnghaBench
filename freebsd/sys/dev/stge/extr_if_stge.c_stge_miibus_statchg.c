
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stge_softc {int sc_link_task; } ;
typedef int device_t ;


 struct stge_softc* device_get_softc (int ) ;
 int taskqueue_enqueue (int ,int *) ;
 int taskqueue_swi ;

__attribute__((used)) static void
stge_miibus_statchg(device_t dev)
{
 struct stge_softc *sc;

 sc = device_get_softc(dev);
 taskqueue_enqueue(taskqueue_swi, &sc->sc_link_task);
}
