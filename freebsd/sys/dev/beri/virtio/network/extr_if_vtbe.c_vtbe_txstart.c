
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtbe_softc {int dummy; } ;
struct ifnet {struct vtbe_softc* if_softc; } ;


 int VTBE_LOCK (struct vtbe_softc*) ;
 int VTBE_UNLOCK (struct vtbe_softc*) ;
 int vtbe_txstart_locked (struct vtbe_softc*) ;

__attribute__((used)) static void
vtbe_txstart(struct ifnet *ifp)
{
 struct vtbe_softc *sc = ifp->if_softc;

 VTBE_LOCK(sc);
 vtbe_txstart_locked(sc);
 VTBE_UNLOCK(sc);
}
