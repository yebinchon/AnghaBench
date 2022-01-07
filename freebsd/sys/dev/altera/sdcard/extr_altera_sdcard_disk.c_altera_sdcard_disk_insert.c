
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef int uint64_t ;
struct disk {char* d_name; int d_mediasize; void* d_maxsize; void* d_sectorsize; int d_ioctl; int d_dump; int d_strategy; int d_unit; struct altera_sdcard_softc* d_drv1; } ;
struct altera_sdcard_softc {int as_mediasize; int as_dev; struct disk* as_disk; int as_unit; } ;


 int ALTERA_SDCARD_LOCK (struct altera_sdcard_softc*) ;
 int ALTERA_SDCARD_LOCK_ASSERT (struct altera_sdcard_softc*) ;
 void* ALTERA_SDCARD_SECTORSIZE ;
 int ALTERA_SDCARD_UNLOCK (struct altera_sdcard_softc*) ;
 int DISK_VERSION ;
 int altera_sdcard_disk_dump ;
 int altera_sdcard_disk_ioctl ;
 int altera_sdcard_disk_strategy ;
 int device_printf (int ,char*,int ) ;
 struct disk* disk_alloc () ;
 int disk_create (struct disk*,int ) ;

void
altera_sdcard_disk_insert(struct altera_sdcard_softc *sc)
{
 struct disk *disk;
 uint64_t size;

 ALTERA_SDCARD_LOCK_ASSERT(sc);
 ALTERA_SDCARD_UNLOCK(sc);
 disk = disk_alloc();
 disk->d_drv1 = sc;
 disk->d_name = "altera_sdcard";
 disk->d_unit = sc->as_unit;
 disk->d_strategy = altera_sdcard_disk_strategy;
 disk->d_dump = altera_sdcard_disk_dump;
 disk->d_ioctl = altera_sdcard_disk_ioctl;
 disk->d_sectorsize = ALTERA_SDCARD_SECTORSIZE;
 disk->d_mediasize = sc->as_mediasize;
 disk->d_maxsize = ALTERA_SDCARD_SECTORSIZE;
 sc->as_disk = disk;
 disk_create(disk, DISK_VERSION);
 ALTERA_SDCARD_LOCK(sc);





 size = sc->as_mediasize / (1000 * 1000);
 device_printf(sc->as_dev, "%juM SD Card inserted\n", (uintmax_t)size);
}
