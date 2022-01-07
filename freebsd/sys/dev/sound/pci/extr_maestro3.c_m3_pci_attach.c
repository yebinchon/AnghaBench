
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int16_t ;
struct sc_info {scalar_t__ type; scalar_t__ regtype; scalar_t__ sc_lock; scalar_t__ parent_dmat; void* reg; scalar_t__ regid; void* irq; scalar_t__ irqid; scalar_t__ ih; int * savemem; int bufsz; int sh; int st; int delay2; int delay1; int which; int dev; } ;
struct m3_card_type {scalar_t__ pci_id; int delay2; int delay1; int which; } ;
struct ac97_info {int dummy; } ;
typedef int device_t ;


 struct ac97_info* AC97_CREATE (int ,struct sc_info*,int ) ;
 int BUS_SPACE_MAXADDR ;
 int CALL ;
 int ENXIO ;
 int INTR_MPSAFE ;
 int M3_BUFSIZE_DEFAULT ;
 int M3_BUFSIZE_MAX ;
 int M3_BUFSIZE_MIN ;
 int M3_DEBUG (int ,char*) ;
 int M3_LOCK (struct sc_info*) ;
 int M3_MAXADDR ;
 int M3_PCHANS ;
 int M3_RCHANS ;
 int M3_UNLOCK (struct sc_info*) ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 scalar_t__ PCIR_BAR (int ) ;
 int PCMDIR_PLAY ;
 int PCMDIR_REC ;
 int PCM_KLDSTRING (int ) ;
 int REV_B_CODE_MEMORY_LENGTH ;
 int REV_B_DATA_MEMORY_LENGTH ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SND_STATUSLEN ;
 scalar_t__ SYS_RES_IOPORT ;
 scalar_t__ SYS_RES_IRQ ;
 scalar_t__ SYS_RES_MEMORY ;
 int ac97_destroy (struct ac97_info*) ;
 int ac97_getmixerclass () ;
 void* bus_alloc_resource_any (int ,scalar_t__,scalar_t__*,int) ;
 scalar_t__ bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int ,int,int,int ,int *,int *,scalar_t__*) ;
 int bus_dma_tag_destroy (scalar_t__) ;
 int bus_get_dma_tag (int ) ;
 int bus_release_resource (int ,scalar_t__,scalar_t__,void*) ;
 int bus_teardown_intr (int ,void*,scalar_t__) ;
 int device_get_name (int ) ;
 int device_get_nameunit (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*) ;
 int free (struct sc_info*,int ) ;
 struct m3_card_type* m3_card_types ;
 int m3_codec ;
 int m3_enable_ints (struct sc_info*) ;
 int m3_init (struct sc_info*) ;
 int m3_intr ;
 int m3_pch_class ;
 int m3_power (struct sc_info*,int ) ;
 int m3_rch_class ;
 struct sc_info* malloc (int,int ,int) ;
 int mixer_hwvol_init (int ) ;
 scalar_t__ mixer_init (int ,int ,struct ac97_info*) ;
 int pci_enable_busmaster (int ) ;
 scalar_t__ pci_get_devid (int ) ;
 scalar_t__ pcm_addchan (int ,int ,int *,struct sc_info*) ;
 int pcm_getbuffersize (int ,int ,int ,int ) ;
 scalar_t__ pcm_register (int ,struct sc_info*,int,int) ;
 scalar_t__ pcm_setstatus (int ,char*) ;
 scalar_t__ resource_int_value (int ,int ,char*,int*) ;
 int rman_get_bushandle (void*) ;
 int rman_get_bustag (void*) ;
 int rman_get_start (void*) ;
 int snd_maestro3 ;
 scalar_t__ snd_mtxcreate (int ,char*) ;
 int snd_mtxfree (scalar_t__) ;
 scalar_t__ snd_setup_intr (int ,void*,int ,int ,struct sc_info*,scalar_t__*) ;
 int snprintf (char*,int,char*,char*,int ,int ,int ) ;

__attribute__((used)) static int
m3_pci_attach(device_t dev)
{
 struct sc_info *sc;
 struct ac97_info *codec = ((void*)0);
 char status[SND_STATUSLEN];
 struct m3_card_type *card;
 int i, len, dacn, adcn;

 M3_DEBUG(CALL, ("m3_pci_attach\n"));

 sc = malloc(sizeof(*sc), M_DEVBUF, M_WAITOK | M_ZERO);
 sc->dev = dev;
 sc->type = pci_get_devid(dev);
 sc->sc_lock = snd_mtxcreate(device_get_nameunit(dev),
     "snd_maestro3 softc");
 for (card = m3_card_types ; card->pci_id ; card++) {
  if (sc->type == card->pci_id) {
   sc->which = card->which;
   sc->delay1 = card->delay1;
   sc->delay2 = card->delay2;
   break;
  }
 }

 if (resource_int_value(device_get_name(dev), device_get_unit(dev),
     "dac", &i) == 0) {
      if (i < 1)
   dacn = 1;
  else if (i > M3_PCHANS)
   dacn = M3_PCHANS;
  else
   dacn = i;
 } else
  dacn = M3_PCHANS;

 adcn = M3_RCHANS;

 pci_enable_busmaster(dev);

 sc->regid = PCIR_BAR(0);
 sc->regtype = SYS_RES_MEMORY;
 sc->reg = bus_alloc_resource_any(dev, sc->regtype, &sc->regid,
      RF_ACTIVE);
 if (!sc->reg) {
  sc->regtype = SYS_RES_IOPORT;
  sc->reg = bus_alloc_resource_any(dev, sc->regtype, &sc->regid,
       RF_ACTIVE);
 }
 if (!sc->reg) {
  device_printf(dev, "unable to allocate register space\n");
  goto bad;
 }
 sc->st = rman_get_bustag(sc->reg);
 sc->sh = rman_get_bushandle(sc->reg);

 sc->irqid = 0;
 sc->irq = bus_alloc_resource_any(dev, SYS_RES_IRQ, &sc->irqid,
      RF_ACTIVE | RF_SHAREABLE);
 if (!sc->irq) {
  device_printf(dev, "unable to allocate interrupt\n");
  goto bad;
 }

 if (snd_setup_intr(dev, sc->irq, INTR_MPSAFE, m3_intr, sc, &sc->ih)) {
  device_printf(dev, "unable to setup interrupt\n");
  goto bad;
 }

 sc->bufsz = pcm_getbuffersize(dev, M3_BUFSIZE_MIN, M3_BUFSIZE_DEFAULT,
     M3_BUFSIZE_MAX);

 if (bus_dma_tag_create(
     bus_get_dma_tag(dev),
     2, 0,
     M3_MAXADDR,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     sc->bufsz,
     1,
     0x3ffff,
     0,
     ((void*)0),
     ((void*)0),
     &sc->parent_dmat) != 0) {
  device_printf(dev, "unable to create dma tag\n");
  goto bad;
 }

 M3_LOCK(sc);
 m3_power(sc, 0);

 i = m3_init(sc);
 M3_UNLOCK(sc);
 if (i == -1) {
  device_printf(dev, "unable to initialize the card\n");
  goto bad;
 }


 codec = AC97_CREATE(dev, sc, m3_codec);
 if (codec == ((void*)0)) {
  device_printf(dev, "ac97_create error\n");
  goto bad;
 }
 if (mixer_init(dev, ac97_getmixerclass(), codec)) {
  device_printf(dev, "mixer_init error\n");
  goto bad;
 }

 m3_enable_ints(sc);

 if (pcm_register(dev, sc, dacn, adcn)) {
  device_printf(dev, "pcm_register error\n");
  goto bad;
 }
 for (i=0 ; i<dacn ; i++) {
  if (pcm_addchan(dev, PCMDIR_PLAY, &m3_pch_class, sc)) {
   device_printf(dev, "pcm_addchan (play) error\n");
   goto bad;
  }
 }
 for (i=0 ; i<adcn ; i++) {
  if (pcm_addchan(dev, PCMDIR_REC, &m3_rch_class, sc)) {
   device_printf(dev, "pcm_addchan (rec) error\n");
   goto bad;
  }
 }
  snprintf(status, SND_STATUSLEN, "at %s 0x%jx irq %jd %s",
     (sc->regtype == SYS_RES_IOPORT)? "io" : "memory",
     rman_get_start(sc->reg), rman_get_start(sc->irq),
     PCM_KLDSTRING(snd_maestro3));
 if (pcm_setstatus(dev, status)) {
  device_printf(dev, "attach: pcm_setstatus error\n");
  goto bad;
 }

 mixer_hwvol_init(dev);


 len = sizeof(u_int16_t) * (REV_B_CODE_MEMORY_LENGTH +
     REV_B_DATA_MEMORY_LENGTH);
 sc->savemem = (u_int16_t*)malloc(len, M_DEVBUF, M_WAITOK | M_ZERO);

 return 0;

 bad:
 if (codec)
  ac97_destroy(codec);
 if (sc->ih)
  bus_teardown_intr(dev, sc->irq, sc->ih);
 if (sc->irq)
  bus_release_resource(dev, SYS_RES_IRQ, sc->irqid, sc->irq);
 if (sc->reg)
  bus_release_resource(dev, sc->regtype, sc->regid, sc->reg);
 if (sc->parent_dmat)
  bus_dma_tag_destroy(sc->parent_dmat);
 if (sc->sc_lock)
  snd_mtxfree(sc->sc_lock);
 free(sc, M_DEVBUF);
 return ENXIO;
}
