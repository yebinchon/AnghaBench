
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct my_softc {struct ifnet* my_ifp; } ;
struct ifnet {int if_flags; } ;


 int CSR_READ_4 (struct my_softc*,int ) ;
 int CSR_WRITE_4 (struct my_softc*,int ,int) ;
 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 int MY_AM ;
 int MY_LOCK_ASSERT (struct my_softc*) ;
 int MY_MAR0 ;
 int MY_MAR1 ;
 int MY_TCRRCR ;
 scalar_t__ if_foreach_llmaddr (struct ifnet*,int ,int*) ;
 int my_hash_maddr ;

__attribute__((used)) static void
my_setmulti(struct my_softc * sc)
{
 struct ifnet *ifp;
 u_int32_t hashes[2] = {0, 0};
 u_int32_t rxfilt;

 MY_LOCK_ASSERT(sc);

 ifp = sc->my_ifp;

 rxfilt = CSR_READ_4(sc, MY_TCRRCR);

 if (ifp->if_flags & IFF_ALLMULTI || ifp->if_flags & IFF_PROMISC) {
  rxfilt |= MY_AM;
  CSR_WRITE_4(sc, MY_TCRRCR, rxfilt);
  CSR_WRITE_4(sc, MY_MAR0, 0xFFFFFFFF);
  CSR_WRITE_4(sc, MY_MAR1, 0xFFFFFFFF);

  return;
 }

 CSR_WRITE_4(sc, MY_MAR0, 0);
 CSR_WRITE_4(sc, MY_MAR1, 0);


 if (if_foreach_llmaddr(ifp, my_hash_maddr, hashes) > 0)
  rxfilt |= MY_AM;
 else
  rxfilt &= ~MY_AM;
 CSR_WRITE_4(sc, MY_MAR0, hashes[0]);
 CSR_WRITE_4(sc, MY_MAR1, hashes[1]);
 CSR_WRITE_4(sc, MY_TCRRCR, rxfilt);
}
