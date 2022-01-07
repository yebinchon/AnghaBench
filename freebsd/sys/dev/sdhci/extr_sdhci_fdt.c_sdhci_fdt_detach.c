
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_fdt_softc {int num_slots; int * mem_res; int * slots; int irq_res; int intrhand; } ;
typedef int device_t ;


 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int bus_generic_detach (int ) ;
 int bus_release_resource (int ,int ,int ,int ) ;
 int bus_teardown_intr (int ,int ,int ) ;
 struct sdhci_fdt_softc* device_get_softc (int ) ;
 int rman_get_rid (int ) ;
 int sdhci_cleanup_slot (int *) ;

__attribute__((used)) static int
sdhci_fdt_detach(device_t dev)
{
 struct sdhci_fdt_softc *sc = device_get_softc(dev);
 int i;

 bus_generic_detach(dev);
 bus_teardown_intr(dev, sc->irq_res, sc->intrhand);
 bus_release_resource(dev, SYS_RES_IRQ, rman_get_rid(sc->irq_res),
     sc->irq_res);

 for (i = 0; i < sc->num_slots; i++) {
  sdhci_cleanup_slot(&sc->slots[i]);
  bus_release_resource(dev, SYS_RES_MEMORY,
      rman_get_rid(sc->mem_res[i]), sc->mem_res[i]);
 }

 return (0);
}
