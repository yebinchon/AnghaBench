
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc_info {void* irq; void* irqid; scalar_t__ ih; void* reg; void* regid; void* buf; void* bufid; int type; int dev; } ;
struct ac97_info {int dummy; } ;
typedef int device_t ;


 struct ac97_info* AC97_CREATE (int ,struct sc_info*,int ) ;
 int ENXIO ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 void* PCIR_BAR (int) ;
 int PCMDIR_PLAY ;
 int PCMDIR_REC ;
 int PCM_KLDSTRING (int ) ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SND_STATUSLEN ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int ac97_destroy (struct ac97_info*) ;
 int ac97_getmixerclass () ;
 void* bus_alloc_resource_any (int ,int ,void**,int) ;
 int bus_release_resource (int ,int ,void*,void*) ;
 int bus_teardown_intr (int ,void*,scalar_t__) ;
 int device_printf (int ,char*) ;
 int free (struct sc_info*,int ) ;
 struct sc_info* malloc (int,int ,int) ;
 int mixer_init (int ,int ,struct ac97_info*) ;
 int nm_ac97 ;
 int nm_init (struct sc_info*) ;
 int nm_intr ;
 int nmchan_class ;
 int pci_enable_busmaster (int ) ;
 int pci_get_devid (int ) ;
 int pcm_addchan (int ,int ,int *,struct sc_info*) ;
 scalar_t__ pcm_register (int ,struct sc_info*,int,int) ;
 int pcm_setstatus (int ,char*) ;
 int rman_get_start (void*) ;
 int snd_neomagic ;
 scalar_t__ snd_setup_intr (int ,void*,int ,int ,struct sc_info*,scalar_t__*) ;
 int snprintf (char*,int,char*,int ,int ,int ,int ) ;

__attribute__((used)) static int
nm_pci_attach(device_t dev)
{
 struct sc_info *sc;
 struct ac97_info *codec = ((void*)0);
 char status[SND_STATUSLEN];

 sc = malloc(sizeof(*sc), M_DEVBUF, M_WAITOK | M_ZERO);
 sc->dev = dev;
 sc->type = pci_get_devid(dev);

 pci_enable_busmaster(dev);

 sc->bufid = PCIR_BAR(0);
 sc->buf = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &sc->bufid,
      RF_ACTIVE);
 sc->regid = PCIR_BAR(1);
 sc->reg = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &sc->regid,
      RF_ACTIVE);

 if (!sc->buf || !sc->reg) {
  device_printf(dev, "unable to map register space\n");
  goto bad;
 }

 if (nm_init(sc) == -1) {
  device_printf(dev, "unable to initialize the card\n");
  goto bad;
 }

 codec = AC97_CREATE(dev, sc, nm_ac97);
 if (codec == ((void*)0)) goto bad;
 if (mixer_init(dev, ac97_getmixerclass(), codec) == -1) goto bad;

 sc->irqid = 0;
 sc->irq = bus_alloc_resource_any(dev, SYS_RES_IRQ, &sc->irqid,
      RF_ACTIVE | RF_SHAREABLE);
 if (!sc->irq || snd_setup_intr(dev, sc->irq, 0, nm_intr, sc, &sc->ih)) {
  device_printf(dev, "unable to map interrupt\n");
  goto bad;
 }

 snprintf(status, SND_STATUSLEN, "at memory 0x%jx, 0x%jx irq %jd %s",
   rman_get_start(sc->buf), rman_get_start(sc->reg),
   rman_get_start(sc->irq),PCM_KLDSTRING(snd_neomagic));

 if (pcm_register(dev, sc, 1, 1)) goto bad;
 pcm_addchan(dev, PCMDIR_REC, &nmchan_class, sc);
 pcm_addchan(dev, PCMDIR_PLAY, &nmchan_class, sc);
 pcm_setstatus(dev, status);

 return 0;

bad:
 if (codec) ac97_destroy(codec);
 if (sc->buf) bus_release_resource(dev, SYS_RES_MEMORY, sc->bufid, sc->buf);
 if (sc->reg) bus_release_resource(dev, SYS_RES_MEMORY, sc->regid, sc->reg);
 if (sc->ih) bus_teardown_intr(dev, sc->irq, sc->ih);
 if (sc->irq) bus_release_resource(dev, SYS_RES_IRQ, sc->irqid, sc->irq);
 free(sc, M_DEVBUF);
 return ENXIO;
}
