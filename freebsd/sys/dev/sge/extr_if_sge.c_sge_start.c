
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sge_softc {int dummy; } ;
struct ifnet {struct sge_softc* if_softc; } ;


 int SGE_LOCK (struct sge_softc*) ;
 int SGE_UNLOCK (struct sge_softc*) ;
 int sge_start_locked (struct ifnet*) ;

__attribute__((used)) static void
sge_start(struct ifnet *ifp)
{
 struct sge_softc *sc;

 sc = ifp->if_softc;
 SGE_LOCK(sc);
 sge_start_locked(ifp);
 SGE_UNLOCK(sc);
}
