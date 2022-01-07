
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int dev; int * msix_res; void* msix_rid; int doorbells; int * regs_res; int mmio_len; int bh; int bt; void* regs_rid; } ;


 int DOORBELL_KDB ;
 int ENXIO ;
 void* PCIR_BAR (int) ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 void* bus_alloc_resource_any (int ,int ,void**,int ) ;
 int device_printf (int ,char*) ;
 int rman_get_bushandle (int *) ;
 int rman_get_bustag (int *) ;
 int rman_get_size (int *) ;
 int setbit (int *,int ) ;

int
t4_map_bars_0_and_4(struct adapter *sc)
{
 sc->regs_rid = PCIR_BAR(0);
 sc->regs_res = bus_alloc_resource_any(sc->dev, SYS_RES_MEMORY,
     &sc->regs_rid, RF_ACTIVE);
 if (sc->regs_res == ((void*)0)) {
  device_printf(sc->dev, "cannot map registers.\n");
  return (ENXIO);
 }
 sc->bt = rman_get_bustag(sc->regs_res);
 sc->bh = rman_get_bushandle(sc->regs_res);
 sc->mmio_len = rman_get_size(sc->regs_res);
 setbit(&sc->doorbells, DOORBELL_KDB);

 sc->msix_rid = PCIR_BAR(4);
 sc->msix_res = bus_alloc_resource_any(sc->dev, SYS_RES_MEMORY,
     &sc->msix_rid, RF_ACTIVE);
 if (sc->msix_res == ((void*)0)) {
  device_printf(sc->dev, "cannot map MSI-X BAR.\n");
  return (ENXIO);
 }

 return (0);
}
