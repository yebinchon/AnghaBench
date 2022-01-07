
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cmd_sema; int queue_mtx; scalar_t__ configured; scalar_t__ iores; int rid; int iotype; int dev; scalar_t__ irqres; int irqrid; scalar_t__ irqcookie; scalar_t__ adapter_dmatag; } ;
typedef TYPE_1__ ips_softc_t ;


 int SYS_RES_IRQ ;
 int bus_dma_tag_destroy (scalar_t__) ;
 int bus_release_resource (int ,int ,int ,scalar_t__) ;
 int bus_teardown_intr (int ,scalar_t__,scalar_t__) ;
 int mtx_destroy (int *) ;
 int sema_destroy (int *) ;

__attribute__((used)) static int ips_pci_free(ips_softc_t *sc)
{
 if(sc->adapter_dmatag)
  bus_dma_tag_destroy(sc->adapter_dmatag);
 if(sc->irqcookie)
                bus_teardown_intr(sc->dev, sc->irqres, sc->irqcookie);
        if(sc->irqres)
               bus_release_resource(sc->dev, SYS_RES_IRQ, sc->irqrid, sc->irqres);
        if(sc->iores)
                bus_release_resource(sc->dev, sc->iotype, sc->rid, sc->iores);
 sc->configured = 0;
 mtx_destroy(&sc->queue_mtx);
 sema_destroy(&sc->cmd_sema);
 return 0;
}
