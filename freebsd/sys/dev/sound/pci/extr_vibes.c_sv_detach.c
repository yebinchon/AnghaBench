
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc_info {int dmac_reg; int dmac_rid; int dmac_type; int dmaa_reg; int dmaa_rid; int dmaa_type; int enh_reg; int enh_rid; int enh_type; int irq; int irqid; int ih; int parent_dmat; } ;
typedef int device_t ;


 int M_DEVBUF ;
 int SYS_RES_IRQ ;
 int bus_dma_tag_destroy (int ) ;
 int bus_release_resource (int ,int ,int ,int ) ;
 int bus_teardown_intr (int ,int ,int ) ;
 int free (struct sc_info*,int ) ;
 struct sc_info* pcm_getdevinfo (int ) ;
 int pcm_unregister (int ) ;
 int sv_mix_mute_all (struct sc_info*) ;
 int sv_power (struct sc_info*,int) ;

__attribute__((used)) static int
sv_detach(device_t dev) {
 struct sc_info *sc;
 int r;

 r = pcm_unregister(dev);
 if (r) return r;

 sc = pcm_getdevinfo(dev);
 sv_mix_mute_all(sc);
 sv_power(sc, 3);

 bus_dma_tag_destroy(sc->parent_dmat);
 bus_teardown_intr(dev, sc->irq, sc->ih);
 bus_release_resource(dev, SYS_RES_IRQ, sc->irqid, sc->irq);
 bus_release_resource(dev, sc->enh_type, sc->enh_rid, sc->enh_reg);
 bus_release_resource(dev, sc->dmaa_type, sc->dmaa_rid, sc->dmaa_reg);
 bus_release_resource(dev, sc->dmac_type, sc->dmac_rid, sc->dmac_reg);

 free(sc, M_DEVBUF);

 return 0;
}
