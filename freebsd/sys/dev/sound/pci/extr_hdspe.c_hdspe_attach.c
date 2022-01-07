
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct sc_pcminfo {int dev; struct sc_info* sc; struct hdspe_channel* hc; } ;
struct sc_info {int type; int dev; int lock; } ;
struct hdspe_channel {int * descr; } ;
typedef int device_t ;


 int AIO ;
 int ENXIO ;
 int HDSPE_MAX_CHANS ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_ZERO ;


 int RAYDAT ;
 int bus_generic_attach (int ) ;
 struct hdspe_channel* chan_map_aio ;
 struct hdspe_channel* chan_map_rd ;
 int device_add_child (int ,char*,int) ;
 int device_get_nameunit (int ) ;
 struct sc_info* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int device_set_ivars (int ,struct sc_pcminfo*) ;
 int hdspe_alloc_resources (struct sc_info*) ;
 scalar_t__ hdspe_init (struct sc_info*) ;
 int hdspe_map_dmabuf (struct sc_info*) ;
 struct sc_pcminfo* malloc (int,int ,int) ;
 int pci_enable_busmaster (int ) ;
 int pci_get_revid (int ) ;
 int snd_mtxcreate (int ,char*) ;

__attribute__((used)) static int
hdspe_attach(device_t dev)
{
 struct hdspe_channel *chan_map;
 struct sc_pcminfo *scp;
 struct sc_info *sc;
 uint32_t rev;
 int i, err;





 sc = device_get_softc(dev);
 sc->lock = snd_mtxcreate(device_get_nameunit(dev),
     "snd_hdspe softc");
 sc->dev = dev;

 pci_enable_busmaster(dev);
 rev = pci_get_revid(dev);
 switch (rev) {
 case 129:
  sc->type = AIO;
  chan_map = chan_map_aio;
  break;
 case 128:
  sc->type = RAYDAT;
  chan_map = chan_map_rd;
  break;
 default:
  return (ENXIO);
 }


 err = hdspe_alloc_resources(sc);
 if (err) {
  device_printf(dev, "Unable to allocate system resources.\n");
  return (ENXIO);
 }

 if (hdspe_init(sc) != 0)
  return (ENXIO);

 for (i = 0; i < HDSPE_MAX_CHANS && chan_map[i].descr != ((void*)0); i++) {
  scp = malloc(sizeof(struct sc_pcminfo), M_DEVBUF, M_NOWAIT | M_ZERO);
  scp->hc = &chan_map[i];
  scp->sc = sc;
  scp->dev = device_add_child(dev, "pcm", -1);
  device_set_ivars(scp->dev, scp);
 }

 hdspe_map_dmabuf(sc);

 return (bus_generic_attach(dev));
}
