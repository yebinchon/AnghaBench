
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfe_softc {int * bfe_ifp; int * bfe_res; int bfe_dev; int * bfe_irq; int * bfe_intrhand; } ;


 int PCIR_BAR (int ) ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int bus_teardown_intr (int ,int *,int *) ;
 int if_free (int *) ;

__attribute__((used)) static void
bfe_release_resources(struct bfe_softc *sc)
{

 if (sc->bfe_intrhand != ((void*)0))
  bus_teardown_intr(sc->bfe_dev, sc->bfe_irq, sc->bfe_intrhand);

 if (sc->bfe_irq != ((void*)0))
  bus_release_resource(sc->bfe_dev, SYS_RES_IRQ, 0, sc->bfe_irq);

 if (sc->bfe_res != ((void*)0))
  bus_release_resource(sc->bfe_dev, SYS_RES_MEMORY, PCIR_BAR(0),
      sc->bfe_res);

 if (sc->bfe_ifp != ((void*)0))
  if_free(sc->bfe_ifp);
}
