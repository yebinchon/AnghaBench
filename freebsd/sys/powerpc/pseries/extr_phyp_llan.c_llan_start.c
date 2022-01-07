
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct llan_softc {int io_lock; } ;
struct ifnet {struct llan_softc* if_softc; } ;


 int llan_start_locked (struct ifnet*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
llan_start(struct ifnet *ifp)
{
 struct llan_softc *sc = ifp->if_softc;

 mtx_lock(&sc->io_lock);
 llan_start_locked(ifp);
 mtx_unlock(&sc->io_lock);
}
