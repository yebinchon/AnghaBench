
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ether {int dummy; } ;
struct ifnet {int dummy; } ;
struct cue_softc {int dummy; } ;


 int CUE_LOCK_ASSERT (struct cue_softc*,int ) ;
 int CUE_RX_FRAMEERR ;
 int CUE_TX_EXCESSCOLL ;
 int CUE_TX_MULTICOLL ;
 int CUE_TX_SINGLECOLL ;
 int IFCOUNTER_COLLISIONS ;
 int IFCOUNTER_IERRORS ;
 int MA_OWNED ;
 int cue_csr_read_2 (struct cue_softc*,int ) ;
 int if_inc_counter (struct ifnet*,int ,int) ;
 struct ifnet* uether_getifp (struct usb_ether*) ;
 struct cue_softc* uether_getsc (struct usb_ether*) ;

__attribute__((used)) static void
cue_tick(struct usb_ether *ue)
{
 struct cue_softc *sc = uether_getsc(ue);
 struct ifnet *ifp = uether_getifp(ue);

 CUE_LOCK_ASSERT(sc, MA_OWNED);

 if_inc_counter(ifp, IFCOUNTER_COLLISIONS, cue_csr_read_2(sc, CUE_TX_SINGLECOLL));
 if_inc_counter(ifp, IFCOUNTER_COLLISIONS, cue_csr_read_2(sc, CUE_TX_MULTICOLL));
 if_inc_counter(ifp, IFCOUNTER_COLLISIONS, cue_csr_read_2(sc, CUE_TX_EXCESSCOLL));

 if (cue_csr_read_2(sc, CUE_RX_FRAMEERR))
  if_inc_counter(ifp, IFCOUNTER_IERRORS, 1);
}
