
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mx25l_softc {int sc_flags; int sc_erasesize; int sc_dev; int sc_taskstate; int sc_p; int sc_bio_queue; TYPE_1__* sc_disk; int sc_parent; } ;
struct mx25l_flash_ident {int flags; int sectorsize; int sectorcount; int name; } ;
typedef int device_t ;
struct TYPE_3__ {char* d_name; int d_mediasize; int d_stripesize; int d_descr; int * d_dump; int d_unit; int d_sectorsize; int d_maxsize; struct mx25l_softc* d_drv1; int d_ioctl; int d_getattr; int d_strategy; int d_close; int d_open; } ;


 int CMD_ENTER_4B_MODE ;
 int CMD_EXIT_4B_MODE ;
 int DFLTPHYS ;
 int DISK_VERSION ;
 int ENXIO ;
 int FL_DISABLE_4B_ADDR ;
 int FL_ENABLE_4B_ADDR ;
 int FL_ERASE_32K ;
 int FL_ERASE_4K ;
 int M25PXX_LOCK_INIT (struct mx25l_softc*) ;
 int MX25L_SECTORSIZE ;
 int TSTATE_RUNNING ;
 int bioq_init (int *) ;
 int device_get_parent (int ) ;
 struct mx25l_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*,int ,int,int,int,int) ;
 TYPE_1__* disk_alloc () ;
 int disk_create (TYPE_1__*,int ) ;
 int kproc_create (int *,struct mx25l_softc*,int *,int ,int ,char*) ;
 int mx25l_close ;
 struct mx25l_flash_ident* mx25l_get_device_ident (struct mx25l_softc*) ;
 int mx25l_getattr ;
 int mx25l_ioctl ;
 int mx25l_open ;
 int mx25l_set_4b_mode (struct mx25l_softc*,int ) ;
 int mx25l_strategy ;
 int mx25l_task ;
 int mx25l_wait_for_device_ready (struct mx25l_softc*) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static int
mx25l_attach(device_t dev)
{
 struct mx25l_softc *sc;
 struct mx25l_flash_ident *ident;
 int err;

 sc = device_get_softc(dev);
 sc->sc_dev = dev;
 sc->sc_parent = device_get_parent(sc->sc_dev);

 M25PXX_LOCK_INIT(sc);

 ident = mx25l_get_device_ident(sc);
 if (ident == ((void*)0))
  return (ENXIO);

 if ((err = mx25l_wait_for_device_ready(sc)) != 0)
  return (err);

 sc->sc_flags = ident->flags;

 if (sc->sc_flags & FL_ERASE_4K)
  sc->sc_erasesize = 4 * 1024;
 else if (sc->sc_flags & FL_ERASE_32K)
  sc->sc_erasesize = 32 * 1024;
 else
  sc->sc_erasesize = ident->sectorsize;

 if (sc->sc_flags & FL_ENABLE_4B_ADDR) {
  if ((err = mx25l_set_4b_mode(sc, CMD_ENTER_4B_MODE)) != 0)
   return (err);
 } else if (sc->sc_flags & FL_DISABLE_4B_ADDR) {
  if ((err = mx25l_set_4b_mode(sc, CMD_EXIT_4B_MODE)) != 0)
   return (err);
 }

 sc->sc_disk = disk_alloc();
 sc->sc_disk->d_open = mx25l_open;
 sc->sc_disk->d_close = mx25l_close;
 sc->sc_disk->d_strategy = mx25l_strategy;
 sc->sc_disk->d_getattr = mx25l_getattr;
 sc->sc_disk->d_ioctl = mx25l_ioctl;
 sc->sc_disk->d_name = "flash/spi";
 sc->sc_disk->d_drv1 = sc;
 sc->sc_disk->d_maxsize = DFLTPHYS;
 sc->sc_disk->d_sectorsize = MX25L_SECTORSIZE;
 sc->sc_disk->d_mediasize = ident->sectorsize * ident->sectorcount;
 sc->sc_disk->d_stripesize = sc->sc_erasesize;
 sc->sc_disk->d_unit = device_get_unit(sc->sc_dev);
 sc->sc_disk->d_dump = ((void*)0);
 strlcpy(sc->sc_disk->d_descr, ident->name,
     sizeof(sc->sc_disk->d_descr));

 disk_create(sc->sc_disk, DISK_VERSION);
 bioq_init(&sc->sc_bio_queue);

 kproc_create(&mx25l_task, sc, &sc->sc_p, 0, 0, "task: mx25l flash");
 sc->sc_taskstate = TSTATE_RUNNING;

 device_printf(sc->sc_dev,
     "device type %s, size %dK in %d sectors of %dK, erase size %dK\n",
     ident->name,
     ident->sectorcount * ident->sectorsize / 1024,
     ident->sectorcount, ident->sectorsize / 1024,
     sc->sc_erasesize / 1024);

 return (0);
}
