
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_xenon_softc {int * slot; int mem_res; int irq_res; int intrhand; int * gpio; } ;
typedef int device_t ;


 int M_DEVBUF ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int bus_generic_detach (int ) ;
 int bus_release_resource (int ,int ,int ,int ) ;
 int bus_teardown_intr (int ,int ,int ) ;
 struct sdhci_xenon_softc* device_get_softc (int ) ;
 int free (int *,int ) ;
 int rman_get_rid (int ) ;
 int sdhci_cleanup_slot (int *) ;
 int sdhci_fdt_gpio_teardown (int *) ;

__attribute__((used)) static int
sdhci_xenon_detach(device_t dev)
{
 struct sdhci_xenon_softc *sc = device_get_softc(dev);

 if (sc->gpio != ((void*)0))
  sdhci_fdt_gpio_teardown(sc->gpio);

 bus_generic_detach(dev);
 bus_teardown_intr(dev, sc->irq_res, sc->intrhand);
 bus_release_resource(dev, SYS_RES_IRQ, rman_get_rid(sc->irq_res),
     sc->irq_res);
 sdhci_cleanup_slot(sc->slot);
 bus_release_resource(dev, SYS_RES_MEMORY, rman_get_rid(sc->mem_res),
     sc->mem_res);
 free(sc->slot, M_DEVBUF);
 sc->slot = ((void*)0);

 return (0);
}
