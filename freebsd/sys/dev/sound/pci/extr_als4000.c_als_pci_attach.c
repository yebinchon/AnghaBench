
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc_info {int irq; int reg; int dev; int lock; } ;
typedef int device_t ;


 int ENXIO ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 scalar_t__ PCI_POWERSTATE_D0 ;
 int PCMDIR_PLAY ;
 int PCMDIR_REC ;
 int PCM_KLDSTRING (int ) ;
 int SND_STATUSLEN ;
 scalar_t__ als_init (struct sc_info*) ;
 int als_mixer_class ;
 int als_resource_free (int ,struct sc_info*) ;
 scalar_t__ als_resource_grab (int ,struct sc_info*) ;
 int alspchan_class ;
 int alsrchan_class ;
 int device_get_nameunit (int ) ;
 int device_printf (int ,char*,...) ;
 int free (struct sc_info*,int ) ;
 struct sc_info* malloc (int,int ,int) ;
 scalar_t__ mixer_init (int ,int *,struct sc_info*) ;
 int pci_enable_busmaster (int ) ;
 scalar_t__ pci_get_powerstate (int ) ;
 int pci_set_powerstate (int ,scalar_t__) ;
 int pcm_addchan (int ,int ,int *,struct sc_info*) ;
 scalar_t__ pcm_register (int ,struct sc_info*,int,int) ;
 int pcm_setstatus (int ,char*) ;
 int rman_get_start (int ) ;
 int snd_als4000 ;
 int snd_mtxcreate (int ,char*) ;
 int snprintf (char*,int,char*,int ,int ,int ) ;

__attribute__((used)) static int
als_pci_attach(device_t dev)
{
 struct sc_info *sc;
 char status[SND_STATUSLEN];

 sc = malloc(sizeof(*sc), M_DEVBUF, M_WAITOK | M_ZERO);
 sc->lock = snd_mtxcreate(device_get_nameunit(dev), "snd_als4000 softc");
 sc->dev = dev;

 pci_enable_busmaster(dev);





 if (pci_get_powerstate(dev) != PCI_POWERSTATE_D0) {

  device_printf(dev, "chip is in D%d power mode "
         "-- setting to D0\n", pci_get_powerstate(dev));
  pci_set_powerstate(dev, PCI_POWERSTATE_D0);
 }

 if (als_resource_grab(dev, sc)) {
  device_printf(dev, "failed to allocate resources\n");
  goto bad_attach;
 }

 if (als_init(sc)) {
  device_printf(dev, "failed to initialize hardware\n");
  goto bad_attach;
 }

 if (mixer_init(dev, &als_mixer_class, sc)) {
  device_printf(dev, "failed to initialize mixer\n");
  goto bad_attach;
 }

 if (pcm_register(dev, sc, 1, 1)) {
  device_printf(dev, "failed to register pcm entries\n");
  goto bad_attach;
 }

 pcm_addchan(dev, PCMDIR_PLAY, &alspchan_class, sc);
 pcm_addchan(dev, PCMDIR_REC, &alsrchan_class, sc);

 snprintf(status, SND_STATUSLEN, "at io 0x%jx irq %jd %s",
   rman_get_start(sc->reg), rman_get_start(sc->irq),PCM_KLDSTRING(snd_als4000));
 pcm_setstatus(dev, status);
 return 0;

 bad_attach:
 als_resource_free(dev, sc);
 free(sc, M_DEVBUF);
 return ENXIO;
}
