
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lance_softc {TYPE_1__* sc_ifp; } ;
struct TYPE_2__ {int if_flags; } ;


 int IFF_UP ;
 int LE_LOCK (struct lance_softc*) ;
 int LE_UNLOCK (struct lance_softc*) ;
 int lance_init_locked (struct lance_softc*) ;

void
lance_resume(struct lance_softc *sc)
{

 LE_LOCK(sc);
 if (sc->sc_ifp->if_flags & IFF_UP)
  lance_init_locked(sc);
 LE_UNLOCK(sc);
}
