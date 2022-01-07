
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct sc_info {scalar_t__ lock; scalar_t__ control_dmat; scalar_t__ buffer_dmat; void* irq; scalar_t__ irqid; scalar_t__ ih; void* reg; scalar_t__ regid; int * regbase; int bufsz; int sh; int st; int rev; int type; int dev; } ;
struct ac97_info {int dummy; } ;
typedef int device_t ;


 struct ac97_info* AC97_CREATE (int ,struct sc_info*,int ) ;
 int AC97_F_EAPD_INV ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int DS1_BUFFSIZE ;
 int DS1_CHANS ;
 int ENXIO ;
 int INTR_MPSAFE ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 scalar_t__ PCIR_BAR (int ) ;
 int PCMDIR_PLAY ;
 int PCMDIR_REC ;
 int PCM_KLDSTRING (int ) ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SND_STATUSLEN ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int ac97_destroy (struct ac97_info*) ;
 int ac97_getflags (struct ac97_info*) ;
 int ac97_getmixerclass () ;
 int ac97_setflags (struct ac97_info*,int) ;
 void* bus_alloc_resource_any (int ,int ,scalar_t__*,int) ;
 scalar_t__ bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int ,int,int,int ,int *,int *,scalar_t__*) ;
 int bus_dma_tag_destroy (scalar_t__) ;
 int bus_get_dma_tag (int ) ;
 int bus_release_resource (int ,int ,scalar_t__,void*) ;
 int bus_teardown_intr (int ,void*,scalar_t__) ;
 int device_get_nameunit (int ) ;
 int device_printf (int ,char*) ;
 int ds1pchan_class ;
 int ds1rchan_class ;
 int ds_ac97 ;
 int ds_finddev (int ,int) ;
 int ds_init (struct sc_info*) ;
 int ds_intr ;
 int free (struct sc_info*,int ) ;
 struct sc_info* malloc (int,int ,int) ;
 int mixer_init (int ,int ,struct ac97_info*) ;
 int pci_enable_busmaster (int ) ;
 int pci_get_devid (int ) ;
 int pci_get_revid (int ) ;
 int pci_get_subdevice (int ) ;
 int pci_get_subvendor (int ) ;
 int pcm_addchan (int ,int ,int *,struct sc_info*) ;
 int pcm_getbuffersize (int ,int,int ,int) ;
 scalar_t__ pcm_register (int ,struct sc_info*,int,int) ;
 int pcm_setstatus (int ,char*) ;
 int rman_get_bushandle (void*) ;
 int rman_get_bustag (void*) ;
 int rman_get_start (void*) ;
 int snd_ds1 ;
 scalar_t__ snd_mtxcreate (int ,char*) ;
 int snd_mtxfree (scalar_t__) ;
 scalar_t__ snd_setup_intr (int ,void*,int ,int ,struct sc_info*,scalar_t__*) ;
 int snprintf (char*,int,char*,int ,int ,int ) ;

__attribute__((used)) static int
ds_pci_attach(device_t dev)
{
 u_int32_t subdev, i;
 struct sc_info *sc;
 struct ac97_info *codec = ((void*)0);
 char status[SND_STATUSLEN];

 sc = malloc(sizeof(*sc), M_DEVBUF, M_WAITOK | M_ZERO);
 sc->lock = snd_mtxcreate(device_get_nameunit(dev), "snd_ds1 softc");
 sc->dev = dev;
 subdev = (pci_get_subdevice(dev) << 16) | pci_get_subvendor(dev);
 sc->type = ds_finddev(pci_get_devid(dev), subdev);
 sc->rev = pci_get_revid(dev);

 pci_enable_busmaster(dev);

 sc->regid = PCIR_BAR(0);
 sc->reg = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &sc->regid,
      RF_ACTIVE);
 if (!sc->reg) {
  device_printf(dev, "unable to map register space\n");
  goto bad;
 }

 sc->st = rman_get_bustag(sc->reg);
 sc->sh = rman_get_bushandle(sc->reg);

 sc->bufsz = pcm_getbuffersize(dev, 4096, DS1_BUFFSIZE, 65536);

 if (bus_dma_tag_create( bus_get_dma_tag(dev), 2,
              0,
             BUS_SPACE_MAXADDR_32BIT,
              BUS_SPACE_MAXADDR,
            ((void*)0), ((void*)0),
             sc->bufsz, 1, 0x3ffff,
           0, ((void*)0),
             ((void*)0), &sc->buffer_dmat) != 0) {
  device_printf(dev, "unable to create dma tag\n");
  goto bad;
 }

 sc->regbase = ((void*)0);
 if (ds_init(sc) == -1) {
  device_printf(dev, "unable to initialize the card\n");
  goto bad;
 }

 codec = AC97_CREATE(dev, sc, ds_ac97);
 if (codec == ((void*)0))
  goto bad;




 switch (subdev) {
 case 0x81171033:
  ac97_setflags(codec, ac97_getflags(codec) | AC97_F_EAPD_INV);
  break;
 default:
  break;
 }
 mixer_init(dev, ac97_getmixerclass(), codec);

 sc->irqid = 0;
 sc->irq = bus_alloc_resource_any(dev, SYS_RES_IRQ, &sc->irqid,
      RF_ACTIVE | RF_SHAREABLE);
 if (!sc->irq || snd_setup_intr(dev, sc->irq, INTR_MPSAFE, ds_intr, sc, &sc->ih)) {
  device_printf(dev, "unable to map interrupt\n");
  goto bad;
 }

 snprintf(status, SND_STATUSLEN, "at memory 0x%jx irq %jd %s",
   rman_get_start(sc->reg), rman_get_start(sc->irq),PCM_KLDSTRING(snd_ds1));

 if (pcm_register(dev, sc, DS1_CHANS, 2))
  goto bad;
 for (i = 0; i < DS1_CHANS; i++)
  pcm_addchan(dev, PCMDIR_PLAY, &ds1pchan_class, sc);
 for (i = 0; i < 2; i++)
  pcm_addchan(dev, PCMDIR_REC, &ds1rchan_class, sc);
 pcm_setstatus(dev, status);

 return 0;

bad:
 if (codec)
  ac97_destroy(codec);
 if (sc->reg)
  bus_release_resource(dev, SYS_RES_MEMORY, sc->regid, sc->reg);
 if (sc->ih)
  bus_teardown_intr(dev, sc->irq, sc->ih);
 if (sc->irq)
  bus_release_resource(dev, SYS_RES_IRQ, sc->irqid, sc->irq);
 if (sc->buffer_dmat)
  bus_dma_tag_destroy(sc->buffer_dmat);
 if (sc->control_dmat)
  bus_dma_tag_destroy(sc->control_dmat);
 if (sc->lock)
  snd_mtxfree(sc->lock);
 free(sc, M_DEVBUF);
 return ENXIO;
}
