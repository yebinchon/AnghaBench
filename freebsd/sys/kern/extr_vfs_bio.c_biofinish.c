
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devstat {int dummy; } ;
struct bio {int bio_error; int bio_flags; } ;


 int BIO_ERROR ;
 int biodone (struct bio*) ;
 int devstat_end_transaction_bio (struct devstat*,struct bio*) ;

void
biofinish(struct bio *bp, struct devstat *stat, int error)
{

 if (error) {
  bp->bio_error = error;
  bp->bio_flags |= BIO_ERROR;
 }
 if (stat != ((void*)0))
  devstat_end_transaction_bio(stat, bp);
 biodone(bp);
}
