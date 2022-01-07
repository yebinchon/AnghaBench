
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct usb_ether {int dummy; } ;
struct ifnet {int if_flags; int if_broadcastaddr; } ;
struct cue_softc {int dummy; } ;


 int CUE_CMD_WRITESRAM ;
 int CUE_LOCK_ASSERT (struct cue_softc*,int ) ;
 int CUE_MCAST_TABLE_ADDR ;
 int IFF_ALLMULTI ;
 int IFF_BROADCAST ;
 int IFF_PROMISC ;
 int MA_OWNED ;
 int cue_hash_maddr ;
 int cue_mchash (int ) ;
 int cue_mem (struct cue_softc*,int ,int ,int**,int) ;
 int if_foreach_llmaddr (struct ifnet*,int ,int*) ;
 struct ifnet* uether_getifp (struct usb_ether*) ;
 struct cue_softc* uether_getsc (struct usb_ether*) ;

__attribute__((used)) static void
cue_setmulti(struct usb_ether *ue)
{
 struct cue_softc *sc = uether_getsc(ue);
 struct ifnet *ifp = uether_getifp(ue);
 uint32_t h, i;
 uint8_t hashtbl[8] = { 0, 0, 0, 0, 0, 0, 0, 0 };

 CUE_LOCK_ASSERT(sc, MA_OWNED);

 if (ifp->if_flags & IFF_ALLMULTI || ifp->if_flags & IFF_PROMISC) {
  for (i = 0; i < 8; i++)
   hashtbl[i] = 0xff;
  cue_mem(sc, CUE_CMD_WRITESRAM, CUE_MCAST_TABLE_ADDR,
      &hashtbl, 8);
  return;
 }


 if_foreach_llmaddr(ifp, cue_hash_maddr, hashtbl);





 if (ifp->if_flags & IFF_BROADCAST) {
  h = cue_mchash(ifp->if_broadcastaddr);
  hashtbl[h >> 3] |= 1 << (h & 0x7);
 }

 cue_mem(sc, CUE_CMD_WRITESRAM, CUE_MCAST_TABLE_ADDR, &hashtbl, 8);
}
