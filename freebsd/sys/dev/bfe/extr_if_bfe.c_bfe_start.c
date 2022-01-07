
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {scalar_t__ if_softc; } ;
struct bfe_softc {int dummy; } ;


 int BFE_LOCK (struct bfe_softc*) ;
 int BFE_UNLOCK (struct bfe_softc*) ;
 int bfe_start_locked (struct ifnet*) ;

__attribute__((used)) static void
bfe_start(struct ifnet *ifp)
{
 BFE_LOCK((struct bfe_softc *)ifp->if_softc);
 bfe_start_locked(ifp);
 BFE_UNLOCK((struct bfe_softc *)ifp->if_softc);
}
