
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsl_sdhci_softc {int * mem_res; int * irq_res; int * intr_cookie; int slot; scalar_t__ slot_init_done; int r1bfix_callout; int * gpio; } ;
typedef int device_t ;


 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int bus_teardown_intr (int ,int *,int *) ;
 int callout_drain (int *) ;
 struct fsl_sdhci_softc* device_get_softc (int ) ;
 int rman_get_rid (int *) ;
 int sdhci_cleanup_slot (int *) ;
 int sdhci_fdt_gpio_teardown (int *) ;

__attribute__((used)) static int
fsl_sdhci_detach(device_t dev)
{
 struct fsl_sdhci_softc *sc = device_get_softc(dev);

 if (sc->gpio != ((void*)0))
  sdhci_fdt_gpio_teardown(sc->gpio);

 callout_drain(&sc->r1bfix_callout);

 if (sc->slot_init_done)
  sdhci_cleanup_slot(&sc->slot);

 if (sc->intr_cookie != ((void*)0))
  bus_teardown_intr(dev, sc->irq_res, sc->intr_cookie);
 if (sc->irq_res != ((void*)0))
  bus_release_resource(dev, SYS_RES_IRQ,
      rman_get_rid(sc->irq_res), sc->irq_res);

 if (sc->mem_res != ((void*)0)) {
  bus_release_resource(dev, SYS_RES_MEMORY,
      rman_get_rid(sc->mem_res), sc->mem_res);
 }

 return (0);
}
