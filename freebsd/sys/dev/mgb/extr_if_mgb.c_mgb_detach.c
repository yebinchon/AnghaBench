
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mgb_softc {int * pba; int dev; int * miibus; int admin_irq; int rx_irq; } ;
typedef int if_ctx_t ;


 int SYS_RES_MEMORY ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int device_delete_child (int ,int *) ;
 struct mgb_softc* iflib_get_softc (int ) ;
 int iflib_irq_free (int ,int *) ;
 int mgb_hw_teardown (struct mgb_softc*) ;
 int mgb_release_regs (struct mgb_softc*) ;
 int rman_get_rid (int *) ;

__attribute__((used)) static int
mgb_detach(if_ctx_t ctx)
{
 struct mgb_softc *sc;
 int error;

 sc = iflib_get_softc(ctx);


 error = mgb_hw_teardown(sc);


 iflib_irq_free(ctx, &sc->rx_irq);
 iflib_irq_free(ctx, &sc->admin_irq);

 if (sc->miibus != ((void*)0))
  device_delete_child(sc->dev, sc->miibus);

 if (sc->pba != ((void*)0))
  error = bus_release_resource(sc->dev, SYS_RES_MEMORY,
      rman_get_rid(sc->pba), sc->pba);
 sc->pba = ((void*)0);

 error = mgb_release_regs(sc);

 return (error);
}
