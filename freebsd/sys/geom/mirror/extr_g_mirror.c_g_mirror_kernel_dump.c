
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct g_mirror_softc {int sc_disks; } ;
struct g_mirror_disk {int d_consumer; } ;
struct g_kerneldump {scalar_t__ length; } ;
struct bio {int bio_done; TYPE_1__* bio_to; scalar_t__ bio_data; } ;
struct TYPE_2__ {scalar_t__ mediasize; struct g_mirror_softc* private; } ;


 int ENOMEM ;
 int G_MIRROR_DEBUG (int,char*,int ) ;
 struct g_mirror_disk* LIST_FIRST (int *) ;
 struct bio* g_clone_bio (struct bio*) ;
 int g_io_deliver (struct bio*,int ) ;
 int g_io_request (struct bio*,int ) ;
 int g_mirror_get_diskname (struct g_mirror_disk*) ;
 int g_std_done ;

__attribute__((used)) static void
g_mirror_kernel_dump(struct bio *bp)
{
 struct g_mirror_softc *sc;
 struct g_mirror_disk *disk;
 struct bio *cbp;
 struct g_kerneldump *gkd;
 sc = bp->bio_to->private;
 disk = LIST_FIRST(&sc->sc_disks);

 gkd = (struct g_kerneldump *)bp->bio_data;
 if (gkd->length > bp->bio_to->mediasize)
  gkd->length = bp->bio_to->mediasize;
 cbp = g_clone_bio(bp);
 if (cbp == ((void*)0)) {
  g_io_deliver(bp, ENOMEM);
  return;
 }
 cbp->bio_done = g_std_done;
 g_io_request(cbp, disk->d_consumer);
 G_MIRROR_DEBUG(1, "Kernel dump will go to %s.",
     g_mirror_get_diskname(disk));
}
