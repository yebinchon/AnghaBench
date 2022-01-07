
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void* uint32_t ;
struct opalflash_softc {int sc_erase; int sc_p; int sc_bio_queue; TYPE_1__* sc_disk; int sc_dev; void* sc_opal_id; } ;
typedef int regs ;
typedef int phandle_t ;
typedef int opal_id ;
typedef int flash_blocksize ;
typedef int device_t ;
typedef void* cell_t ;
struct TYPE_3__ {char* d_name; int * d_dump; void* d_stripesize; int d_sectorsize; int d_unit; void* d_mediasize; int d_maxsize; struct opalflash_softc* d_drv1; int d_getattr; int d_ioctl; int d_strategy; int d_close; int d_open; } ;


 int DFLTPHYS ;
 int DISK_VERSION ;
 int ENXIO ;
 int FLASH_BLOCKSIZE ;
 scalar_t__ OF_getencprop (int ,char*,void**,int) ;
 int OF_hasprop (int ,char*) ;
 int OPALFLASH_LOCK_INIT (struct opalflash_softc*) ;
 int bioq_init (int *) ;
 struct opalflash_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*) ;
 TYPE_1__* disk_alloc () ;
 int disk_create (TYPE_1__*,int ) ;
 int kproc_create (int *,struct opalflash_softc*,int *,int ,int ,char*) ;
 int ofw_bus_get_node (int ) ;
 int opalflash_close ;
 int opalflash_getattr ;
 int opalflash_ioctl ;
 int opalflash_open ;
 int opalflash_strategy ;
 int opalflash_task ;

__attribute__((used)) static int
opalflash_attach(device_t dev)
{
 struct opalflash_softc *sc;
 phandle_t node;
 cell_t flash_blocksize, opal_id;
 uint32_t regs[2];

 sc = device_get_softc(dev);
 sc->sc_dev = dev;

 node = ofw_bus_get_node(dev);
 OF_getencprop(node, "ibm,opal-id", &opal_id, sizeof(opal_id));
 sc->sc_opal_id = opal_id;

 if (OF_getencprop(node, "ibm,flash-block-size",
     &flash_blocksize, sizeof(flash_blocksize)) < 0) {
  device_printf(dev, "Cannot determine flash block size.\n");
  return (ENXIO);
 }

 if (!OF_hasprop(node, "no-erase"))
  sc->sc_erase = 1;

 OPALFLASH_LOCK_INIT(sc);

 if (OF_getencprop(node, "reg", regs, sizeof(regs)) < 0) {
  device_printf(dev, "Unable to get flash size.\n");
  return (ENXIO);
 }

 sc->sc_disk = disk_alloc();
 sc->sc_disk->d_name = "opalflash";
 sc->sc_disk->d_open = opalflash_open;
 sc->sc_disk->d_close = opalflash_close;
 sc->sc_disk->d_strategy = opalflash_strategy;
 sc->sc_disk->d_ioctl = opalflash_ioctl;
 sc->sc_disk->d_getattr = opalflash_getattr;
 sc->sc_disk->d_drv1 = sc;
 sc->sc_disk->d_maxsize = DFLTPHYS;
 sc->sc_disk->d_mediasize = regs[1];
 sc->sc_disk->d_unit = device_get_unit(sc->sc_dev);
 sc->sc_disk->d_sectorsize = FLASH_BLOCKSIZE;
     sc->sc_disk->d_stripesize = flash_blocksize;
 sc->sc_disk->d_dump = ((void*)0);

 disk_create(sc->sc_disk, DISK_VERSION);
 bioq_init(&sc->sc_bio_queue);

 kproc_create(&opalflash_task, sc, &sc->sc_p, 0, 0, "task: OPAL Flash");

 return (0);
}
