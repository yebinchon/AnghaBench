
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct resource {int dummy; } ;
struct agg_info {int bufsz; int regid; int irqid; int lock; int * buf_dmat; int * stat_dmat; int stat_map; int * stat; int playchns; int pch; struct ac97_info* codec; void* ih; struct resource* irq; int sh; int st; struct resource* reg; int curpwr; scalar_t__ phys; int dev; } ;
struct ac97_info {int dummy; } ;
typedef int device_t ;


 struct ac97_info* AC97_CREATE (int ,struct agg_info*,int ) ;
 int AGG_DEFAULT_BUFSZ ;
 int AGG_MAXPLAYCH ;
 int BUS_SPACE_MAXADDR ;
 int ENOMEM ;
 int ENXIO ;
 int Giant ;
 int INTR_MPSAFE ;
 int MAESTRO_MAXADDR ;
 int MTX_DEF ;
 int MTX_RECURSE ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 int PCIR_BAR (int ) ;
 int PCI_POWERSTATE_D0 ;
 int PCI_POWERSTATE_D3 ;
 int PCMDIR_PLAY ;
 int PCMDIR_REC ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SND_STATUSLEN ;
 int SYS_RES_IOPORT ;
 int SYS_RES_IRQ ;
 int WAVCACHE_BASEADDR_SHIFT ;
 int ac97_destroy (struct ac97_info*) ;
 int ac97_getmixerclass () ;
 int adjust_pchbase (int ,int ,int) ;
 int agg_ac97 ;
 int agg_intr ;
 int agg_lock (struct agg_info*) ;
 int agg_power (struct agg_info*,int ) ;
 int agg_rdcodec (struct agg_info*,int ) ;
 int agg_unlock (struct agg_info*) ;
 int aggpch_class ;
 int aggrch_class ;
 scalar_t__ bootverbose ;
 struct resource* bus_alloc_resource_any (int ,int ,int*,int) ;
 scalar_t__ bus_dma_tag_create (int ,int,int,int ,int ,int *,int *,int,int,int,int ,int ,int *,int **) ;
 int bus_dma_tag_destroy (int *) ;
 int bus_get_dma_tag (int ) ;
 int bus_release_resource (int ,int ,int,struct resource*) ;
 int bus_teardown_intr (int ,struct resource*,void*) ;
 int busdma_lock_mutex ;
 int device_get_desc (int ) ;
 int device_get_name (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*,...) ;
 int dma_free (int *,int *,int ) ;
 int * dma_malloc (int *,int,scalar_t__*,int *) ;
 int free (struct agg_info*,int ) ;
 struct agg_info* malloc (int,int ,int) ;
 int mixer_hwvol_init (int ) ;
 int mixer_init (int ,int ,struct ac97_info*) ;
 int mtx_destroy (int *) ;
 int mtx_init (int *,int ,char*,int) ;
 scalar_t__ mtx_initialized (int *) ;
 int pci_enable_busmaster (int ) ;
 int pci_get_bus (int ) ;
 int pci_get_function (int ) ;
 int pci_get_slot (int ) ;
 int pci_set_powerstate (int ,int ) ;
 int pcm_addchan (int ,int ,int *,struct agg_info*) ;
 int pcm_getbuffersize (int ,int,int ,int) ;
 int pcm_register (int ,struct agg_info*,int,int) ;
 int pcm_setstatus (int ,char*) ;
 int powerstate_init ;
 scalar_t__ resource_int_value (int ,int ,char*,int*) ;
 int rman_get_bushandle (struct resource*) ;
 int rman_get_bustag (struct resource*) ;
 int rman_get_end (struct resource*) ;
 int rman_get_start (struct resource*) ;
 scalar_t__ snd_setup_intr (int ,struct resource*,int ,int ,struct agg_info*,void**) ;
 int snprintf (char*,int,char*,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int
agg_attach(device_t dev)
{
 struct agg_info *ess = ((void*)0);
 u_int32_t data;
 int regid = PCIR_BAR(0);
 struct resource *reg = ((void*)0);
 struct ac97_info *codec = ((void*)0);
 int irqid = 0;
 struct resource *irq = ((void*)0);
 void *ih = ((void*)0);
 char status[SND_STATUSLEN];
 int dacn, ret = 0;

 ess = malloc(sizeof(*ess), M_DEVBUF, M_WAITOK | M_ZERO);
 ess->dev = dev;

 mtx_init(&ess->lock, device_get_desc(dev), "snd_maestro softc",
   MTX_DEF | MTX_RECURSE);
 if (!mtx_initialized(&ess->lock)) {
  device_printf(dev, "failed to create a mutex.\n");
  ret = ENOMEM;
  goto bad;
 }

 if (resource_int_value(device_get_name(dev), device_get_unit(dev),
     "dac", &dacn) == 0) {
      if (dacn < 1)
   dacn = 1;
  else if (dacn > AGG_MAXPLAYCH)
   dacn = AGG_MAXPLAYCH;
 } else
  dacn = AGG_MAXPLAYCH;

 ess->bufsz = pcm_getbuffersize(dev, 4096, AGG_DEFAULT_BUFSZ, 65536);
 if (bus_dma_tag_create( bus_get_dma_tag(dev),
                     4, 1 << (16+1),
                     MAESTRO_MAXADDR, BUS_SPACE_MAXADDR,
                     ((void*)0), ((void*)0),
                     ess->bufsz, 1, 0x3ffff,
                     0,
                     busdma_lock_mutex, &Giant,
          &ess->buf_dmat) != 0) {
  device_printf(dev, "unable to create dma tag\n");
  ret = ENOMEM;
  goto bad;
 }

 if (bus_dma_tag_create( bus_get_dma_tag(dev),
                     1 << WAVCACHE_BASEADDR_SHIFT,
                     1 << (16+1),
                     MAESTRO_MAXADDR, BUS_SPACE_MAXADDR,
                     ((void*)0), ((void*)0),
                     3*ess->bufsz, 1, 0x3ffff,
                     0,
                     busdma_lock_mutex, &Giant,
          &ess->stat_dmat) != 0) {
  device_printf(dev, "unable to create dma tag\n");
  ret = ENOMEM;
  goto bad;
 }


 ess->stat = dma_malloc(ess->stat_dmat, 3*ess->bufsz, &ess->phys,
     &ess->stat_map);
 if (ess->stat == ((void*)0)) {
  device_printf(dev, "cannot allocate status buffer\n");
  ret = ENOMEM;
  goto bad;
 }
 if (bootverbose)
  device_printf(dev, "Maestro status/record buffer: %#llx\n",
      (long long)ess->phys);


 ess->curpwr = PCI_POWERSTATE_D3;
 pci_set_powerstate(dev, PCI_POWERSTATE_D0);

 pci_enable_busmaster(dev);


 reg = bus_alloc_resource_any(dev, SYS_RES_IOPORT, &regid, RF_ACTIVE);
 if (reg != ((void*)0)) {
  ess->reg = reg;
  ess->regid = regid;
  ess->st = rman_get_bustag(reg);
  ess->sh = rman_get_bushandle(reg);
 } else {
  device_printf(dev, "unable to map register space\n");
  ret = ENXIO;
  goto bad;
 }
 irq = bus_alloc_resource_any(dev, SYS_RES_IRQ, &irqid,
     RF_ACTIVE | RF_SHAREABLE);
 if (irq != ((void*)0)) {
  ess->irq = irq;
  ess->irqid = irqid;
 } else {
  device_printf(dev, "unable to map interrupt\n");
  ret = ENXIO;
  goto bad;
 }


 if (snd_setup_intr(dev, irq, INTR_MPSAFE, agg_intr, ess, &ih)) {
  device_printf(dev, "unable to setup interrupt\n");
  ret = ENXIO;
  goto bad;
 } else
  ess->ih = ih;


 agg_lock(ess);
 agg_power(ess, PCI_POWERSTATE_D0);
 if (agg_rdcodec(ess, 0) == 0x80) {

  agg_unlock(ess);
  device_printf(dev, "PT101 codec detected!\n");
  ret = ENXIO;
  goto bad;
 }
 agg_unlock(ess);
 codec = AC97_CREATE(dev, ess, agg_ac97);
 if (codec == ((void*)0)) {
  device_printf(dev, "failed to create AC97 codec softc!\n");
  ret = ENOMEM;
  goto bad;
 }
 if (mixer_init(dev, ac97_getmixerclass(), codec) == -1) {
  device_printf(dev, "mixer initialization failed!\n");
  ret = ENXIO;
  goto bad;
 }
 ess->codec = codec;

 ret = pcm_register(dev, ess, dacn, 1);
 if (ret)
  goto bad;

 mixer_hwvol_init(dev);
 agg_lock(ess);
 agg_power(ess, powerstate_init);
 agg_unlock(ess);
 for (data = 0; data < dacn; data++)
  pcm_addchan(dev, PCMDIR_PLAY, &aggpch_class, ess);
 pcm_addchan(dev, PCMDIR_REC, &aggrch_class, ess);
 adjust_pchbase(ess->pch, ess->playchns, ess->bufsz);

 snprintf(status, SND_STATUSLEN,
     "port 0x%jx-0x%jx irq %jd at device %d.%d on pci%d",
     rman_get_start(reg), rman_get_end(reg), rman_get_start(irq),
     pci_get_slot(dev), pci_get_function(dev), pci_get_bus(dev));
 pcm_setstatus(dev, status);

 return 0;

 bad:
 if (codec != ((void*)0))
  ac97_destroy(codec);
 if (ih != ((void*)0))
  bus_teardown_intr(dev, irq, ih);
 if (irq != ((void*)0))
  bus_release_resource(dev, SYS_RES_IRQ, irqid, irq);
 if (reg != ((void*)0))
  bus_release_resource(dev, SYS_RES_IOPORT, regid, reg);
 if (ess != ((void*)0)) {
  if (ess->stat != ((void*)0))
   dma_free(ess->stat_dmat, ess->stat, ess->stat_map);
  if (ess->stat_dmat != ((void*)0))
   bus_dma_tag_destroy(ess->stat_dmat);
  if (ess->buf_dmat != ((void*)0))
   bus_dma_tag_destroy(ess->buf_dmat);
  if (mtx_initialized(&ess->lock))
   mtx_destroy(&ess->lock);
  free(ess, M_DEVBUF);
 }

 return ret;
}
