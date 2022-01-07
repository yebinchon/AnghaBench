
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int if_flags; } ;
struct are_softc {struct ifnet* are_ifp; } ;


 int CSR_HTHI ;
 int CSR_HTLO ;
 int CSR_MACCTL ;
 int CSR_READ_4 (struct are_softc*,int ) ;
 int CSR_WRITE_4 (struct are_softc*,int ,int) ;
 int IFF_PROMISC ;
 int MACCTL_HBD ;
 int MACCTL_PM ;
 int MACCTL_PR ;

__attribute__((used)) static int
are_set_filter(struct are_softc *sc)
{
 struct ifnet *ifp;
 int mchash[2];
 int macctl;

 ifp = sc->are_ifp;

 macctl = CSR_READ_4(sc, CSR_MACCTL);
 macctl &= ~(MACCTL_PR | MACCTL_PM);
 macctl |= MACCTL_HBD;

 if (ifp->if_flags & IFF_PROMISC)
  macctl |= MACCTL_PR;






 mchash[0] = mchash[1] = 0xffffffff;
 macctl |= MACCTL_PM;

 CSR_WRITE_4(sc, CSR_HTLO, mchash[0]);
 CSR_WRITE_4(sc, CSR_HTHI, mchash[1]);
 CSR_WRITE_4(sc, CSR_MACCTL, macctl);

 return 0;
}
