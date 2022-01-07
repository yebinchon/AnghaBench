
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int uint16_t ;
struct via_info {int poll_ticks; int polling; int bufsz; int blkcnt; int dma_eol_wake; int dxs_src; int codec_caps; scalar_t__ lock; scalar_t__ sgd_dmat; int sgd_dmamap; scalar_t__ sgd_table; scalar_t__ sgd_addr; scalar_t__ parent_dmat; void* irq; scalar_t__ irqid; scalar_t__ ih; void* reg; scalar_t__ regid; scalar_t__ codec; int sh; int st; int poll_timer; int dev; } ;
struct via_dma_op {int dummy; } ;
typedef int device_t ;


 scalar_t__ AC97_CREATE (int ,struct via_info*,int ) ;
 int AC97_EXTCAP_DRA ;
 int AC97_EXTCAP_VRA ;
 int AC97_EXTCAP_VRM ;
 int BUS_DMA_NOWAIT ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int ENXIO ;
 int INTR_MPSAFE ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 int NDXSCHANS ;
 int NMSGDCHANS ;
 int NWRCHANS ;
 scalar_t__ PCIR_BAR (int ) ;
 int PCI_POWERSTATE_D0 ;
 int PCMDIR_PLAY ;
 int PCMDIR_REC ;
 int PCM_KLDSTRING (int ) ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SND_STATUSLEN ;
 int SYS_RES_IOPORT ;
 int SYS_RES_IRQ ;
 scalar_t__ VIA8233_REV_ID_8233A ;
 scalar_t__ VIA8233_REV_ID_8251 ;
 int VIA_BLK_ALIGN ;
 int VIA_BLK_MIN ;
 int VIA_DEFAULT_BUFSZ ;
 int VIA_SEGS_DEFAULT ;
 int VIA_SEGS_MAX ;
 int VIA_SEGS_MIN ;
 int ac97_destroy (scalar_t__) ;
 int ac97_getextcaps (scalar_t__) ;
 int ac97_getextmode (scalar_t__) ;
 int ac97_getmixerclass () ;
 int ac97_setextmode (scalar_t__,int) ;
 void* bus_alloc_resource_any (int ,int ,scalar_t__*,int) ;
 scalar_t__ bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int,int,int,int ,int *,int *,scalar_t__*) ;
 int bus_dma_tag_destroy (scalar_t__) ;
 scalar_t__ bus_dmamap_load (scalar_t__,int ,scalar_t__,int,int ,struct via_info*,int ) ;
 int bus_dmamap_unload (scalar_t__,int ) ;
 int bus_dmamem_alloc (scalar_t__,void**,int ,int *) ;
 int bus_dmamem_free (scalar_t__,scalar_t__,int ) ;
 int bus_get_dma_tag (int ) ;
 int bus_release_resource (int ,int ,scalar_t__,void*) ;
 int bus_teardown_intr (int ,void*,scalar_t__) ;
 int callout_init (int *,int) ;
 int device_get_name (int ) ;
 int device_get_nameunit (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*,...) ;
 int dma_cb ;
 int free (struct via_info*,int ) ;
 struct via_info* malloc (int,int ,int) ;
 int mixer_init (int ,int ,scalar_t__) ;
 int pci_enable_busmaster (int ) ;
 scalar_t__ pci_get_revid (int ) ;
 int pci_set_powerstate (int ,int ) ;
 int pcm_addchan (int ,int ,int *,struct via_info*) ;
 int pcm_getbuffersize (int ,int,int ,int) ;
 scalar_t__ pcm_register (int ,struct via_info*,int,int) ;
 int pcm_setstatus (int ,char*) ;
 scalar_t__ resource_int_value (int ,int ,char*,int*) ;
 int rman_get_bushandle (void*) ;
 int rman_get_bustag (void*) ;
 int rman_get_start (void*) ;
 scalar_t__ snd_mtxcreate (int ,char*) ;
 int snd_mtxfree (scalar_t__) ;
 scalar_t__ snd_setup_intr (int ,void*,int ,int ,struct via_info*,scalar_t__*) ;
 int snd_via8233 ;
 int snprintf (char*,int,char*,int ,int ,int ) ;
 int via8233dxs_class ;
 int via8233msgd_class ;
 int via8233wr_class ;
 int via_ac97 ;
 scalar_t__ via_chip_init (int ) ;
 int via_init_sysctls (int ) ;
 int via_intr ;

__attribute__((used)) static int
via_attach(device_t dev)
{
 struct via_info *via = ((void*)0);
 char status[SND_STATUSLEN];
 int i, via_dxs_disabled, via_dxs_src, via_dxs_chnum, via_sgd_chnum;
 int nsegs;
 uint32_t revid;

 via = malloc(sizeof *via, M_DEVBUF, M_WAITOK | M_ZERO);
 via->lock = snd_mtxcreate(device_get_nameunit(dev),
     "snd_via8233 softc");
 via->dev = dev;

 callout_init(&via->poll_timer, 1);
 via->poll_ticks = 1;

 if (resource_int_value(device_get_name(dev),
     device_get_unit(dev), "polling", &i) == 0 && i != 0)
  via->polling = 1;
 else
  via->polling = 0;

 pci_set_powerstate(dev, PCI_POWERSTATE_D0);
 pci_enable_busmaster(dev);

 via->regid = PCIR_BAR(0);
 via->reg = bus_alloc_resource_any(dev, SYS_RES_IOPORT, &via->regid,
       RF_ACTIVE);
 if (!via->reg) {
  device_printf(dev, "cannot allocate bus resource.");
  goto bad;
 }
 via->st = rman_get_bustag(via->reg);
 via->sh = rman_get_bushandle(via->reg);

 via->irqid = 0;
 via->irq = bus_alloc_resource_any(dev, SYS_RES_IRQ, &via->irqid,
     RF_ACTIVE | RF_SHAREABLE);
 if (!via->irq ||
     snd_setup_intr(dev, via->irq, INTR_MPSAFE,
     via_intr, via, &via->ih)) {
  device_printf(dev, "unable to map interrupt\n");
  goto bad;
 }

 via->bufsz = pcm_getbuffersize(dev, 4096, VIA_DEFAULT_BUFSZ, 65536);
 if (resource_int_value(device_get_name(dev),
     device_get_unit(dev), "blocksize", &i) == 0 && i > 0) {
  i &= VIA_BLK_ALIGN;
  if (i < VIA_BLK_MIN)
   i = VIA_BLK_MIN;
  via->blkcnt = via->bufsz / i;
  i = 0;
  while (via->blkcnt >> i)
   i++;
  via->blkcnt = 1 << (i - 1);
  if (via->blkcnt < VIA_SEGS_MIN)
   via->blkcnt = VIA_SEGS_MIN;
  else if (via->blkcnt > VIA_SEGS_MAX)
   via->blkcnt = VIA_SEGS_MAX;

 } else
  via->blkcnt = VIA_SEGS_DEFAULT;

 revid = pci_get_revid(dev);





 if (revid == VIA8233_REV_ID_8251)
  via->dma_eol_wake = 1;
 else
  via->dma_eol_wake = 0;




 if (revid == VIA8233_REV_ID_8233A) {






  via_dxs_disabled = 1;
 } else if (resource_int_value(device_get_name(dev),
     device_get_unit(dev), "via_dxs_disabled",
     &via_dxs_disabled) == 0)
  via_dxs_disabled = (via_dxs_disabled > 0) ? 1 : 0;
 else
  via_dxs_disabled = 0;

 if (via_dxs_disabled) {
  via_dxs_chnum = 0;
  via_sgd_chnum = 1;
 } else {
  if (resource_int_value(device_get_name(dev),
      device_get_unit(dev), "via_dxs_channels",
      &via_dxs_chnum) != 0)
   via_dxs_chnum = NDXSCHANS;
  if (resource_int_value(device_get_name(dev),
      device_get_unit(dev), "via_sgd_channels",
      &via_sgd_chnum) != 0)
   via_sgd_chnum = NMSGDCHANS;
 }
 if (via_dxs_chnum > NDXSCHANS)
  via_dxs_chnum = NDXSCHANS;
 else if (via_dxs_chnum < 0)
  via_dxs_chnum = 0;
 if (via_sgd_chnum > NMSGDCHANS)
  via_sgd_chnum = NMSGDCHANS;
 else if (via_sgd_chnum < 0)
  via_sgd_chnum = 0;
 if (via_dxs_chnum + via_sgd_chnum < 1) {

  via_dxs_chnum = 1;
  via_sgd_chnum = 0;
 }
 if (via_dxs_chnum > 0 && resource_int_value(device_get_name(dev),
     device_get_unit(dev), "via_dxs_src", &via_dxs_src) == 0)
  via->dxs_src = (via_dxs_src > 0) ? 1 : 0;
 else
  via->dxs_src = 0;

 nsegs = (via_dxs_chnum + via_sgd_chnum + NWRCHANS) * VIA_SEGS_MAX;


 if (bus_dma_tag_create( bus_get_dma_tag(dev), 2,
              0,
             BUS_SPACE_MAXADDR_32BIT,
              BUS_SPACE_MAXADDR,
            ((void*)0), ((void*)0),
             via->bufsz, 1, 0x3ffff,
           0, ((void*)0),
             ((void*)0), &via->parent_dmat) != 0) {
  device_printf(dev, "unable to create dma tag\n");
  goto bad;
 }






 if (bus_dma_tag_create( bus_get_dma_tag(dev), 2,
              0,
             BUS_SPACE_MAXADDR_32BIT,
              BUS_SPACE_MAXADDR,
            ((void*)0), ((void*)0),
             nsegs * sizeof(struct via_dma_op),
               1, 0x3ffff,
           0, ((void*)0),
             ((void*)0), &via->sgd_dmat) != 0) {
  device_printf(dev, "unable to create dma tag\n");
  goto bad;
 }

 if (bus_dmamem_alloc(via->sgd_dmat, (void **)&via->sgd_table,
     BUS_DMA_NOWAIT, &via->sgd_dmamap) == -1)
  goto bad;
 if (bus_dmamap_load(via->sgd_dmat, via->sgd_dmamap, via->sgd_table,
     nsegs * sizeof(struct via_dma_op), dma_cb, via, 0))
  goto bad;

 if (via_chip_init(dev))
  goto bad;

 via->codec = AC97_CREATE(dev, via, via_ac97);
 if (!via->codec)
  goto bad;

 mixer_init(dev, ac97_getmixerclass(), via->codec);

 via->codec_caps = ac97_getextcaps(via->codec);


 if (via->codec_caps &
     (AC97_EXTCAP_VRA | AC97_EXTCAP_VRM | AC97_EXTCAP_DRA)) {
  uint16_t ext = ac97_getextmode(via->codec);
  ext |= (via->codec_caps &
      (AC97_EXTCAP_VRA | AC97_EXTCAP_VRM));
  ext &= ~AC97_EXTCAP_DRA;
  ac97_setextmode(via->codec, ext);
 }

 snprintf(status, SND_STATUSLEN, "at io 0x%jx irq %jd %s",
     rman_get_start(via->reg), rman_get_start(via->irq),
     PCM_KLDSTRING(snd_via8233));


 if (pcm_register(dev, via, via_dxs_chnum + via_sgd_chnum, NWRCHANS))
       goto bad;
 for (i = 0; i < via_dxs_chnum; i++)
       pcm_addchan(dev, PCMDIR_PLAY, &via8233dxs_class, via);
 for (i = 0; i < via_sgd_chnum; i++)
       pcm_addchan(dev, PCMDIR_PLAY, &via8233msgd_class, via);
 for (i = 0; i < NWRCHANS; i++)
       pcm_addchan(dev, PCMDIR_REC, &via8233wr_class, via);
 if (via_dxs_chnum > 0)
  via_init_sysctls(dev);
 device_printf(dev, "<VIA DXS %sabled: DXS%s %d / SGD %d / REC %d>\n",
     (via_dxs_chnum > 0) ? "En" : "Dis", (via->dxs_src) ? "(SRC)" : "",
     via_dxs_chnum, via_sgd_chnum, NWRCHANS);

 pcm_setstatus(dev, status);

 return (0);
bad:
 if (via->codec)
  ac97_destroy(via->codec);
 if (via->reg)
  bus_release_resource(dev, SYS_RES_IOPORT, via->regid, via->reg);
 if (via->ih)
  bus_teardown_intr(dev, via->irq, via->ih);
 if (via->irq)
  bus_release_resource(dev, SYS_RES_IRQ, via->irqid, via->irq);
 if (via->parent_dmat)
  bus_dma_tag_destroy(via->parent_dmat);
 if (via->sgd_addr)
  bus_dmamap_unload(via->sgd_dmat, via->sgd_dmamap);
 if (via->sgd_table)
  bus_dmamem_free(via->sgd_dmat, via->sgd_table, via->sgd_dmamap);
 if (via->sgd_dmat)
  bus_dma_tag_destroy(via->sgd_dmat);
 if (via->lock)
  snd_mtxfree(via->lock);
 if (via)
  free(via, M_DEVBUF);
 return (ENXIO);
}
