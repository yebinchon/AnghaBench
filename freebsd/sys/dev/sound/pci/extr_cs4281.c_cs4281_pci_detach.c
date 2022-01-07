
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc_info {int parent_dmat; int irq; int irqid; int ih; int mem; int memid; int reg; int regid; int regtype; } ;
typedef int device_t ;


 int M_DEVBUF ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int bus_dma_tag_destroy (int ) ;
 int bus_release_resource (int ,int ,int ,int ) ;
 int bus_teardown_intr (int ,int ,int ) ;
 int cs4281_power (struct sc_info*,int) ;
 int free (struct sc_info*,int ) ;
 struct sc_info* pcm_getdevinfo (int ) ;
 int pcm_unregister (int ) ;

__attribute__((used)) static int
cs4281_pci_detach(device_t dev)
{
    int r;
    struct sc_info *sc;

    r = pcm_unregister(dev);
    if (r)
 return r;

    sc = pcm_getdevinfo(dev);


    cs4281_power(sc, 3);

    bus_release_resource(dev, sc->regtype, sc->regid, sc->reg);
    bus_release_resource(dev, SYS_RES_MEMORY, sc->memid, sc->mem);
    bus_teardown_intr(dev, sc->irq, sc->ih);
    bus_release_resource(dev, SYS_RES_IRQ, sc->irqid, sc->irq);
    bus_dma_tag_destroy(sc->parent_dmat);
    free(sc, M_DEVBUF);

    return 0;
}
