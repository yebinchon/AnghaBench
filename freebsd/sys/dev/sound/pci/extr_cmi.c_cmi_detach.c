
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc_info {int lock; scalar_t__ mpu_reg; int mpu_regid; scalar_t__ reg; int regid; scalar_t__ mpu; scalar_t__ irq; int irqid; int ih; int parent_dmat; } ;
typedef int device_t ;


 int M_DEVBUF ;
 int SYS_RES_IOPORT ;
 int SYS_RES_IRQ ;
 int bus_dma_tag_destroy (int ) ;
 int bus_release_resource (int ,int ,int ,scalar_t__) ;
 int bus_teardown_intr (int ,scalar_t__,int ) ;
 int cmi_power (struct sc_info*,int) ;
 int cmi_uninit (struct sc_info*) ;
 int free (struct sc_info*,int ) ;
 int mpu401_uninit (scalar_t__) ;
 struct sc_info* pcm_getdevinfo (int ) ;
 int pcm_unregister (int ) ;
 int snd_mtxfree (int ) ;

__attribute__((used)) static int
cmi_detach(device_t dev)
{
 struct sc_info *sc;
 int r;

 r = pcm_unregister(dev);
 if (r) return r;

 sc = pcm_getdevinfo(dev);
 cmi_uninit(sc);
 cmi_power(sc, 3);

 bus_dma_tag_destroy(sc->parent_dmat);
 bus_teardown_intr(dev, sc->irq, sc->ih);
 bus_release_resource(dev, SYS_RES_IRQ, sc->irqid, sc->irq);
 if(sc->mpu)
  mpu401_uninit(sc->mpu);
 bus_release_resource(dev, SYS_RES_IOPORT, sc->regid, sc->reg);
 if (sc->mpu_reg)
     bus_release_resource(dev, SYS_RES_IOPORT, sc->mpu_regid, sc->mpu_reg);

 snd_mtxfree(sc->lock);
 free(sc, M_DEVBUF);

 return 0;
}
