
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct twed_softc {int twed_controller; TYPE_1__* twed_drive; } ;
struct bio {int bio_flags; int bio_error; int * bio_driver1; TYPE_2__* bio_disk; } ;
struct TYPE_4__ {struct twed_softc* d_drv1; } ;
struct TYPE_3__ {int * td_disk; int td_twe_unit; } ;


 int BIO_ERROR ;
 int EINVAL ;
 int TWED_BIO_IN ;
 int TWED_BIO_OUT ;
 int TWE_IO_LOCK (int ) ;
 int TWE_IO_UNLOCK (int ) ;
 int biodone (struct bio*) ;
 int debug_called (int) ;
 int printf (char*) ;
 int twe_enqueue_bio (int ,struct bio*) ;
 int twe_startio (int ) ;

__attribute__((used)) static void
twed_strategy(struct bio *bp)
{
    struct twed_softc *sc = bp->bio_disk->d_drv1;

    debug_called(4);

    bp->bio_driver1 = &sc->twed_drive->td_twe_unit;
    TWED_BIO_IN;


    if (sc == ((void*)0) || sc->twed_drive->td_disk == ((void*)0)) {
 bp->bio_error = EINVAL;
 bp->bio_flags |= BIO_ERROR;
 printf("twe: bio for invalid disk!\n");
 biodone(bp);
 TWED_BIO_OUT;
 return;
    }


    TWE_IO_LOCK(sc->twed_controller);
    twe_enqueue_bio(sc->twed_controller, bp);


    twe_startio(sc->twed_controller);
    TWE_IO_UNLOCK(sc->twed_controller);
    return;
}
