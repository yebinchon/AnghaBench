
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc_info {scalar_t__ lock; void* reg; scalar_t__ regid; void* irq; scalar_t__ irqid; scalar_t__ ih; scalar_t__ parent_dmat; int bufsz; int sh; int st; int dev; } ;
typedef int device_t ;


 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int CMI_DEFAULT_BUFSZ ;
 int DEB (int ) ;
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
 int SYS_RES_IOPORT ;
 int SYS_RES_IRQ ;
 void* bus_alloc_resource_any (int ,int ,scalar_t__*,int) ;
 scalar_t__ bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int ,int,int,int ,int *,int *,scalar_t__*) ;
 int bus_dma_tag_destroy (scalar_t__) ;
 int bus_get_dma_tag (int ) ;
 int bus_release_resource (int ,int ,scalar_t__,void*) ;
 int bus_teardown_intr (int ,void*,scalar_t__) ;
 scalar_t__ cmi_init (struct sc_info*) ;
 int cmi_initsys (struct sc_info*) ;
 int cmi_intr ;
 int cmi_midiattach (struct sc_info*) ;
 int cmi_mixer_class ;
 int cmi_power (struct sc_info*,int ) ;
 int cmichan_class ;
 int device_get_nameunit (int ) ;
 int device_printf (int ,char*) ;
 int free (struct sc_info*,int ) ;
 struct sc_info* malloc (int,int ,int) ;
 scalar_t__ mixer_init (int ,int *,struct sc_info*) ;
 int pci_enable_busmaster (int ) ;
 int pcm_addchan (int ,int ,int *,struct sc_info*) ;
 int pcm_getbuffersize (int ,int,int ,int) ;
 scalar_t__ pcm_register (int ,struct sc_info*,int,int) ;
 int pcm_setstatus (int ,char*) ;
 int printf (char*) ;
 int rman_get_bushandle (void*) ;
 int rman_get_bustag (void*) ;
 int rman_get_start (void*) ;
 int snd_cmi ;
 scalar_t__ snd_mtxcreate (int ,char*) ;
 int snd_mtxfree (scalar_t__) ;
 scalar_t__ snd_setup_intr (int ,void*,int ,int ,struct sc_info*,scalar_t__*) ;
 int snprintf (char*,int,char*,int ,int ,int ) ;

__attribute__((used)) static int
cmi_attach(device_t dev)
{
 struct sc_info *sc;
 char status[SND_STATUSLEN];

 sc = malloc(sizeof(*sc), M_DEVBUF, M_WAITOK | M_ZERO);
 sc->lock = snd_mtxcreate(device_get_nameunit(dev), "snd_cmi softc");
 pci_enable_busmaster(dev);

 sc->dev = dev;
 sc->regid = PCIR_BAR(0);
 sc->reg = bus_alloc_resource_any(dev, SYS_RES_IOPORT, &sc->regid,
      RF_ACTIVE);
 if (!sc->reg) {
  device_printf(dev, "cmi_attach: Cannot allocate bus resource\n");
  goto bad;
 }
 sc->st = rman_get_bustag(sc->reg);
 sc->sh = rman_get_bushandle(sc->reg);

 if (0)
  cmi_midiattach(sc);

 sc->irqid = 0;
 sc->irq = bus_alloc_resource_any(dev, SYS_RES_IRQ, &sc->irqid,
        RF_ACTIVE | RF_SHAREABLE);
 if (!sc->irq ||
     snd_setup_intr(dev, sc->irq, INTR_MPSAFE, cmi_intr, sc, &sc->ih)) {
  device_printf(dev, "cmi_attach: Unable to map interrupt\n");
  goto bad;
 }

 sc->bufsz = pcm_getbuffersize(dev, 4096, CMI_DEFAULT_BUFSZ, 65536);

 if (bus_dma_tag_create( bus_get_dma_tag(dev), 2,
                      0,
                     BUS_SPACE_MAXADDR_32BIT,
                      BUS_SPACE_MAXADDR,
                    ((void*)0), ((void*)0),
                     sc->bufsz, 1,
                     0x3ffff, 0,
                      ((void*)0),
                      ((void*)0),
          &sc->parent_dmat) != 0) {
  device_printf(dev, "cmi_attach: Unable to create dma tag\n");
  goto bad;
 }

 cmi_power(sc, 0);
 if (cmi_init(sc))
  goto bad;

 if (mixer_init(dev, &cmi_mixer_class, sc))
  goto bad;

 if (pcm_register(dev, sc, 1, 1))
  goto bad;

 cmi_initsys(sc);

 pcm_addchan(dev, PCMDIR_PLAY, &cmichan_class, sc);
 pcm_addchan(dev, PCMDIR_REC, &cmichan_class, sc);

 snprintf(status, SND_STATUSLEN, "at io 0x%jx irq %jd %s",
   rman_get_start(sc->reg), rman_get_start(sc->irq),PCM_KLDSTRING(snd_cmi));
 pcm_setstatus(dev, status);

 DEB(printf("cmi_attach: succeeded\n"));
 return 0;

 bad:
 if (sc->parent_dmat)
  bus_dma_tag_destroy(sc->parent_dmat);
 if (sc->ih)
  bus_teardown_intr(dev, sc->irq, sc->ih);
 if (sc->irq)
  bus_release_resource(dev, SYS_RES_IRQ, sc->irqid, sc->irq);
 if (sc->reg)
  bus_release_resource(dev, SYS_RES_IOPORT, sc->regid, sc->reg);
 if (sc->lock)
  snd_mtxfree(sc->lock);
 if (sc)
  free(sc, M_DEVBUF);

 return ENXIO;
}
