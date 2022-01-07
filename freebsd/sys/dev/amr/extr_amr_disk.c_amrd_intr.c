
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio {int bio_flags; scalar_t__ bio_resid; int bio_error; } ;


 int BIO_ERROR ;
 int EIO ;
 int biodone (struct bio*) ;
 int debug (int,char*) ;
 int debug_called (int) ;

void
amrd_intr(void *data)
{
    struct bio *bio = (struct bio *)data;

    debug_called(2);

    if (bio->bio_flags & BIO_ERROR) {
 bio->bio_error = EIO;
 debug(1, "i/o error\n");
    } else {
 bio->bio_resid = 0;
    }

    biodone(bio);
}
