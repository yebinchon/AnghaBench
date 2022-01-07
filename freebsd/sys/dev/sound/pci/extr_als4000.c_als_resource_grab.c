
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc_info {int parent_dmat; int bufsz; int ih; int * irq; int irqid; int * reg; int sh; int st; int regid; } ;
typedef int device_t ;


 int ALS_DEFAULT_BUFSZ ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_24BIT ;
 int ENXIO ;
 int INTR_MPSAFE ;
 int PCIR_BAR (int ) ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_IOPORT ;
 int SYS_RES_IRQ ;
 int als_intr ;
 int als_resource_free (int ,struct sc_info*) ;
 void* bus_alloc_resource_any (int ,int ,int *,int) ;
 scalar_t__ bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int ,int,int,int ,int *,int *,int *) ;
 int bus_get_dma_tag (int ) ;
 int device_printf (int ,char*) ;
 int pcm_getbuffersize (int ,int,int ,int) ;
 int rman_get_bushandle (int *) ;
 int rman_get_bustag (int *) ;
 scalar_t__ snd_setup_intr (int ,int *,int ,int ,struct sc_info*,int *) ;

__attribute__((used)) static int
als_resource_grab(device_t dev, struct sc_info *sc)
{
 sc->regid = PCIR_BAR(0);
 sc->reg = bus_alloc_resource_any(dev, SYS_RES_IOPORT, &sc->regid,
      RF_ACTIVE);
 if (sc->reg == ((void*)0)) {
  device_printf(dev, "unable to allocate register space\n");
  goto bad;
 }
 sc->st = rman_get_bustag(sc->reg);
 sc->sh = rman_get_bushandle(sc->reg);

 sc->irq = bus_alloc_resource_any(dev, SYS_RES_IRQ, &sc->irqid,
      RF_ACTIVE | RF_SHAREABLE);
 if (sc->irq == ((void*)0)) {
  device_printf(dev, "unable to allocate interrupt\n");
  goto bad;
 }

 if (snd_setup_intr(dev, sc->irq, INTR_MPSAFE, als_intr,
      sc, &sc->ih)) {
  device_printf(dev, "unable to setup interrupt\n");
  goto bad;
 }

 sc->bufsz = pcm_getbuffersize(dev, 4096, ALS_DEFAULT_BUFSZ, 65536);

 if (bus_dma_tag_create( bus_get_dma_tag(dev),
                       2, 0,
                     BUS_SPACE_MAXADDR_24BIT,
                      BUS_SPACE_MAXADDR,
                    ((void*)0), ((void*)0),
                     sc->bufsz,
                       1, 0x3ffff,
                   0, ((void*)0),
                     ((void*)0), &sc->parent_dmat) != 0) {
  device_printf(dev, "unable to create dma tag\n");
  goto bad;
 }
 return 0;
 bad:
 als_resource_free(dev, sc);
 return ENXIO;
}
