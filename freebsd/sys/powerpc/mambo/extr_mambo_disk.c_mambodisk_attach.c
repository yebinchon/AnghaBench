
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mambodisk_softc {int maxblocks; int running; int p; int bio_queue; struct disk* disk; int dev; } ;
struct disk {char* d_name; int d_sectorsize; unsigned long long d_mediasize; int d_unit; int d_maxsize; struct mambodisk_softc* d_drv1; int d_strategy; int d_close; int d_open; } ;
typedef int intmax_t ;
typedef int device_t ;


 int DISK_VERSION ;
 int MAMBO_DISK_INFO ;
 int MAMBO_INFO_BLKSZ ;
 int MAMBO_INFO_DEVSZ ;
 int MAXPHYS ;
 int MBODISK_LOCK_INIT (struct mambodisk_softc*) ;
 int bioq_init (int *) ;
 struct mambodisk_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*,int,char,int) ;
 struct disk* disk_alloc () ;
 int disk_create (struct disk*,int ) ;
 int kproc_create (int *,struct mambodisk_softc*,int *,int ,int ,char*) ;
 unsigned long long mambocall (int ,int ,int ) ;
 int mambodisk_close ;
 int mambodisk_open ;
 int mambodisk_strategy ;
 int mambodisk_task ;

__attribute__((used)) static int
mambodisk_attach(device_t dev)
{
 struct mambodisk_softc *sc;
 struct disk *d;
 intmax_t mb;
 char unit;

 sc = device_get_softc(dev);
 sc->dev = dev;
 MBODISK_LOCK_INIT(sc);

 d = sc->disk = disk_alloc();
 d->d_open = mambodisk_open;
 d->d_close = mambodisk_close;
 d->d_strategy = mambodisk_strategy;
 d->d_name = "mambodisk";
 d->d_drv1 = sc;
 d->d_maxsize = MAXPHYS;

 d->d_sectorsize = 512;
 sc->maxblocks = mambocall(MAMBO_DISK_INFO,MAMBO_INFO_BLKSZ,d->d_unit)
     / 512;

 d->d_unit = device_get_unit(dev);
 d->d_mediasize = mambocall(MAMBO_DISK_INFO,MAMBO_INFO_DEVSZ,d->d_unit)
     * 1024ULL;

 mb = d->d_mediasize >> 20;
 unit = 'M';
 if (mb >= 10240) {
  unit = 'G';
  mb /= 1024;
 }
 device_printf(dev, "%ju%cB, %d byte sectors\n", mb, unit,
     d->d_sectorsize);
 disk_create(d, DISK_VERSION);
 bioq_init(&sc->bio_queue);

 sc->running = 1;
 kproc_create(&mambodisk_task, sc, &sc->p, 0, 0, "task: mambo hd");

 return (0);
}
