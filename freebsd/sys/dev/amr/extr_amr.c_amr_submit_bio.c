
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio {int dummy; } ;
struct amr_softc {int amr_list_lock; } ;


 int amr_enqueue_bio (struct amr_softc*,struct bio*) ;
 int amr_startio (struct amr_softc*) ;
 int debug_called (int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

int
amr_submit_bio(struct amr_softc *sc, struct bio *bio)
{
    debug_called(2);

    mtx_lock(&sc->amr_list_lock);
    amr_enqueue_bio(sc, bio);
    amr_startio(sc);
    mtx_unlock(&sc->amr_list_lock);
    return(0);
}
