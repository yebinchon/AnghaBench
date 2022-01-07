
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int if_drv_flags; } ;
struct are_softc {int are_stat_callout; struct ifnet* are_ifp; } ;


 int ARE_LOCK_ASSERT (struct are_softc*) ;
 int CSR_INTEN ;
 int CSR_MACCTL ;
 int CSR_OPMODE ;
 int CSR_READ_4 (struct are_softc*,int ) ;
 int CSR_RXLIST ;
 int CSR_TXLIST ;
 int CSR_WRITE_4 (struct are_softc*,int ,int) ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int MACCTL_RE ;
 int MACCTL_TE ;
 int callout_stop (int *) ;

__attribute__((used)) static void
are_stop(struct are_softc *sc)
{
 struct ifnet *ifp;

 ARE_LOCK_ASSERT(sc);

 ifp = sc->are_ifp;
 ifp->if_drv_flags &= ~(IFF_DRV_RUNNING | IFF_DRV_OACTIVE);
 callout_stop(&sc->are_stat_callout);


 CSR_WRITE_4(sc, CSR_INTEN, 0);


 CSR_WRITE_4(sc, CSR_OPMODE, 0);
 CSR_WRITE_4(sc, CSR_RXLIST, 0);
 CSR_WRITE_4(sc, CSR_TXLIST, 0);
 CSR_WRITE_4(sc, CSR_MACCTL,
     CSR_READ_4(sc, CSR_MACCTL) & ~(MACCTL_TE | MACCTL_RE));

}
