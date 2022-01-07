
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf10bmac_softc {int dummy; } ;
struct ifnet {struct nf10bmac_softc* if_softc; } ;


 int NF10BMAC_LOCK (struct nf10bmac_softc*) ;
 int NF10BMAC_UNLOCK (struct nf10bmac_softc*) ;
 int nf10bmac_start_locked (struct ifnet*) ;

__attribute__((used)) static void
nf10bmac_start(struct ifnet *ifp)
{
 struct nf10bmac_softc *sc;

 sc = ifp->if_softc;
 NF10BMAC_LOCK(sc);
 nf10bmac_start_locked(ifp);
 NF10BMAC_UNLOCK(sc);
}
