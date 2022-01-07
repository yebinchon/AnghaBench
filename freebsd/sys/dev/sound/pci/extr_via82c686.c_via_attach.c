
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct via_info {int bufsz; int codec_caps; scalar_t__ lock; scalar_t__ sgd_dmat; int sgd_dmamap; scalar_t__ sgd_table; scalar_t__ sgd_addr; scalar_t__ parent_dmat; void* irq; scalar_t__ irqid; scalar_t__ ih; void* reg; scalar_t__ regid; scalar_t__ codec; int sh; int st; } ;
struct via_dma_op {int dummy; } ;
typedef int device_t ;


 scalar_t__ AC97_CREATE (int ,struct via_info*,int ) ;
 int AC97_EXTCAP_VRA ;
 int AC97_EXTCAP_VRM ;
 int BUS_DMA_NOWAIT ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int DELAY (int) ;
 int ENXIO ;
 int INTR_MPSAFE ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 int NSEGS ;
 scalar_t__ PCIR_BAR (int ) ;
 int PCMDIR_PLAY ;
 int PCMDIR_REC ;
 int PCM_KLDSTRING (int ) ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SND_STATUSLEN ;
 int SYS_RES_IOPORT ;
 int SYS_RES_IRQ ;
 int VIA_AC97STATUS ;
 int VIA_AC97STATUS_RDY ;
 int VIA_ACLINKCTRL ;
 int VIA_ACLINK_DESIRED ;
 int VIA_ACLINK_EN ;
 int VIA_ACLINK_NRST ;
 int VIA_ACLINK_SYNC ;
 int VIA_DEFAULT_BUFSZ ;
 int VIA_PLAY_MODE ;
 int VIA_RECORD_MODE ;
 int VIA_RPMODE_AUTOSTART ;
 int VIA_RPMODE_INTR_EOL ;
 int VIA_RPMODE_INTR_FLAG ;
 int ac97_destroy (scalar_t__) ;
 int ac97_getextcaps (scalar_t__) ;
 int ac97_getmixerclass () ;
 int ac97_setextmode (scalar_t__,int) ;
 void* bus_alloc_resource_any (int ,int ,scalar_t__*,int) ;
 scalar_t__ bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int,int,int,int ,int *,int *,scalar_t__*) ;
 int bus_dma_tag_destroy (scalar_t__) ;
 scalar_t__ bus_dmamap_load (scalar_t__,int ,scalar_t__,int,int ,struct via_info*,int ) ;
 int bus_dmamap_unload (scalar_t__,int ) ;
 scalar_t__ bus_dmamem_alloc (scalar_t__,void**,int ,int *) ;
 int bus_dmamem_free (scalar_t__,scalar_t__,int ) ;
 int bus_get_dma_tag (int ) ;
 int bus_release_resource (int ,int ,scalar_t__,void*) ;
 int bus_teardown_intr (int ,void*,scalar_t__) ;
 int device_get_nameunit (int ) ;
 int device_printf (int ,char*) ;
 int dma_cb ;
 int free (struct via_info*,int ) ;
 struct via_info* malloc (int,int ,int) ;
 scalar_t__ mixer_init (int ,int ,scalar_t__) ;
 int pci_enable_busmaster (int ) ;
 int pci_read_config (int ,int ,int) ;
 int pci_write_config (int ,int ,int,int) ;
 int pcm_addchan (int ,int ,int *,struct via_info*) ;
 int pcm_getbuffersize (int ,int,int ,int) ;
 scalar_t__ pcm_register (int ,struct via_info*,int,int) ;
 int pcm_setstatus (int ,char*) ;
 int rman_get_bushandle (void*) ;
 int rman_get_bustag (void*) ;
 int rman_get_start (void*) ;
 scalar_t__ snd_mtxcreate (int ,char*) ;
 int snd_mtxfree (scalar_t__) ;
 scalar_t__ snd_setup_intr (int ,void*,int ,int ,struct via_info*,scalar_t__*) ;
 int snd_via82c686 ;
 int snprintf (char*,int,char*,int ,int ,int ) ;
 int via_ac97 ;
 int via_intr ;
 int via_wr (struct via_info*,int ,int,int) ;
 int viachan_class ;

__attribute__((used)) static int
via_attach(device_t dev)
{
 struct via_info *via = ((void*)0);
 char status[SND_STATUSLEN];
 u_int32_t data, cnt;

 via = malloc(sizeof(*via), M_DEVBUF, M_WAITOK | M_ZERO);
 via->lock = snd_mtxcreate(device_get_nameunit(dev),
     "snd_via82c686 softc");

 pci_enable_busmaster(dev);


 data = pci_read_config(dev, VIA_AC97STATUS, 1);

 if ((data & VIA_AC97STATUS_RDY) == 0) {

  pci_write_config(dev, VIA_ACLINKCTRL, VIA_ACLINK_EN, 1);
  DELAY(100);
  pci_write_config(dev, VIA_ACLINKCTRL, VIA_ACLINK_EN | VIA_ACLINK_NRST, 1);
  DELAY(5);
  pci_write_config(dev, VIA_ACLINKCTRL, VIA_ACLINK_EN, 1);
 } else {

  pci_write_config(dev, VIA_ACLINKCTRL, VIA_ACLINK_EN, 1);
  DELAY(100);
  pci_write_config(dev, VIA_ACLINKCTRL, VIA_ACLINK_EN | VIA_ACLINK_SYNC, 1);
  DELAY(5);
  pci_write_config(dev, VIA_ACLINKCTRL, VIA_ACLINK_EN, 1);
  DELAY(5);
 }


 pci_write_config(dev, VIA_ACLINKCTRL, VIA_ACLINK_DESIRED, 1);


 for (cnt = 0; cnt < 2000; cnt++) {
  data = pci_read_config(dev, VIA_AC97STATUS, 1);
  if (data & VIA_AC97STATUS_RDY)
   break;
  DELAY(5000);
 }

 via->regid = PCIR_BAR(0);
 via->reg = bus_alloc_resource_any(dev, SYS_RES_IOPORT,
  &via->regid, RF_ACTIVE);
 if (!via->reg) {
  device_printf(dev, "cannot allocate bus resource.");
  goto bad;
 }
 via->st = rman_get_bustag(via->reg);
 via->sh = rman_get_bushandle(via->reg);

 via->bufsz = pcm_getbuffersize(dev, 4096, VIA_DEFAULT_BUFSZ, 65536);

 via->irqid = 0;
 via->irq = bus_alloc_resource_any(dev, SYS_RES_IRQ, &via->irqid,
  RF_ACTIVE | RF_SHAREABLE);
 if (!via->irq || snd_setup_intr(dev, via->irq, INTR_MPSAFE, via_intr, via, &via->ih)) {
  device_printf(dev, "unable to map interrupt\n");
  goto bad;
 }

 via_wr(via, VIA_PLAY_MODE, VIA_RPMODE_AUTOSTART | VIA_RPMODE_INTR_FLAG | VIA_RPMODE_INTR_EOL, 1);
 via_wr(via, VIA_RECORD_MODE, VIA_RPMODE_AUTOSTART | VIA_RPMODE_INTR_FLAG | VIA_RPMODE_INTR_EOL, 1);

 via->codec = AC97_CREATE(dev, via, via_ac97);
 if (!via->codec)
  goto bad;

 if (mixer_init(dev, ac97_getmixerclass(), via->codec))
  goto bad;

 via->codec_caps = ac97_getextcaps(via->codec);
 ac97_setextmode(via->codec,
   via->codec_caps & (AC97_EXTCAP_VRA | AC97_EXTCAP_VRM));


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
             NSEGS * sizeof(struct via_dma_op),
               1, 0x3ffff,
           0, ((void*)0),
             ((void*)0), &via->sgd_dmat) != 0) {
  device_printf(dev, "unable to create dma tag\n");
  goto bad;
 }

 if (bus_dmamem_alloc(via->sgd_dmat, (void **)&via->sgd_table,
     BUS_DMA_NOWAIT, &via->sgd_dmamap) != 0)
  goto bad;
 if (bus_dmamap_load(via->sgd_dmat, via->sgd_dmamap, via->sgd_table,
     NSEGS * sizeof(struct via_dma_op), dma_cb, via, 0) != 0)
  goto bad;

 snprintf(status, SND_STATUSLEN, "at io 0x%jx irq %jd %s",
   rman_get_start(via->reg), rman_get_start(via->irq),
   PCM_KLDSTRING(snd_via82c686));


 if (pcm_register(dev, via, 1, 1)) goto bad;
 pcm_addchan(dev, PCMDIR_PLAY, &viachan_class, via);
 pcm_addchan(dev, PCMDIR_REC, &viachan_class, via);
 pcm_setstatus(dev, status);
 return 0;
bad:
 if (via->codec) ac97_destroy(via->codec);
 if (via->reg) bus_release_resource(dev, SYS_RES_IOPORT, via->regid, via->reg);
 if (via->ih) bus_teardown_intr(dev, via->irq, via->ih);
 if (via->irq) bus_release_resource(dev, SYS_RES_IRQ, via->irqid, via->irq);
 if (via->parent_dmat) bus_dma_tag_destroy(via->parent_dmat);
 if (via->sgd_addr) bus_dmamap_unload(via->sgd_dmat, via->sgd_dmamap);
 if (via->sgd_table) bus_dmamem_free(via->sgd_dmat, via->sgd_table, via->sgd_dmamap);
 if (via->sgd_dmat) bus_dma_tag_destroy(via->sgd_dmat);
 if (via->lock) snd_mtxfree(via->lock);
 if (via) free(via, M_DEVBUF);
 return ENXIO;
}
