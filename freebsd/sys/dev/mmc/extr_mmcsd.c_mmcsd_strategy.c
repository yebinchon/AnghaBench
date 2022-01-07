
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmcsd_part {scalar_t__ running; scalar_t__ suspend; int bio_queue; } ;
struct bio {TYPE_1__* bio_disk; } ;
struct TYPE_2__ {struct mmcsd_part* d_drv1; } ;


 int ENXIO ;
 int MMCSD_DISK_LOCK (struct mmcsd_part*) ;
 int MMCSD_DISK_UNLOCK (struct mmcsd_part*) ;
 int biofinish (struct bio*,int *,int ) ;
 int bioq_disksort (int *,struct bio*) ;
 int wakeup (struct mmcsd_part*) ;

__attribute__((used)) static void
mmcsd_strategy(struct bio *bp)
{
 struct mmcsd_part *part;

 part = bp->bio_disk->d_drv1;
 MMCSD_DISK_LOCK(part);
 if (part->running > 0 || part->suspend > 0) {
  bioq_disksort(&part->bio_queue, bp);
  MMCSD_DISK_UNLOCK(part);
  wakeup(part);
 } else {
  MMCSD_DISK_UNLOCK(part);
  biofinish(bp, ((void*)0), ENXIO);
 }
}
