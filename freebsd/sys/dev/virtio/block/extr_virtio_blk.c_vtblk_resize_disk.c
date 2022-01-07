
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef scalar_t__ uint64_t ;
struct vtblk_softc {struct disk* vtblk_disk; int vtblk_dev; } ;
struct disk {int d_sectorsize; scalar_t__ d_mediasize; } ;
typedef int device_t ;


 int M_NOWAIT ;
 scalar_t__ bootverbose ;
 int device_printf (int ,char*,int,...) ;
 int disk_resize (struct disk*,int ) ;

__attribute__((used)) static void
vtblk_resize_disk(struct vtblk_softc *sc, uint64_t new_capacity)
{
 device_t dev;
 struct disk *dp;
 int error;

 dev = sc->vtblk_dev;
 dp = sc->vtblk_disk;

 dp->d_mediasize = new_capacity;
 if (bootverbose) {
  device_printf(dev, "resized to %juMB (%ju %u byte sectors)\n",
      (uintmax_t) dp->d_mediasize >> 20,
      (uintmax_t) dp->d_mediasize / dp->d_sectorsize,
      dp->d_sectorsize);
 }

 error = disk_resize(dp, M_NOWAIT);
 if (error) {
  device_printf(dev,
      "disk_resize(9) failed, error: %d\n", error);
 }
}
