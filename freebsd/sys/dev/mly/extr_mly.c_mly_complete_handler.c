
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mly_softc {int dummy; } ;


 int MLY_LOCK (struct mly_softc*) ;
 int MLY_UNLOCK (struct mly_softc*) ;
 int mly_complete (struct mly_softc*) ;

__attribute__((used)) static void
mly_complete_handler(void *context, int pending)
{
    struct mly_softc *sc = (struct mly_softc *)context;

    MLY_LOCK(sc);
    mly_complete(sc);
    MLY_UNLOCK(sc);
}
