
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bio {scalar_t__ bio_cflags; scalar_t__ bio_inbed; scalar_t__ bio_completed; scalar_t__ bio_length; scalar_t__ bio_error; scalar_t__ bio_children; TYPE_1__* bio_to; struct bio* bio_parent; } ;
struct TYPE_2__ {int name; } ;


 scalar_t__ GJ_BIO_READ ;
 int GJ_DEBUG (int ,char*,int ,scalar_t__) ;
 int KASSERT (int,char*) ;
 int g_destroy_bio (struct bio*) ;
 int g_io_deliver (struct bio*,int ) ;

__attribute__((used)) static void
g_journal_read_done(struct bio *bp)
{
 struct bio *pbp;

 KASSERT(bp->bio_cflags == GJ_BIO_READ,
     ("Invalid bio (%d != %d).", bp->bio_cflags, GJ_BIO_READ));

 pbp = bp->bio_parent;
 pbp->bio_inbed++;
 pbp->bio_completed += bp->bio_length;

 if (bp->bio_error != 0) {
  if (pbp->bio_error == 0)
   pbp->bio_error = bp->bio_error;
  GJ_DEBUG(0, "Error while reading data from %s (error=%d).",
      bp->bio_to->name, bp->bio_error);
 }
 g_destroy_bio(bp);
 if (pbp->bio_children == pbp->bio_inbed &&
     pbp->bio_completed == pbp->bio_length) {

  g_io_deliver(pbp, 0);
 }
}
