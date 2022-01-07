
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc_info {scalar_t__ regtype; scalar_t__ parent_dmat; int * irq; void* irqid; scalar_t__ ih; int * mem; void* memid; int * reg; void* regid; int bufsz; int sh; int st; int type; int dev; } ;
struct ac97_info {int dummy; } ;
typedef int device_t ;


 struct ac97_info* AC97_CREATE (int ,struct sc_info*,int ) ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int CS4281_DEFAULT_BUFSZ ;
 int ENXIO ;
 int Giant ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 void* PCIR_BAR (int) ;
 scalar_t__ PCI_POWERSTATE_D0 ;
 int PCMDIR_PLAY ;
 int PCMDIR_REC ;
 int PCM_KLDSTRING (int ) ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SND_STATUSLEN ;
 scalar_t__ SYS_RES_IOPORT ;
 scalar_t__ SYS_RES_IRQ ;
 scalar_t__ SYS_RES_MEMORY ;
 int ac97_destroy (struct ac97_info*) ;
 int ac97_getmixerclass () ;
 void* bus_alloc_resource_any (int ,scalar_t__,void**,int) ;
 scalar_t__ bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int ,int,int,int ,int ,int *,scalar_t__*) ;
 int bus_dma_tag_destroy (scalar_t__) ;
 int bus_get_dma_tag (int ) ;
 int bus_release_resource (int ,scalar_t__,void*,int *) ;
 int bus_teardown_intr (int ,int *,scalar_t__) ;
 int busdma_lock_mutex ;
 int cs4281_ac97 ;
 int cs4281_init (struct sc_info*) ;
 int cs4281_intr ;
 int cs4281_power (struct sc_info*,int ) ;
 int cs4281chan_class ;
 int device_printf (int ,char*,...) ;
 int free (struct sc_info*,int ) ;
 struct sc_info* malloc (int,int ,int) ;
 int mixer_init (int ,int ,struct ac97_info*) ;
 int pci_enable_busmaster (int ) ;
 int pci_get_devid (int ) ;
 scalar_t__ pci_get_powerstate (int ) ;
 int pci_set_powerstate (int ,scalar_t__) ;
 int pcm_addchan (int ,int ,int *,struct sc_info*) ;
 int pcm_getbuffersize (int ,int,int ,int) ;
 scalar_t__ pcm_register (int ,struct sc_info*,int,int) ;
 int pcm_setstatus (int ,char*) ;
 int rman_get_bushandle (int *) ;
 int rman_get_bustag (int *) ;
 int rman_get_start (int *) ;
 int snd_cs4281 ;
 scalar_t__ snd_setup_intr (int ,int *,int ,int ,struct sc_info*,scalar_t__*) ;
 int snprintf (char*,int,char*,char*,int ,int ,int ) ;

__attribute__((used)) static int
cs4281_pci_attach(device_t dev)
{
    struct sc_info *sc;
    struct ac97_info *codec = ((void*)0);
    char status[SND_STATUSLEN];

    sc = malloc(sizeof(*sc), M_DEVBUF, M_WAITOK | M_ZERO);
    sc->dev = dev;
    sc->type = pci_get_devid(dev);

    pci_enable_busmaster(dev);

    if (pci_get_powerstate(dev) != PCI_POWERSTATE_D0) {

 device_printf(dev, "chip is in D%d power mode "
        "-- setting to D0\n", pci_get_powerstate(dev));

 pci_set_powerstate(dev, PCI_POWERSTATE_D0);
    }

    sc->regid = PCIR_BAR(0);
    sc->regtype = SYS_RES_MEMORY;
    sc->reg = bus_alloc_resource_any(dev, sc->regtype, &sc->regid, RF_ACTIVE);
    if (!sc->reg) {
 sc->regtype = SYS_RES_IOPORT;
 sc->reg = bus_alloc_resource_any(dev, sc->regtype, &sc->regid,
      RF_ACTIVE);
 if (!sc->reg) {
     device_printf(dev, "unable to allocate register space\n");
     goto bad;
 }
    }
    sc->st = rman_get_bustag(sc->reg);
    sc->sh = rman_get_bushandle(sc->reg);

    sc->memid = PCIR_BAR(1);
    sc->mem = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &sc->memid,
         RF_ACTIVE);
    if (sc->mem == ((void*)0)) {
 device_printf(dev, "unable to allocate fifo space\n");
 goto bad;
    }

    sc->irqid = 0;
    sc->irq = bus_alloc_resource_any(dev, SYS_RES_IRQ, &sc->irqid,
         RF_ACTIVE | RF_SHAREABLE);
    if (!sc->irq) {
 device_printf(dev, "unable to allocate interrupt\n");
 goto bad;
    }

    if (snd_setup_intr(dev, sc->irq, 0, cs4281_intr, sc, &sc->ih)) {
 device_printf(dev, "unable to setup interrupt\n");
 goto bad;
    }

    sc->bufsz = pcm_getbuffersize(dev, 4096, CS4281_DEFAULT_BUFSZ, 65536);

    if (bus_dma_tag_create( bus_get_dma_tag(dev), 2,
                  0,
                 BUS_SPACE_MAXADDR_32BIT,
                  BUS_SPACE_MAXADDR,
                ((void*)0), ((void*)0),
                 sc->bufsz, 1,
                 0x3ffff,
               0, busdma_lock_mutex,
                 &Giant, &sc->parent_dmat) != 0) {
 device_printf(dev, "unable to create dma tag\n");
 goto bad;
    }


    cs4281_power(sc, 0);


    if (cs4281_init(sc) == -1) {
 device_printf(dev, "unable to initialize the card\n");
 goto bad;
    }


    codec = AC97_CREATE(dev, sc, cs4281_ac97);
    if (codec == ((void*)0))
        goto bad;

    mixer_init(dev, ac97_getmixerclass(), codec);

    if (pcm_register(dev, sc, 1, 1))
 goto bad;

    pcm_addchan(dev, PCMDIR_PLAY, &cs4281chan_class, sc);
    pcm_addchan(dev, PCMDIR_REC, &cs4281chan_class, sc);

    snprintf(status, SND_STATUSLEN, "at %s 0x%jx irq %jd %s",
      (sc->regtype == SYS_RES_IOPORT)? "io" : "memory",
      rman_get_start(sc->reg), rman_get_start(sc->irq),PCM_KLDSTRING(snd_cs4281));
    pcm_setstatus(dev, status);

    return 0;

 bad:
    if (codec)
 ac97_destroy(codec);
    if (sc->reg)
 bus_release_resource(dev, sc->regtype, sc->regid, sc->reg);
    if (sc->mem)
 bus_release_resource(dev, SYS_RES_MEMORY, sc->memid, sc->mem);
    if (sc->ih)
 bus_teardown_intr(dev, sc->irq, sc->ih);
    if (sc->irq)
 bus_release_resource(dev, SYS_RES_IRQ, sc->irqid, sc->irq);
    if (sc->parent_dmat)
 bus_dma_tag_destroy(sc->parent_dmat);
    free(sc, M_DEVBUF);

    return ENXIO;
}
