
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sc_info {int adcn; int dacn; int lock; int mt; int mtid; int ds; int dsid; int ddma; int ddmaid; int cs; int csid; int irq; int irqid; int ih; int dmat; TYPE_2__* cfg; int * dac; int * adc; } ;
typedef int device_t ;
struct TYPE_4__ {TYPE_1__* codec; } ;
struct TYPE_3__ {int (* destroy ) (int ) ;} ;


 int M_ENVY24 ;
 int SYS_RES_IOPORT ;
 int SYS_RES_IRQ ;
 int bus_dma_tag_destroy (int ) ;
 int bus_release_resource (int ,int ,int ,int ) ;
 int bus_teardown_intr (int ,int ,int ) ;
 int device_printf (int ,char*) ;
 int envy24_cfgfree (TYPE_2__*) ;
 int envy24_dmafree (struct sc_info*) ;
 int free (struct sc_info*,int ) ;
 struct sc_info* pcm_getdevinfo (int ) ;
 int pcm_unregister (int ) ;
 int snd_mtxfree (int ) ;
 int stub1 (int ) ;
 int stub2 (int ) ;

__attribute__((used)) static int
envy24_pci_detach(device_t dev)
{
 struct sc_info *sc;
 int r;
 int i;




 sc = pcm_getdevinfo(dev);
 if (sc == ((void*)0))
  return 0;
 r = pcm_unregister(dev);
 if (r)
  return r;

 envy24_dmafree(sc);
 if (sc->cfg->codec->destroy != ((void*)0)) {
  for (i = 0; i < sc->adcn; i++)
   sc->cfg->codec->destroy(sc->adc[i]);
  for (i = 0; i < sc->dacn; i++)
   sc->cfg->codec->destroy(sc->dac[i]);
 }
 envy24_cfgfree(sc->cfg);
 bus_dma_tag_destroy(sc->dmat);
 bus_teardown_intr(dev, sc->irq, sc->ih);
 bus_release_resource(dev, SYS_RES_IRQ, sc->irqid, sc->irq);
 bus_release_resource(dev, SYS_RES_IOPORT, sc->csid, sc->cs);
 bus_release_resource(dev, SYS_RES_IOPORT, sc->ddmaid, sc->ddma);
 bus_release_resource(dev, SYS_RES_IOPORT, sc->dsid, sc->ds);
 bus_release_resource(dev, SYS_RES_IOPORT, sc->mtid, sc->mt);
 snd_mtxfree(sc->lock);
 free(sc, M_ENVY24);
 return 0;
}
