
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stack {int dummy; } ;
struct bio {scalar_t__ bio_cmd; int bio_flags; int bio_children; int bio_track_bp; int bio_classifier2; int bio_classifier1; int bio_zone; int bio_attribute; int bio_ma_offset; int bio_ma_n; int bio_ma; int bio_data; int bio_offset; int bio_length; struct bio* bio_parent; } ;


 int BIO_ORDERED ;
 int BIO_UNMAPPED ;
 int BIO_VLIST ;
 scalar_t__ BIO_ZONE ;
 int CTR2 (int,char*,struct bio*,struct bio*) ;
 int CTRSTACK (int,struct stack*,int) ;
 int KTR_COMPILE ;
 int KTR_GEOM ;
 int M_NOWAIT ;
 int M_ZERO ;
 int bcopy (int *,int *,int) ;
 int biozone ;
 int ktr_mask ;
 int stack_save (struct stack*) ;
 struct bio* uma_zalloc (int ,int) ;

struct bio *
g_clone_bio(struct bio *bp)
{
 struct bio *bp2;

 bp2 = uma_zalloc(biozone, M_NOWAIT | M_ZERO);
 if (bp2 != ((void*)0)) {
  bp2->bio_parent = bp;
  bp2->bio_cmd = bp->bio_cmd;







  bp2->bio_flags = bp->bio_flags &
      (BIO_ORDERED | BIO_UNMAPPED | BIO_VLIST);
  bp2->bio_length = bp->bio_length;
  bp2->bio_offset = bp->bio_offset;
  bp2->bio_data = bp->bio_data;
  bp2->bio_ma = bp->bio_ma;
  bp2->bio_ma_n = bp->bio_ma_n;
  bp2->bio_ma_offset = bp->bio_ma_offset;
  bp2->bio_attribute = bp->bio_attribute;
  if (bp->bio_cmd == BIO_ZONE)
   bcopy(&bp->bio_zone, &bp2->bio_zone,
       sizeof(bp->bio_zone));

  bp2->bio_classifier1 = bp->bio_classifier1;
  bp2->bio_classifier2 = bp->bio_classifier2;



  bp->bio_children++;
 }
 return(bp2);
}
