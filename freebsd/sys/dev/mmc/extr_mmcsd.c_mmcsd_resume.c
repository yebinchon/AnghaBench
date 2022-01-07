
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmcsd_softc {struct mmcsd_part** part; } ;
struct mmcsd_part {scalar_t__ running; scalar_t__ ioctl; int cnt; int name; int p; scalar_t__ suspend; int * disk; } ;
typedef int device_t ;


 int MMCSD_DISK_LOCK (struct mmcsd_part*) ;
 int MMCSD_DISK_UNLOCK (struct mmcsd_part*) ;
 int MMCSD_IOCTL_LOCK (struct mmcsd_part*) ;
 int MMCSD_IOCTL_UNLOCK (struct mmcsd_part*) ;
 int MMC_PART_MAX ;
 struct mmcsd_softc* device_get_softc (int ) ;
 int kproc_create (int *,struct mmcsd_part*,int *,int ,int ,char*,int ,int ) ;
 int mmcsd_task ;

__attribute__((used)) static int
mmcsd_resume(device_t dev)
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
    if (part->running <= 0) {
     part->running = 1;
     MMCSD_DISK_UNLOCK(part);
     kproc_create(&mmcsd_task, part,
         &part->p, 0, 0, "%s%d: mmc/sd card",
         part->name, part->cnt);
    } else
     MMCSD_DISK_UNLOCK(part);
   }
   MMCSD_IOCTL_LOCK(part);
   part->ioctl = 0;
   MMCSD_IOCTL_UNLOCK(part);
  }
 }
 return (0);
}
