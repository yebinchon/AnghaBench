
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twe_softc {int twe_io_lock; } ;
struct twe_request {int dummy; } ;


 int PRIBIO ;
 int TWE_MAX_RESET_TRIES ;
 int hz ;
 int mtx_sleep (struct twe_softc*,int *,int ,char*,int ) ;
 struct twe_request* twe_dequeue_busy (struct twe_softc*) ;
 int twe_disable_interrupts (struct twe_softc*) ;
 int twe_enable_interrupts (struct twe_softc*) ;
 int twe_enqueue_ready (struct twe_request*) ;
 int twe_printf (struct twe_softc*,char*,...) ;
 int twe_soft_reset (struct twe_softc*) ;
 int twe_startio (struct twe_softc*) ;

__attribute__((used)) static void
twe_reset(struct twe_softc *sc)
{
    struct twe_request *tr;
    int i;




    mtx_sleep(sc, &sc->twe_io_lock, PRIBIO, "twereset", hz);





    twe_printf(sc, "controller reset in progress...\n");
    twe_disable_interrupts(sc);




    for (i = 0; i < TWE_MAX_RESET_TRIES; i++) {

 if (i > 0)
     twe_printf(sc, "reset %d failed, trying again\n", i);

 if (!twe_soft_reset(sc))
     break;
    }

    if (i >= TWE_MAX_RESET_TRIES) {
 twe_printf(sc, "can't reset controller, giving up\n");
 goto out;
    }




    i = 0;
    while ((tr = twe_dequeue_busy(sc)) != ((void*)0)) {
 twe_enqueue_ready(tr);
 i++;
    }




    twe_startio(sc);
    twe_printf(sc, "controller reset done, %d commands restarted\n", i);

out:
    twe_enable_interrupts(sc);
}
