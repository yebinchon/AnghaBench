
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mly_softc {int dummy; } ;


 int MLY_LOCK (struct mly_softc*) ;
 int MLY_UNLOCK (struct mly_softc*) ;
 int debug_called (int) ;
 int mly_done (struct mly_softc*) ;

__attribute__((used)) static void
mly_intr(void *arg)
{
    struct mly_softc *sc = (struct mly_softc *)arg;

    debug_called(2);

    MLY_LOCK(sc);
    mly_done(sc);
    MLY_UNLOCK(sc);
}
