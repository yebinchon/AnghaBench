
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int u_int32_t ;
struct sc_info {int rev; int * dmac_reg; void* dmac_rid; void* dmac_type; int * dmaa_reg; void* dmaa_rid; void* dmaa_type; int * enh_reg; void* enh_rid; void* enh_type; int * irq; void* irqid; scalar_t__ ih; scalar_t__ parent_dmat; void* dmac_sh; void* dmac_st; void* dmaa_sh; void* dmaa_st; int bufsz; void* enh_sh; void* enh_st; int dev; } ;
typedef scalar_t__ rman_res_t ;
typedef int device_t ;


 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_24BIT ;
 int DEB (int ) ;
 int ENXIO ;
 int Giant ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 scalar_t__ PCI_POWERSTATE_D0 ;
 int PCMDIR_PLAY ;
 int PCMDIR_REC ;
 int PCM_KLDSTRING (int ) ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SND_STATUSLEN ;
 int SV_DEFAULT_BUFSZ ;
 void* SV_PCI_DMAA ;
 int SV_PCI_DMAA_SIZE ;
 void* SV_PCI_DMAC ;
 int SV_PCI_DMAC_SIZE ;
 int SV_PCI_DMA_ENABLE ;
 int SV_PCI_DMA_EXTENDED ;
 void* SV_PCI_ENHANCED ;
 int SV_PCI_GAMES ;
 int SV_PCI_MIDI ;
 void* SYS_RES_IOPORT ;
 void* SYS_RES_IRQ ;
 scalar_t__ bootverbose ;
 void* bus_alloc_resource_any (int ,void*,void**,int) ;
 scalar_t__ bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int ,int,int,int ,int ,int *,scalar_t__*) ;
 int bus_dma_tag_destroy (scalar_t__) ;
 int bus_get_dma_tag (int ) ;
 int bus_get_resource (int ,void*,int ,scalar_t__*,scalar_t__*) ;
 int bus_release_resource (int ,void*,void*,int *) ;
 int bus_set_resource (int ,void*,void*,int,int ) ;
 int bus_teardown_intr (int ,int *,scalar_t__) ;
 int busdma_lock_mutex ;
 int device_printf (int ,char*,...) ;
 struct sc_info* malloc (int,int ,int) ;
 scalar_t__ mixer_init (int ,int *,struct sc_info*) ;
 int pci_enable_busmaster (int ) ;
 scalar_t__ pci_get_powerstate (int ) ;
 int pci_read_config (int ,void*,int) ;
 int pci_set_powerstate (int ,scalar_t__) ;
 int pci_write_config (int ,void*,int,int) ;
 int pcm_addchan (int ,int ,int *,struct sc_info*) ;
 int pcm_getbuffersize (int ,int,int ,int) ;
 scalar_t__ pcm_register (int ,struct sc_info*,int,int) ;
 int pcm_setstatus (int ,char*) ;
 int printf (char*,...) ;
 void* rman_get_bushandle (int *) ;
 void* rman_get_bustag (int *) ;
 int rman_get_start (int *) ;
 scalar_t__ snd_setup_intr (int ,int *,int ,int ,struct sc_info*,scalar_t__*) ;
 int snd_vibes ;
 int snprintf (char*,int,char*,int ,int ,int ) ;
 int sv_init (struct sc_info*) ;
 int sv_intr ;
 int sv_mix_mute_all (struct sc_info*) ;
 int sv_mixer_class ;
 int sv_power (struct sc_info*,int ) ;
 int svpchan_class ;
 int svrchan_class ;

__attribute__((used)) static int
sv_attach(device_t dev) {
 struct sc_info *sc;
 rman_res_t count, midi_start, games_start;
 u_int32_t data;
 char status[SND_STATUSLEN];
 u_long sdmaa, sdmac, ml, mu;

 sc = malloc(sizeof(*sc), M_DEVBUF, M_WAITOK | M_ZERO);
 sc->dev = dev;

 pci_enable_busmaster(dev);

        if (pci_get_powerstate(dev) != PCI_POWERSTATE_D0) {
                device_printf(dev, "chip is in D%d power mode "
                              "-- setting to D0\n", pci_get_powerstate(dev));
                pci_set_powerstate(dev, PCI_POWERSTATE_D0);
        }
 sc->enh_rid = SV_PCI_ENHANCED;
 sc->enh_type = SYS_RES_IOPORT;
 sc->enh_reg = bus_alloc_resource_any(dev, sc->enh_type,
           &sc->enh_rid, RF_ACTIVE);
 if (sc->enh_reg == ((void*)0)) {
  device_printf(dev, "sv_attach: cannot allocate enh\n");
  return ENXIO;
 }
 sc->enh_st = rman_get_bustag(sc->enh_reg);
 sc->enh_sh = rman_get_bushandle(sc->enh_reg);

 data = pci_read_config(dev, SV_PCI_DMAA, 4);
 DEB(printf("sv_attach: initial dmaa 0x%08x\n", data));
 data = pci_read_config(dev, SV_PCI_DMAC, 4);
 DEB(printf("sv_attach: initial dmac 0x%08x\n", data));


 pci_write_config(dev, SV_PCI_DMAA, SV_PCI_DMA_EXTENDED, 4);
 pci_write_config(dev, SV_PCI_DMAC, 0, 4);


 sc->irqid = 0;
        sc->irq = bus_alloc_resource_any(dev, SYS_RES_IRQ, &sc->irqid,
        RF_ACTIVE | RF_SHAREABLE);
        if (!sc->irq ||
     snd_setup_intr(dev, sc->irq, 0, sv_intr, sc, &sc->ih)) {
                device_printf(dev, "sv_attach: Unable to map interrupt\n");
                goto fail;
        }

 sc->bufsz = pcm_getbuffersize(dev, 4096, SV_DEFAULT_BUFSZ, 65536);
        if (bus_dma_tag_create( bus_get_dma_tag(dev), 2,
                      0,
                                          BUS_SPACE_MAXADDR_24BIT,
                                           BUS_SPACE_MAXADDR,
                                         ((void*)0), ((void*)0),
                                          sc->bufsz, 1,
                                          0x3ffff, 0,
                      busdma_lock_mutex,
                     &Giant, &sc->parent_dmat) != 0) {
                device_printf(dev, "sv_attach: Unable to create dma tag\n");
                goto fail;
        }


 sv_mix_mute_all(sc);
 sv_power(sc, 0);
 sv_init(sc);

 if (mixer_init(dev, &sv_mixer_class, sc) != 0) {
  device_printf(dev, "sv_attach: Mixer failed to initialize\n");
  goto fail;
 }
 bus_get_resource(dev, SYS_RES_IOPORT, SV_PCI_MIDI, &midi_start, &count);
 bus_get_resource(dev, SYS_RES_IOPORT, SV_PCI_GAMES, &games_start, &count);

 if (games_start < midi_start) {
  ml = games_start;
  mu = midi_start;
 } else {
  ml = midi_start;
  mu = games_start;
 }



 if ((mu - ml >= 0x800) ||
     ((mu - ml) % 0x200)) {
  device_printf(dev, "sv_attach: resource assumptions not met "
         "(midi 0x%08lx, games 0x%08lx)\n",
         (u_long)midi_start, (u_long)games_start);
  goto fail;
 }

 sdmaa = ml + 0x40;
 sdmac = sdmaa + 0x40;



 bus_set_resource(dev, SYS_RES_IOPORT, SV_PCI_DMAA, sdmaa, SV_PCI_DMAA_SIZE);
 bus_set_resource(dev, SYS_RES_IOPORT, SV_PCI_DMAC, sdmac, SV_PCI_DMAC_SIZE);


 sc->dmaa_rid = SV_PCI_DMAA;
 sc->dmaa_type = SYS_RES_IOPORT;
 sc->dmaa_reg = bus_alloc_resource_any(dev, sc->dmaa_type,
            &sc->dmaa_rid, RF_ACTIVE);
 if (sc->dmaa_reg == ((void*)0)) {
  device_printf(dev, "sv_attach: cannot allocate dmaa\n");
  goto fail;
 }
 sc->dmaa_st = rman_get_bustag(sc->dmaa_reg);
 sc->dmaa_sh = rman_get_bushandle(sc->dmaa_reg);


 data = pci_read_config(dev, SV_PCI_DMAA, 4) | SV_PCI_DMA_ENABLE | SV_PCI_DMA_EXTENDED;
 data = ((u_int32_t)sdmaa & 0xfffffff0) | (data & 0x0f);
 pci_write_config(dev, SV_PCI_DMAA, data, 4);
 DEB(printf("dmaa: 0x%x 0x%x\n", data, pci_read_config(dev, SV_PCI_DMAA, 4)));


 sc->dmac_rid = SV_PCI_DMAC;
 sc->dmac_type = SYS_RES_IOPORT;
 sc->dmac_reg = bus_alloc_resource_any(dev, sc->dmac_type,
            &sc->dmac_rid, RF_ACTIVE);
 if (sc->dmac_reg == ((void*)0)) {
  device_printf(dev, "sv_attach: cannot allocate dmac\n");
  goto fail;
 }
 sc->dmac_st = rman_get_bustag(sc->dmac_reg);
 sc->dmac_sh = rman_get_bushandle(sc->dmac_reg);


 data = pci_read_config(dev, SV_PCI_DMAC, 4) | SV_PCI_DMA_ENABLE | SV_PCI_DMA_EXTENDED;
 data = ((u_int32_t)sdmac & 0xfffffff0) | (data & 0x0f);
 pci_write_config(dev, SV_PCI_DMAC, data, 4);
 DEB(printf("dmac: 0x%x 0x%x\n", data, pci_read_config(dev, SV_PCI_DMAC, 4)));

 if (bootverbose)
  printf("Sonicvibes: revision %d.\n", sc->rev);

        if (pcm_register(dev, sc, 1, 1)) {
  device_printf(dev, "sv_attach: pcm_register fail\n");
                goto fail;
 }

        pcm_addchan(dev, PCMDIR_PLAY, &svpchan_class, sc);
        pcm_addchan(dev, PCMDIR_REC, &svrchan_class, sc);

        snprintf(status, SND_STATUSLEN, "at io 0x%jx irq %jd %s",
                 rman_get_start(sc->enh_reg), rman_get_start(sc->irq),PCM_KLDSTRING(snd_vibes));
        pcm_setstatus(dev, status);

        DEB(printf("sv_attach: succeeded\n"));

 return 0;

 fail:
 if (sc->parent_dmat)
  bus_dma_tag_destroy(sc->parent_dmat);
        if (sc->ih)
  bus_teardown_intr(dev, sc->irq, sc->ih);
        if (sc->irq)
  bus_release_resource(dev, SYS_RES_IRQ, sc->irqid, sc->irq);
 if (sc->enh_reg)
  bus_release_resource(dev, sc->enh_type, sc->enh_rid, sc->enh_reg);
 if (sc->dmaa_reg)
  bus_release_resource(dev, sc->dmaa_type, sc->dmaa_rid, sc->dmaa_reg);
 if (sc->dmac_reg)
  bus_release_resource(dev, sc->dmac_type, sc->dmac_rid, sc->dmac_reg);
 return ENXIO;
}
