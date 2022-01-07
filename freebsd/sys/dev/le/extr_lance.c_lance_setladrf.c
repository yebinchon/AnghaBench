
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct lance_softc {int sc_flags; struct ifnet* sc_ifp; } ;
struct lance_hash_maddr_ctx {int* member_1; struct lance_softc* member_0; } ;
struct ifnet {int if_flags; } ;


 int IFF_PROMISC ;
 int LE_ALLMULTI ;
 int if_foreach_llmaddr (struct ifnet*,int ,struct lance_hash_maddr_ctx*) ;
 int lance_hash_maddr ;

void
lance_setladrf(struct lance_softc *sc, uint16_t *af)
{
 struct ifnet *ifp = sc->sc_ifp;
 struct lance_hash_maddr_ctx ctx = { sc, af };
 if (ifp->if_flags & IFF_PROMISC || sc->sc_flags & LE_ALLMULTI) {
  af[0] = af[1] = af[2] = af[3] = 0xffff;
  return;
 }

 af[0] = af[1] = af[2] = af[3] = 0x0000;
 if_foreach_llmaddr(ifp, lance_hash_maddr, &ctx);
}
