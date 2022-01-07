
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtmmio_softc {int ** res; int dev; int * ih; } ;


 int SYS_RES_IRQ ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int bus_teardown_intr (int ,int *,int *) ;

__attribute__((used)) static void
vtmmio_free_interrupts(struct vtmmio_softc *sc)
{

 if (sc->ih != ((void*)0))
  bus_teardown_intr(sc->dev, sc->res[1], sc->ih);

 if (sc->res[1] != ((void*)0))
  bus_release_resource(sc->dev, SYS_RES_IRQ, 0, sc->res[1]);
}
