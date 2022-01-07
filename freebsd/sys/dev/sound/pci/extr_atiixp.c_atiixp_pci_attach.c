
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* ich_func ) (struct atiixp_info*) ;struct atiixp_info* ich_arg; } ;
struct atiixp_info {int poll_ticks; int polling; int bufsz; int blkcnt; TYPE_1__ delayed_attach; int sgd_table; int sgd_dmamap; int sgd_dmat; int parent_dmat; int ih; void* irq; scalar_t__ irqid; void* reg; int sh; int st; scalar_t__ regid; int regtype; int dev; int poll_timer; int lock; } ;
struct atiixp_dma_op {int dummy; } ;
typedef int device_t ;


 int ATI_IXP_BLK_ALIGN ;
 int ATI_IXP_BLK_MIN ;
 int ATI_IXP_BUFSZ_DEFAULT ;
 int ATI_IXP_BUFSZ_MAX ;
 int ATI_IXP_BUFSZ_MIN ;
 int ATI_IXP_DMA_CHSEGS ;
 int ATI_IXP_DMA_CHSEGS_MAX ;
 int ATI_IXP_DMA_CHSEGS_MIN ;
 int ATI_IXP_NCHANS ;
 int BUS_DMA_NOWAIT ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int ENXIO ;
 int INTR_MPSAFE ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 scalar_t__ PCIR_BAR (int ) ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int atiixp_chip_post_init (struct atiixp_info*) ;
 int atiixp_chip_pre_init (struct atiixp_info*) ;
 int atiixp_dma_cb ;
 int atiixp_intr ;
 int atiixp_release_resource (struct atiixp_info*) ;
 void* bus_alloc_resource_any (int ,int ,scalar_t__*,int) ;
 scalar_t__ bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int,int,int,int ,int *,int *,int *) ;
 scalar_t__ bus_dmamap_load (int ,int ,int ,int,int ,struct atiixp_info*,int ) ;
 int bus_dmamem_alloc (int ,void**,int ,int *) ;
 int bus_get_dma_tag (int ) ;
 int callout_init (int *,int) ;
 scalar_t__ cold ;
 scalar_t__ config_intrhook_establish (TYPE_1__*) ;
 int device_get_name (int ) ;
 int device_get_nameunit (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*) ;
 struct atiixp_info* malloc (int,int ,int) ;
 int pci_enable_busmaster (int ) ;
 int pcm_getbuffersize (int ,int ,int ,int ) ;
 scalar_t__ resource_int_value (int ,int ,char*,int*) ;
 int rman_get_bushandle (void*) ;
 int rman_get_bustag (void*) ;
 int snd_mtxcreate (int ,char*) ;
 scalar_t__ snd_setup_intr (int ,void*,int ,int ,struct atiixp_info*,int *) ;

__attribute__((used)) static int
atiixp_pci_attach(device_t dev)
{
 struct atiixp_info *sc;
 int i;

 sc = malloc(sizeof(*sc), M_DEVBUF, M_WAITOK | M_ZERO);
 sc->lock = snd_mtxcreate(device_get_nameunit(dev), "snd_atiixp softc");
 sc->dev = dev;

 callout_init(&sc->poll_timer, 1);
 sc->poll_ticks = 1;

 if (resource_int_value(device_get_name(sc->dev),
     device_get_unit(sc->dev), "polling", &i) == 0 && i != 0)
  sc->polling = 1;
 else
  sc->polling = 0;

 pci_enable_busmaster(dev);

 sc->regid = PCIR_BAR(0);
 sc->regtype = SYS_RES_MEMORY;
 sc->reg = bus_alloc_resource_any(dev, sc->regtype,
     &sc->regid, RF_ACTIVE);

 if (!sc->reg) {
  device_printf(dev, "unable to allocate register space\n");
  goto bad;
 }

 sc->st = rman_get_bustag(sc->reg);
 sc->sh = rman_get_bushandle(sc->reg);

 sc->bufsz = pcm_getbuffersize(dev, ATI_IXP_BUFSZ_MIN,
     ATI_IXP_BUFSZ_DEFAULT, ATI_IXP_BUFSZ_MAX);

 sc->irqid = 0;
 sc->irq = bus_alloc_resource_any(dev, SYS_RES_IRQ, &sc->irqid,
     RF_ACTIVE | RF_SHAREABLE);
 if (!sc->irq || snd_setup_intr(dev, sc->irq, INTR_MPSAFE,
     atiixp_intr, sc, &sc->ih)) {
  device_printf(dev, "unable to map interrupt\n");
  goto bad;
 }




 if (resource_int_value(device_get_name(dev),
     device_get_unit(dev), "blocksize", &i) == 0 && i > 0) {
  i &= ATI_IXP_BLK_ALIGN;
  if (i < ATI_IXP_BLK_MIN)
   i = ATI_IXP_BLK_MIN;
  sc->blkcnt = sc->bufsz / i;
  i = 0;
  while (sc->blkcnt >> i)
   i++;
  sc->blkcnt = 1 << (i - 1);
  if (sc->blkcnt < ATI_IXP_DMA_CHSEGS_MIN)
   sc->blkcnt = ATI_IXP_DMA_CHSEGS_MIN;
  else if (sc->blkcnt > ATI_IXP_DMA_CHSEGS_MAX)
   sc->blkcnt = ATI_IXP_DMA_CHSEGS_MAX;

 } else
  sc->blkcnt = ATI_IXP_DMA_CHSEGS;




 if (bus_dma_tag_create( bus_get_dma_tag(dev), 2,
              0,
             BUS_SPACE_MAXADDR_32BIT,
              BUS_SPACE_MAXADDR,
            ((void*)0), ((void*)0),
             sc->bufsz, 1, 0x3ffff,
           0, ((void*)0),
             ((void*)0), &sc->parent_dmat) != 0) {
  device_printf(dev, "unable to create dma tag\n");
  goto bad;
 }

 if (bus_dma_tag_create( bus_get_dma_tag(dev), 2,
              0,
             BUS_SPACE_MAXADDR_32BIT,
              BUS_SPACE_MAXADDR,
            ((void*)0), ((void*)0),
             ATI_IXP_DMA_CHSEGS_MAX * ATI_IXP_NCHANS *
  sizeof(struct atiixp_dma_op),
               1, 0x3ffff,
           0, ((void*)0),
             ((void*)0), &sc->sgd_dmat) != 0) {
  device_printf(dev, "unable to create dma tag\n");
  goto bad;
 }

 if (bus_dmamem_alloc(sc->sgd_dmat, (void **)&sc->sgd_table,
     BUS_DMA_NOWAIT, &sc->sgd_dmamap) == -1)
  goto bad;

 if (bus_dmamap_load(sc->sgd_dmat, sc->sgd_dmamap, sc->sgd_table,
     ATI_IXP_DMA_CHSEGS_MAX * ATI_IXP_NCHANS *
     sizeof(struct atiixp_dma_op), atiixp_dma_cb, sc, 0))
  goto bad;


 atiixp_chip_pre_init(sc);

 sc->delayed_attach.ich_func = atiixp_chip_post_init;
 sc->delayed_attach.ich_arg = sc;
 if (cold == 0 ||
     config_intrhook_establish(&sc->delayed_attach) != 0) {
  sc->delayed_attach.ich_func = ((void*)0);
  atiixp_chip_post_init(sc);
 }

 return (0);

bad:
 atiixp_release_resource(sc);
 return (ENXIO);
}
