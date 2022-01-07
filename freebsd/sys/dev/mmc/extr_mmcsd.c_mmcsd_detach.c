
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmcsd_softc {struct mmcsd_part** part; int * rpmb_dev; } ;
struct mmcsd_part {scalar_t__ running; int ioctl; int * disk; int bio_queue; int ioctl_mtx; int disk_mtx; scalar_t__ suspend; } ;
typedef int device_t ;


 int ENXIO ;
 int MMCSD_DISK_LOCK (struct mmcsd_part*) ;
 int MMCSD_DISK_LOCK_DESTROY (struct mmcsd_part*) ;
 int MMCSD_DISK_UNLOCK (struct mmcsd_part*) ;
 int MMCSD_IOCTL_LOCK (struct mmcsd_part*) ;
 int MMCSD_IOCTL_LOCK_DESTROY (struct mmcsd_part*) ;
 int MMCSD_IOCTL_UNLOCK (struct mmcsd_part*) ;
 scalar_t__ MMC_ERR_NONE ;
 int MMC_PART_MAX ;
 int M_DEVBUF ;
 int bioq_flush (int *,int *,int ) ;
 int destroy_dev (int *) ;
 struct mmcsd_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int disk_destroy (int *) ;
 int free (struct mmcsd_part*,int ) ;
 scalar_t__ mmcsd_flush_cache (struct mmcsd_softc*) ;
 int msleep (struct mmcsd_part*,int *,int ,char*,int ) ;
 int wakeup (struct mmcsd_part*) ;

__attribute__((used)) static int
mmcsd_detach(device_t dev)
{
 struct mmcsd_softc *sc = device_get_softc(dev);
 struct mmcsd_part *part;
 int i;

 for (i = 0; i < MMC_PART_MAX; i++) {
  part = sc->part[i];
  if (part != ((void*)0)) {
   if (part->disk != ((void*)0)) {
    MMCSD_DISK_LOCK(part);
    part->suspend = 0;
    if (part->running > 0) {

     part->running = 0;
     wakeup(part);

     while (part->running != -1)
      msleep(part, &part->disk_mtx, 0,
          "mmcsd disk detach", 0);
    }
    MMCSD_DISK_UNLOCK(part);
   }
   MMCSD_IOCTL_LOCK(part);
   while (part->ioctl > 0)
    msleep(part, &part->ioctl_mtx, 0,
        "mmcsd IOCTL detach", 0);
   part->ioctl = -1;
   MMCSD_IOCTL_UNLOCK(part);
  }
 }

 if (sc->rpmb_dev != ((void*)0))
  destroy_dev(sc->rpmb_dev);

 for (i = 0; i < MMC_PART_MAX; i++) {
  part = sc->part[i];
  if (part != ((void*)0)) {
   if (part->disk != ((void*)0)) {

    bioq_flush(&part->bio_queue, ((void*)0), ENXIO);

    disk_destroy(part->disk);

    MMCSD_DISK_LOCK_DESTROY(part);
   }
   MMCSD_IOCTL_LOCK_DESTROY(part);
   free(part, M_DEVBUF);
  }
 }
 if (mmcsd_flush_cache(sc) != MMC_ERR_NONE)
  device_printf(dev, "failed to flush cache\n");
 return (0);
}
