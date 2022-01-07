
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arge_softc {int arge_link_task; } ;
typedef int device_t ;


 struct arge_softc* device_get_softc (int ) ;
 int taskqueue_enqueue (int ,int *) ;
 int taskqueue_swi ;

__attribute__((used)) static void
arge_miibus_statchg(device_t dev)
{
 struct arge_softc *sc;

 sc = device_get_softc(dev);
 taskqueue_enqueue(taskqueue_swi, &sc->arge_link_task);
}
