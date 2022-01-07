
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int * if_softc; } ;
typedef int ae_softc_t ;


 int AE_LOCK (int *) ;
 int AE_UNLOCK (int *) ;
 int ae_start_locked (struct ifnet*) ;

__attribute__((used)) static void
ae_start(struct ifnet *ifp)
{
 ae_softc_t *sc;

 sc = ifp->if_softc;
 AE_LOCK(sc);
 ae_start_locked(ifp);
 AE_UNLOCK(sc);
}
