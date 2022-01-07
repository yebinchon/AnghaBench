
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio {scalar_t__ bio_error; int bio_length; int bio_data; } ;


 int GJ_LOGREQ (int,struct bio*,char*,...) ;
 int g_destroy_bio (struct bio*) ;
 int gj_free (int ,int ) ;

__attribute__((used)) static void
g_journal_metadata_done(struct bio *bp)
{




 if (bp->bio_error != 0) {
  GJ_LOGREQ(0, bp, "Cannot update metadata (error=%d).",
      bp->bio_error);
 } else {
  GJ_LOGREQ(2, bp, "Metadata updated.");
 }
 gj_free(bp->bio_data, bp->bio_length);
 g_destroy_bio(bp);
}
