
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtbe_softc {struct ifnet* ifp; } ;
struct ifnet {int dummy; } ;


 int VTBE_ASSERT_LOCKED (struct vtbe_softc*) ;

__attribute__((used)) static void
vtbe_txfinish_locked(struct vtbe_softc *sc)
{
 struct ifnet *ifp;

 VTBE_ASSERT_LOCKED(sc);

 ifp = sc->ifp;
}
