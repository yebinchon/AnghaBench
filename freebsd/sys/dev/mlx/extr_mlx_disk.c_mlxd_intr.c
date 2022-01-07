
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio {int bio_flags; scalar_t__ bio_resid; int bio_error; } ;


 int BIO_ERROR ;
 int EIO ;
 int biodone (struct bio*) ;
 int debug_called (int) ;

void
mlxd_intr(struct bio *bp)
{

    debug_called(1);

    if (bp->bio_flags & BIO_ERROR)
 bp->bio_error = EIO;
    else
 bp->bio_resid = 0;

    biodone(bp);
}
