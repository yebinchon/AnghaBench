
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int device_t ;
struct TYPE_3__ {int link_task; } ;
typedef TYPE_1__ ae_softc_t ;


 TYPE_1__* device_get_softc (int ) ;
 int taskqueue_enqueue (int ,int *) ;
 int taskqueue_swi ;

__attribute__((used)) static void
ae_miibus_statchg(device_t dev)
{
 ae_softc_t *sc;

 sc = device_get_softc(dev);
 taskqueue_enqueue(taskqueue_swi, &sc->link_task);
}
