
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct tr_info {int type; scalar_t__ lock; scalar_t__ parent_dmat; void* irq; scalar_t__ irqid; scalar_t__ ih; void* reg; scalar_t__ regid; int regtype; int bufsz; int hwchns; scalar_t__ playchns; int sh; int st; int rev; } ;
struct ac97_info {int dummy; } ;
typedef struct tr_info device_t ;
typedef int bus_addr_t ;


 struct ac97_info* AC97_CREATE (struct tr_info,struct tr_info*,int ) ;
 int ALI_BUFSZ ;
 int ALI_MAXADDR ;
 int ALI_MAXHWCH ;
 int ALI_MAXPLAYCH ;

 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int ENXIO ;
 int Giant ;
 int M_DEVBUF ;
 int M_TEMP ;
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
 int TR_BUFALGN ;
 int TR_DEFAULT_BUFSZ ;
 int TR_MAXADDR ;
 int TR_MAXHWCH ;
 int TR_MAXPLAYCH ;
 int ac97_destroy (struct ac97_info*) ;
 int ac97_getmixerclass () ;
 scalar_t__ bootverbose ;
 void* bus_alloc_resource_any (struct tr_info,int ,scalar_t__*,int) ;
 scalar_t__ bus_dma_tag_create (int ,int ,int ,int ,int ,int *,int *,int ,int,int ,int ,int ,int *,scalar_t__*) ;
 int bus_dma_tag_destroy (scalar_t__) ;
 int bus_get_dma_tag (struct tr_info) ;
 int bus_release_resource (struct tr_info,int ,scalar_t__,void*) ;
 int bus_teardown_intr (struct tr_info,void*,scalar_t__) ;
 int busdma_lock_mutex ;
 scalar_t__ device_get_children (int ,struct tr_info**,int*) ;
 int device_get_name (struct tr_info) ;
 int device_get_nameunit (struct tr_info) ;
 int device_get_parent (struct tr_info) ;
 int device_get_unit (struct tr_info) ;
 int device_printf (struct tr_info,char*,...) ;
 int free (struct tr_info*,int ) ;
 struct tr_info* malloc (int,int ,int) ;
 int mixer_init (struct tr_info,int ,struct ac97_info*) ;
 int pci_enable_busmaster (struct tr_info) ;
 int pci_get_devid (struct tr_info) ;
 int pci_get_revid (struct tr_info) ;
 int pci_read_config (struct tr_info,int,int) ;
 int pci_write_config (struct tr_info,int,int,int) ;
 int pcm_addchan (struct tr_info,int ,int *,struct tr_info*) ;
 int pcm_getbuffersize (struct tr_info,int,int ,int) ;
 scalar_t__ pcm_register (struct tr_info,struct tr_info*,int,int) ;
 int pcm_setstatus (struct tr_info,char*) ;
 int printf (char*,int) ;
 scalar_t__ resource_int_value (int ,int ,char*,int*) ;
 int rman_get_bushandle (void*) ;
 int rman_get_bustag (void*) ;
 int rman_get_start (void*) ;
 scalar_t__ snd_mtxcreate (int ,char*) ;
 int snd_mtxfree (scalar_t__) ;
 scalar_t__ snd_setup_intr (struct tr_info,void*,int ,int ,struct tr_info*,scalar_t__*) ;
 int snd_t4dwave ;
 int snprintf (char*,int,char*,int ,int ,int ) ;
 int tr_ac97 ;
 int tr_init (struct tr_info*) ;
 int tr_intr ;
 int trpchan_class ;
 int trrchan_class ;

__attribute__((used)) static int
tr_pci_attach(device_t dev)
{
 struct tr_info *tr;
 struct ac97_info *codec = ((void*)0);
 bus_addr_t lowaddr;
 int i, dacn;
 char status[SND_STATUSLEN];






 tr = malloc(sizeof(*tr), M_DEVBUF, M_WAITOK | M_ZERO);
 tr->type = pci_get_devid(dev);
 tr->rev = pci_get_revid(dev);
 tr->lock = snd_mtxcreate(device_get_nameunit(dev), "snd_t4dwave softc");

 if (resource_int_value(device_get_name(dev), device_get_unit(dev),
     "dac", &i) == 0) {
      if (i < 1)
   dacn = 1;
  else if (i > TR_MAXPLAYCH)
   dacn = TR_MAXPLAYCH;
  else
   dacn = i;
 } else {
  switch (tr->type) {
  case 128:
   dacn = ALI_MAXPLAYCH;
   break;
  default:
   dacn = TR_MAXPLAYCH;
   break;
  }
 }

 pci_enable_busmaster(dev);

 tr->regid = PCIR_BAR(0);
 tr->regtype = SYS_RES_IOPORT;
 tr->reg = bus_alloc_resource_any(dev, tr->regtype, &tr->regid,
  RF_ACTIVE);
 if (tr->reg) {
  tr->st = rman_get_bustag(tr->reg);
  tr->sh = rman_get_bushandle(tr->reg);
 } else {
  device_printf(dev, "unable to map register space\n");
  goto bad;
 }

 if (tr_init(tr) == -1) {
  device_printf(dev, "unable to initialize the card\n");
  goto bad;
 }
 tr->playchns = 0;

 codec = AC97_CREATE(dev, tr, tr_ac97);
 if (codec == ((void*)0)) goto bad;
 if (mixer_init(dev, ac97_getmixerclass(), codec) == -1) goto bad;

 tr->irqid = 0;
 tr->irq = bus_alloc_resource_any(dev, SYS_RES_IRQ, &tr->irqid,
     RF_ACTIVE | RF_SHAREABLE);
 if (!tr->irq || snd_setup_intr(dev, tr->irq, 0, tr_intr, tr, &tr->ih)) {
  device_printf(dev, "unable to map interrupt\n");
  goto bad;
 }

 if (tr->type == 128) {
  lowaddr = ALI_MAXADDR;
  tr->hwchns = ALI_MAXHWCH;
  tr->bufsz = ALI_BUFSZ;
 } else {
  lowaddr = TR_MAXADDR;
  tr->hwchns = TR_MAXHWCH;
  tr->bufsz = pcm_getbuffersize(dev, 4096, TR_DEFAULT_BUFSZ,
      65536);
 }

 if (bus_dma_tag_create( bus_get_dma_tag(dev),
               TR_BUFALGN,
              0,
             lowaddr,
              BUS_SPACE_MAXADDR,
            ((void*)0), ((void*)0),
             tr->bufsz, 1, tr->bufsz,
           0, busdma_lock_mutex,
             &Giant, &tr->parent_dmat) != 0) {
  device_printf(dev, "unable to create dma tag\n");
  goto bad;
 }

 snprintf(status, 64, "at io 0x%jx irq %jd %s",
   rman_get_start(tr->reg), rman_get_start(tr->irq),PCM_KLDSTRING(snd_t4dwave));

 if (pcm_register(dev, tr, dacn, 1))
  goto bad;
 pcm_addchan(dev, PCMDIR_REC, &trrchan_class, tr);
 for (i = 0; i < dacn; i++)
  pcm_addchan(dev, PCMDIR_PLAY, &trpchan_class, tr);
 pcm_setstatus(dev, status);

 return 0;

bad:
 if (codec) ac97_destroy(codec);
 if (tr->reg) bus_release_resource(dev, tr->regtype, tr->regid, tr->reg);
 if (tr->ih) bus_teardown_intr(dev, tr->irq, tr->ih);
 if (tr->irq) bus_release_resource(dev, SYS_RES_IRQ, tr->irqid, tr->irq);
 if (tr->parent_dmat) bus_dma_tag_destroy(tr->parent_dmat);
 if (tr->lock) snd_mtxfree(tr->lock);
 free(tr, M_DEVBUF);
 return ENXIO;
}
