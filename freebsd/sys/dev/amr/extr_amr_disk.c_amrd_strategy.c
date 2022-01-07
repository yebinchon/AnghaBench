
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bio {int bio_bcount; int bio_resid; int bio_flags; int bio_error; TYPE_1__* bio_disk; } ;
struct amrd_softc {int amrd_controller; } ;
struct TYPE_2__ {scalar_t__ d_drv1; } ;


 int BIO_ERROR ;
 int EINVAL ;
 int amr_submit_bio (int ,struct bio*) ;
 int biodone (struct bio*) ;

__attribute__((used)) static void
amrd_strategy(struct bio *bio)
{
    struct amrd_softc *sc = (struct amrd_softc *)bio->bio_disk->d_drv1;


    if (sc == ((void*)0)) {
 bio->bio_error = EINVAL;
 goto bad;
    }

    amr_submit_bio(sc->amrd_controller, bio);
    return;

 bad:
    bio->bio_flags |= BIO_ERROR;




    bio->bio_resid = bio->bio_bcount;
    biodone(bio);
    return;
}
