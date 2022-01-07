
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct n25q_softc {int sc_sectorsize; int sc_flags; int dev; int sc_taskstate; int sc_p; int sc_bio_queue; TYPE_1__* sc_disk; } ;
struct n25q_flash_ident {int sectorsize; int sectorcount; int flags; int name; } ;
typedef int device_t ;
struct TYPE_3__ {char* d_name; int d_mediasize; int d_stripesize; int * d_dump; int d_unit; int d_sectorsize; int d_maxsize; struct n25q_softc* d_drv1; int d_ioctl; int d_getattr; int d_strategy; int d_close; int d_open; } ;


 int CMD_ENTER_4B_MODE ;
 int CMD_EXIT_4B_MODE ;
 int DFLTPHYS ;
 int DISK_VERSION ;
 int ENXIO ;
 int FLASH_SECTORSIZE ;
 int FL_DISABLE_4B_ADDR ;
 int FL_ENABLE_4B_ADDR ;
 int N25Q_LOCK_INIT (struct n25q_softc*) ;
 int TSTATE_RUNNING ;
 int bioq_init (int *) ;
 struct n25q_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*,int ,int,int) ;
 TYPE_1__* disk_alloc () ;
 int disk_create (TYPE_1__*,int ) ;
 int kproc_create (int *,struct n25q_softc*,int *,int ,int ,char*) ;
 int n25q_close ;
 struct n25q_flash_ident* n25q_get_device_ident (struct n25q_softc*) ;
 int n25q_getattr ;
 int n25q_ioctl ;
 int n25q_open ;
 int n25q_set_4b_mode (int ,int ) ;
 int n25q_strategy ;
 int n25q_task ;
 int n25q_wait_for_device_ready (int ) ;

__attribute__((used)) static int
n25q_attach(device_t dev)
{
 struct n25q_flash_ident *ident;
 struct n25q_softc *sc;

 sc = device_get_softc(dev);
 sc->dev = dev;

 N25Q_LOCK_INIT(sc);

 ident = n25q_get_device_ident(sc);
 if (ident == ((void*)0)) {
  return (ENXIO);
 }

 n25q_wait_for_device_ready(sc->dev);

 sc->sc_disk = disk_alloc();
 sc->sc_disk->d_open = n25q_open;
 sc->sc_disk->d_close = n25q_close;
 sc->sc_disk->d_strategy = n25q_strategy;
 sc->sc_disk->d_getattr = n25q_getattr;
 sc->sc_disk->d_ioctl = n25q_ioctl;
 sc->sc_disk->d_name = "flash/qspi";
 sc->sc_disk->d_drv1 = sc;
 sc->sc_disk->d_maxsize = DFLTPHYS;
 sc->sc_disk->d_sectorsize = FLASH_SECTORSIZE;
 sc->sc_disk->d_mediasize = (ident->sectorsize * ident->sectorcount);
 sc->sc_disk->d_unit = device_get_unit(sc->dev);
 sc->sc_disk->d_dump = ((void*)0);

 sc->sc_sectorsize = ident->sectorsize;
 sc->sc_flags = ident->flags;

 if (sc->sc_flags & FL_ENABLE_4B_ADDR)
  n25q_set_4b_mode(dev, CMD_ENTER_4B_MODE);

 if (sc->sc_flags & FL_DISABLE_4B_ADDR)
  n25q_set_4b_mode(dev, CMD_EXIT_4B_MODE);


 sc->sc_disk->d_stripesize = ident->sectorsize;

 disk_create(sc->sc_disk, DISK_VERSION);
 bioq_init(&sc->sc_bio_queue);

 kproc_create(&n25q_task, sc, &sc->sc_p, 0, 0, "task: n25q flash");
 sc->sc_taskstate = TSTATE_RUNNING;

 device_printf(sc->dev, "%s, sector %d bytes, %d sectors\n",
     ident->name, ident->sectorsize, ident->sectorcount);

 return (0);
}
