
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf10bmac_softc {int * nf10bmac_ctrl_res; int nf10bmac_ctrl_rid; int * nf10bmac_tx_mem_res; int nf10bmac_tx_mem_rid; int * nf10bmac_rx_mem_res; int nf10bmac_rx_mem_rid; int * nf10bmac_intr_res; int nf10bmac_intr_rid; int * nf10bmac_rx_irq_res; int nf10bmac_rx_irq_rid; } ;
typedef int device_t ;


 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int bus_release_resource (int ,int ,int ,int *) ;
 struct nf10bmac_softc* device_get_softc (int ) ;

void
nf10bmac_detach_resources(device_t dev)
{
 struct nf10bmac_softc *sc;

 sc = device_get_softc(dev);

 if (sc->nf10bmac_rx_irq_res != ((void*)0)) {
  bus_release_resource(dev, SYS_RES_IRQ, sc->nf10bmac_rx_irq_rid,
      sc->nf10bmac_rx_irq_res);
  sc->nf10bmac_rx_irq_res = ((void*)0);
 }
 if (sc->nf10bmac_intr_res != ((void*)0)) {
  bus_release_resource(dev, SYS_RES_MEMORY,
      sc->nf10bmac_intr_rid, sc->nf10bmac_intr_res);
  sc->nf10bmac_intr_res = ((void*)0);
 }
 if (sc->nf10bmac_rx_mem_res != ((void*)0)) {
  bus_release_resource(dev, SYS_RES_MEMORY,
      sc->nf10bmac_rx_mem_rid, sc->nf10bmac_rx_mem_res);
  sc->nf10bmac_rx_mem_res = ((void*)0);
 }
 if (sc->nf10bmac_tx_mem_res != ((void*)0)) {
  bus_release_resource(dev, SYS_RES_MEMORY,
      sc->nf10bmac_tx_mem_rid, sc->nf10bmac_tx_mem_res);
  sc->nf10bmac_tx_mem_res = ((void*)0);
 }
 if (sc->nf10bmac_ctrl_res != ((void*)0)) {
  bus_release_resource(dev, SYS_RES_MEMORY,
      sc->nf10bmac_ctrl_rid, sc->nf10bmac_ctrl_res);
  sc->nf10bmac_ctrl_res = ((void*)0);
 }
}
