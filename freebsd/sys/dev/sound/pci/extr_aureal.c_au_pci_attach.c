
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct resource {int dummy; } ;
struct au_info {int parent_dmat; int * sh; int * st; int unit; } ;
struct ac97_info {int dummy; } ;
typedef int device_t ;
struct TYPE_4__ {int nummaps; TYPE_1__* map; } ;
struct TYPE_3__ {int ln2size; int type; int base; } ;


 struct ac97_info* AC97_CREATE (int ,struct au_info*,int ) ;
 int AU_BUFFSIZE ;
 int AU_REG_IRQEN ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int ENXIO ;
 int Giant ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 int PCIR_BAR (int) ;
 int PCI_MAPPORT ;
 int PCI_MAXMAPS_0 ;
 int PCMDIR_PLAY ;
 int PCM_KLDSTRING (int ) ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SND_STATUSLEN ;
 int SYS_RES_IOPORT ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int ac97_getmixerclass () ;
 int au_ac97 ;
 int au_init (int ,struct au_info*) ;
 int au_intr ;
 scalar_t__ au_testirq (struct au_info*) ;
 int au_wr (struct au_info*,int ,int ,int ,int) ;
 int auchan_class ;
 scalar_t__ bootverbose ;
 struct resource* bus_alloc_resource_any (int ,int,int*,int) ;
 scalar_t__ bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int ,int,int,int ,int ,int *,int *) ;
 int bus_get_dma_tag (int ) ;
 int bus_release_resource (int ,int,int,struct resource*) ;
 int bus_teardown_intr (int ,struct resource*,void*) ;
 int busdma_lock_mutex ;
 TYPE_2__* config_id ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*) ;
 int free (struct au_info*,int ) ;
 struct au_info* malloc (int,int ,int) ;
 int mixer_init (int ,int ,struct ac97_info*) ;
 int pci_enable_busmaster (int ) ;
 int pcm_addchan (int ,int ,int *,struct au_info*) ;
 scalar_t__ pcm_register (int ,struct au_info*,int,int) ;
 int pcm_setstatus (int ,char*) ;
 int printf (char*,...) ;
 int rman_get_bushandle (struct resource*) ;
 int rman_get_bustag (struct resource*) ;
 int rman_get_start (struct resource*) ;
 int snd_aureal ;
 scalar_t__ snd_setup_intr (int ,struct resource*,int ,int ,struct au_info*,void**) ;
 int snprintf (char*,int,char*,char*,int ,int ,int ) ;
 int unit ;

__attribute__((used)) static int
au_pci_attach(device_t dev)
{
 struct au_info *au;
 int type[10];
 int regid[10];
 struct resource *reg[10];
 int i, j, mapped = 0;
 int irqid;
 struct resource *irq;
 void *ih;
 struct ac97_info *codec;
 char status[SND_STATUSLEN];

 au = malloc(sizeof(*au), M_DEVBUF, M_WAITOK | M_ZERO);
 au->unit = device_get_unit(dev);

 pci_enable_busmaster(dev);

 irq = ((void*)0);
 ih = ((void*)0);
 j=0;

 for (i=0; i<PCI_MAXMAPS_0; i++) {
  regid[j] = PCIR_BAR(i);
  type[j] = SYS_RES_MEMORY;
  reg[j] = bus_alloc_resource_any(dev, type[j], &regid[j],
      RF_ACTIVE);
  if (!reg[j]) {
   type[j] = SYS_RES_IOPORT;
   reg[j] = bus_alloc_resource_any(dev, type[j],
       &regid[j], RF_ACTIVE);
  }
  if (reg[j]) {
   au->st[i] = rman_get_bustag(reg[j]);
   au->sh[i] = rman_get_bushandle(reg[j]);
   mapped++;
  }



  if (mapped) j++;
  if (j == 10) {

   device_printf(dev, "too many resources");
   goto bad;
  }
 }
 au_wr(au, 0, AU_REG_IRQEN, 0, 4);

 irqid = 0;
 irq = bus_alloc_resource_any(dev, SYS_RES_IRQ, &irqid,
         RF_ACTIVE | RF_SHAREABLE);
 if (!irq || snd_setup_intr(dev, irq, 0, au_intr, au, &ih)) {
  device_printf(dev, "unable to map interrupt\n");
  goto bad;
 }

 if (au_testirq(au)) device_printf(dev, "irq test failed\n");

 if (au_init(dev, au) == -1) {
  device_printf(dev, "unable to initialize the card\n");
  goto bad;
 }

 codec = AC97_CREATE(dev, au, au_ac97);
 if (codec == ((void*)0)) goto bad;
 if (mixer_init(dev, ac97_getmixerclass(), codec) == -1) goto bad;

 if (bus_dma_tag_create( bus_get_dma_tag(dev), 2,
              0,
             BUS_SPACE_MAXADDR_32BIT,
              BUS_SPACE_MAXADDR,
            ((void*)0), ((void*)0),
             AU_BUFFSIZE, 1, 0x3ffff,
           0, busdma_lock_mutex,
             &Giant, &au->parent_dmat) != 0) {
  device_printf(dev, "unable to create dma tag\n");
  goto bad;
 }

 snprintf(status, SND_STATUSLEN, "at %s 0x%jx irq %jd %s",
   (type[0] == SYS_RES_IOPORT)? "io" : "memory",
   rman_get_start(reg[0]), rman_get_start(irq),PCM_KLDSTRING(snd_aureal));

 if (pcm_register(dev, au, 1, 1)) goto bad;

 pcm_addchan(dev, PCMDIR_PLAY, &auchan_class, au);
 pcm_setstatus(dev, status);

 return 0;

 bad:
 if (au) free(au, M_DEVBUF);
 for (i = 0; i < j; i++)
  bus_release_resource(dev, type[i], regid[i], reg[i]);
 if (ih) bus_teardown_intr(dev, irq, ih);
 if (irq) bus_release_resource(dev, SYS_RES_IRQ, irqid, irq);
 return ENXIO;
}
