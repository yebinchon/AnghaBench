
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc_info {scalar_t__ type; int rev; int audigy; int audigy2; int nchans; scalar_t__ lock; scalar_t__ parent_dmat; int * irq; scalar_t__ ih; int * reg; int bufsz; int sh; int st; int addrmask; int dev; } ;
struct ac97_info {int dummy; } ;
typedef int device_t ;


 int AC97_CAP_MICCHANNEL ;
 struct ac97_info* AC97_CREATE (int ,struct sc_info*,int ) ;
 int BUS_SPACE_MAXADDR ;
 scalar_t__ EMU10K2_PCI_ID ;
 scalar_t__ EMU10K3_PCI_ID ;
 int EMU_A_PTR_ADDR_MASK ;
 int EMU_DEFAULT_BUFSZ ;
 int EMU_PTR_ADDR_MASK ;
 int ENXIO ;
 int Giant ;
 int INTR_MPSAFE ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 int PCIR_BAR (int ) ;
 int PCMDIR_PLAY ;
 int PCMDIR_REC ;
 int PCM_KLDSTRING (int ) ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SND_STATUSLEN ;
 int SYS_RES_IOPORT ;
 int SYS_RES_IRQ ;
 int ac97_destroy (struct ac97_info*) ;
 int ac97_getcaps (struct ac97_info*) ;
 int ac97_getmixerclass () ;
 void* bus_alloc_resource_any (int ,int ,int*,int) ;
 scalar_t__ bus_dma_tag_create (int ,int,int ,unsigned int,int ,int *,int *,int ,int,int,int ,int ,int *,scalar_t__*) ;
 int bus_dma_tag_destroy (scalar_t__) ;
 int bus_get_dma_tag (int ) ;
 int bus_release_resource (int ,int ,int,int *) ;
 int bus_teardown_intr (int ,int *,scalar_t__) ;
 int busdma_lock_mutex ;
 int device_get_nameunit (int ) ;
 int device_printf (int ,char*) ;
 int emu_ac97 ;
 int emu_init (struct sc_info*) ;
 int emu_intr ;
 int emu_midiattach (struct sc_info*) ;
 int emupchan_class ;
 int emurchan_class ;
 int free (struct sc_info*,int ) ;
 struct sc_info* malloc (int,int ,int) ;
 int mixer_init (int ,int ,struct ac97_info*) ;
 int pci_enable_busmaster (int ) ;
 scalar_t__ pci_get_devid (int ) ;
 int pci_get_revid (int ) ;
 int pcm_addchan (int ,int ,int *,struct sc_info*) ;
 int pcm_getbuffersize (int ,int,int ,int) ;
 scalar_t__ pcm_register (int ,struct sc_info*,int,int) ;
 int pcm_setstatus (int ,char*) ;
 int rman_get_bushandle (int *) ;
 int rman_get_bustag (int *) ;
 int rman_get_start (int *) ;
 int snd_emu10k1 ;
 scalar_t__ snd_mtxcreate (int ,char*) ;
 int snd_mtxfree (scalar_t__) ;
 scalar_t__ snd_setup_intr (int ,int *,int ,int ,struct sc_info*,scalar_t__*) ;
 int snprintf (char*,int,char*,int ,int ,int ) ;

__attribute__((used)) static int
emu_pci_attach(device_t dev)
{
 struct ac97_info *codec = ((void*)0);
 struct sc_info *sc;
 int i, gotmic;
 char status[SND_STATUSLEN];

 sc = malloc(sizeof(*sc), M_DEVBUF, M_WAITOK | M_ZERO);
 sc->lock = snd_mtxcreate(device_get_nameunit(dev), "snd_emu10k1 softc");
 sc->dev = dev;
 sc->type = pci_get_devid(dev);
 sc->rev = pci_get_revid(dev);
 sc->audigy = sc->type == EMU10K2_PCI_ID || sc->type == EMU10K3_PCI_ID;
 sc->audigy2 = (sc->audigy && sc->rev == 0x04);
 sc->nchans = sc->audigy ? 8 : 4;
 sc->addrmask = sc->audigy ? EMU_A_PTR_ADDR_MASK : EMU_PTR_ADDR_MASK;

 pci_enable_busmaster(dev);

 i = PCIR_BAR(0);
 sc->reg = bus_alloc_resource_any(dev, SYS_RES_IOPORT, &i, RF_ACTIVE);
 if (sc->reg == ((void*)0)) {
  device_printf(dev, "unable to map register space\n");
  goto bad;
 }
 sc->st = rman_get_bustag(sc->reg);
 sc->sh = rman_get_bushandle(sc->reg);

 sc->bufsz = pcm_getbuffersize(dev, 4096, EMU_DEFAULT_BUFSZ, 65536);

 if (bus_dma_tag_create( bus_get_dma_tag(dev), 2,
              0,
             (1U << 31) - 1,
              BUS_SPACE_MAXADDR,
            ((void*)0), ((void*)0),
             sc->bufsz, 1, 0x3ffff,
           0, busdma_lock_mutex,
             &Giant, &sc->parent_dmat) != 0) {
  device_printf(dev, "unable to create dma tag\n");
  goto bad;
 }

 if (emu_init(sc) == -1) {
  device_printf(dev, "unable to initialize the card\n");
  goto bad;
 }

 codec = AC97_CREATE(dev, sc, emu_ac97);
 if (codec == ((void*)0)) goto bad;
 gotmic = (ac97_getcaps(codec) & AC97_CAP_MICCHANNEL) ? 1 : 0;
 if (mixer_init(dev, ac97_getmixerclass(), codec) == -1) goto bad;

 emu_midiattach(sc);

 i = 0;
 sc->irq = bus_alloc_resource_any(dev, SYS_RES_IRQ, &i,
     RF_ACTIVE | RF_SHAREABLE);
 if (!sc->irq ||
     snd_setup_intr(dev, sc->irq, INTR_MPSAFE, emu_intr, sc, &sc->ih)) {
  device_printf(dev, "unable to map interrupt\n");
  goto bad;
 }

 snprintf(status, SND_STATUSLEN, "at io 0x%jx irq %jd %s",
     rman_get_start(sc->reg), rman_get_start(sc->irq),
     PCM_KLDSTRING(snd_emu10k1));

 if (pcm_register(dev, sc, sc->nchans, gotmic ? 3 : 2)) goto bad;
 for (i = 0; i < sc->nchans; i++)
  pcm_addchan(dev, PCMDIR_PLAY, &emupchan_class, sc);
 for (i = 0; i < (gotmic ? 3 : 2); i++)
  pcm_addchan(dev, PCMDIR_REC, &emurchan_class, sc);

 pcm_setstatus(dev, status);

 return 0;

bad:
 if (codec) ac97_destroy(codec);
 if (sc->reg) bus_release_resource(dev, SYS_RES_IOPORT, PCIR_BAR(0), sc->reg);
 if (sc->ih) bus_teardown_intr(dev, sc->irq, sc->ih);
 if (sc->irq) bus_release_resource(dev, SYS_RES_IRQ, 0, sc->irq);
 if (sc->parent_dmat) bus_dma_tag_destroy(sc->parent_dmat);
 if (sc->lock) snd_mtxfree(sc->lock);
 free(sc, M_DEVBUF);
 return ENXIO;
}
