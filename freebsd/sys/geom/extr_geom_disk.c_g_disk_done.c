
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct g_disk_softc {int done_mtx; TYPE_2__* dp; } ;
struct bio {scalar_t__ bio_error; int bio_cmd; scalar_t__ bio_inbed; scalar_t__ bio_children; scalar_t__ bio_completed; scalar_t__ bio_bcount; scalar_t__ bio_resid; int bio_zone; scalar_t__ bio_length; TYPE_1__* bio_to; struct bio* bio_parent; } ;
struct bintime {int dummy; } ;
struct TYPE_4__ {int d_devstat; } ;
struct TYPE_3__ {struct g_disk_softc* private; } ;







 int bcopy (int *,int *,int) ;
 int binuptime (struct bintime*) ;
 int devstat_end_transaction_bio_bt (int ,struct bio*,struct bintime*) ;
 int g_destroy_bio (struct bio*) ;
 int g_io_deliver (struct bio*,scalar_t__) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
g_disk_done(struct bio *bp)
{
 struct bintime now;
 struct bio *bp2;
 struct g_disk_softc *sc;



 bp2 = bp->bio_parent;
 sc = bp2->bio_to->private;
 bp->bio_completed = bp->bio_length - bp->bio_resid;
 binuptime(&now);
 mtx_lock(&sc->done_mtx);
 if (bp2->bio_error == 0)
  bp2->bio_error = bp->bio_error;
 bp2->bio_completed += bp->bio_completed;

 switch (bp->bio_cmd) {
 case 128:
  bcopy(&bp->bio_zone, &bp2->bio_zone, sizeof(bp->bio_zone));

 case 130:
 case 129:
 case 132:
 case 131:
  devstat_end_transaction_bio_bt(sc->dp->d_devstat, bp, &now);
  break;
 default:
  break;
 }
 bp2->bio_inbed++;
 if (bp2->bio_children == bp2->bio_inbed) {
  mtx_unlock(&sc->done_mtx);
  bp2->bio_resid = bp2->bio_bcount - bp2->bio_completed;
  g_io_deliver(bp2, bp2->bio_error);
 } else
  mtx_unlock(&sc->done_mtx);
 g_destroy_bio(bp);
}
