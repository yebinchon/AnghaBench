
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fm801_info {scalar_t__ regtype; scalar_t__ parent_dmat; void* irq; scalar_t__ irqid; scalar_t__ ih; void* reg; scalar_t__ regid; int radio; int bufsz; int sh; int st; int type; } ;
struct ac97_info {int dummy; } ;
typedef int device_t ;


 struct ac97_info* AC97_CREATE (int ,struct fm801_info*,int ) ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int ENXIO ;
 int FM801_DEFAULT_BUFSZ ;
 int FM801_MAXPLAYCH ;
 int Giant ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 scalar_t__ PCIR_BAR (int) ;
 int PCI_MAXMAPS_0 ;
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
 void* bus_alloc_resource_any (int ,scalar_t__,scalar_t__*,int) ;
 scalar_t__ bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int ,int,int,int ,int ,int *,scalar_t__*) ;
 int bus_dma_tag_destroy (scalar_t__) ;
 int bus_generic_attach (int ) ;
 int bus_get_dma_tag (int ) ;
 int bus_release_resource (int ,scalar_t__,scalar_t__,void*) ;
 int bus_teardown_intr (int ,void*,scalar_t__) ;
 int busdma_lock_mutex ;
 int device_add_child (int ,char*,int) ;
 int device_printf (int ,char*) ;
 int fm801_ac97 ;
 int fm801_init (struct fm801_info*) ;
 int fm801_intr ;
 int fm801ch_class ;
 int free (struct fm801_info*,int ) ;
 struct fm801_info* malloc (int,int ,int) ;
 int mixer_init (int ,int ,struct ac97_info*) ;
 int pci_enable_busmaster (int ) ;
 int pci_get_devid (int ) ;
 int pcm_addchan (int ,int ,int *,struct fm801_info*) ;
 int pcm_getbuffersize (int ,int,int ,int) ;
 scalar_t__ pcm_register (int ,struct fm801_info*,int ,int) ;
 int pcm_setstatus (int ,char*) ;
 int rman_get_bushandle (void*) ;
 int rman_get_bustag (void*) ;
 int rman_get_start (void*) ;
 int snd_fm801 ;
 scalar_t__ snd_setup_intr (int ,void*,int ,int ,struct fm801_info*,scalar_t__*) ;
 int snprintf (char*,int,char*,char*,int ,int ,int ) ;

__attribute__((used)) static int
fm801_pci_attach(device_t dev)
{
 struct ac97_info *codec = ((void*)0);
 struct fm801_info *fm801;
 int i;
 int mapped = 0;
 char status[SND_STATUSLEN];

 fm801 = malloc(sizeof(*fm801), M_DEVBUF, M_WAITOK | M_ZERO);
 fm801->type = pci_get_devid(dev);

 pci_enable_busmaster(dev);

 for (i = 0; (mapped == 0) && (i < PCI_MAXMAPS_0); i++) {
  fm801->regid = PCIR_BAR(i);
  fm801->regtype = SYS_RES_MEMORY;
  fm801->reg = bus_alloc_resource_any(dev, fm801->regtype,
          &fm801->regid, RF_ACTIVE);
  if(!fm801->reg)
  {
   fm801->regtype = SYS_RES_IOPORT;
   fm801->reg = bus_alloc_resource_any(dev,
           fm801->regtype,
           &fm801->regid,
           RF_ACTIVE);
  }

  if(fm801->reg) {
   fm801->st = rman_get_bustag(fm801->reg);
   fm801->sh = rman_get_bushandle(fm801->reg);
   mapped++;
  }
 }

 if (mapped == 0) {
  device_printf(dev, "unable to map register space\n");
  goto oops;
 }

 fm801->bufsz = pcm_getbuffersize(dev, 4096, FM801_DEFAULT_BUFSZ, 65536);

 fm801_init(fm801);

 codec = AC97_CREATE(dev, fm801, fm801_ac97);
 if (codec == ((void*)0)) goto oops;

 if (mixer_init(dev, ac97_getmixerclass(), codec) == -1) goto oops;

 fm801->irqid = 0;
 fm801->irq = bus_alloc_resource_any(dev, SYS_RES_IRQ, &fm801->irqid,
         RF_ACTIVE | RF_SHAREABLE);
 if (!fm801->irq ||
     snd_setup_intr(dev, fm801->irq, 0, fm801_intr, fm801, &fm801->ih)) {
  device_printf(dev, "unable to map interrupt\n");
  goto oops;
 }

 if (bus_dma_tag_create( bus_get_dma_tag(dev), 2,
              0,
             BUS_SPACE_MAXADDR_32BIT,
              BUS_SPACE_MAXADDR,
            ((void*)0), ((void*)0),
             fm801->bufsz, 1, 0x3ffff,
           0, busdma_lock_mutex,
             &Giant, &fm801->parent_dmat) != 0) {
  device_printf(dev, "unable to create dma tag\n");
  goto oops;
 }

 snprintf(status, 64, "at %s 0x%jx irq %jd %s",
  (fm801->regtype == SYS_RES_IOPORT)? "io" : "memory",
  rman_get_start(fm801->reg), rman_get_start(fm801->irq),PCM_KLDSTRING(snd_fm801));


 if (pcm_register(dev, fm801, 1, 1)) goto oops;
 pcm_addchan(dev, PCMDIR_PLAY, &fm801ch_class, fm801);
 pcm_addchan(dev, PCMDIR_REC, &fm801ch_class, fm801);
 pcm_setstatus(dev, status);

 fm801->radio = device_add_child(dev, "radio", -1);
 bus_generic_attach(dev);

 return 0;

oops:
 if (codec) ac97_destroy(codec);
 if (fm801->reg) bus_release_resource(dev, fm801->regtype, fm801->regid, fm801->reg);
 if (fm801->ih) bus_teardown_intr(dev, fm801->irq, fm801->ih);
 if (fm801->irq) bus_release_resource(dev, SYS_RES_IRQ, fm801->irqid, fm801->irq);
 if (fm801->parent_dmat) bus_dma_tag_destroy(fm801->parent_dmat);
 free(fm801, M_DEVBUF);
 return ENXIO;
}
