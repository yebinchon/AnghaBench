
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct sk_if_softc {struct ifnet* sk_ifp; } ;
struct ifnet {int if_flags; } ;


 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 int SK_IF_LOCK_ASSERT (struct sk_if_softc*) ;
 int SK_YU_READ_2 (struct sk_if_softc*,int ) ;
 int SK_YU_WRITE_2 (struct sk_if_softc*,int ,int) ;
 int YUKON_MCAH1 ;
 int YUKON_MCAH2 ;
 int YUKON_MCAH3 ;
 int YUKON_MCAH4 ;
 int YUKON_RCR ;
 int YU_RCR_MUFLEN ;
 int YU_RCR_UFLEN ;
 int if_foreach_llmaddr (struct ifnet*,int ,int*) ;
 int sk_hash_maddr_yukon ;

__attribute__((used)) static void
sk_rxfilter_yukon(struct sk_if_softc *sc_if)
{
 struct ifnet *ifp;
 uint32_t hashes[2] = { 0, 0 }, mode;

 SK_IF_LOCK_ASSERT(sc_if);

 ifp = sc_if->sk_ifp;
 mode = SK_YU_READ_2(sc_if, YUKON_RCR);
 if (ifp->if_flags & IFF_PROMISC)
  mode &= ~(YU_RCR_UFLEN | YU_RCR_MUFLEN);
 else if (ifp->if_flags & IFF_ALLMULTI) {
  mode |= YU_RCR_UFLEN | YU_RCR_MUFLEN;
  hashes[0] = 0xFFFFFFFF;
  hashes[1] = 0xFFFFFFFF;
 } else {
  mode |= YU_RCR_UFLEN;
  if_foreach_llmaddr(ifp, sk_hash_maddr_yukon, hashes);
  if (hashes[0] != 0 || hashes[1] != 0)
   mode |= YU_RCR_MUFLEN;
 }

 SK_YU_WRITE_2(sc_if, YUKON_MCAH1, hashes[0] & 0xffff);
 SK_YU_WRITE_2(sc_if, YUKON_MCAH2, (hashes[0] >> 16) & 0xffff);
 SK_YU_WRITE_2(sc_if, YUKON_MCAH3, hashes[1] & 0xffff);
 SK_YU_WRITE_2(sc_if, YUKON_MCAH4, (hashes[1] >> 16) & 0xffff);
 SK_YU_WRITE_2(sc_if, YUKON_RCR, mode);
}
