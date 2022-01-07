
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ifnet {int if_drv_flags; } ;
struct TYPE_2__ {int* an_tx_ring; scalar_t__ an_tx_cons; int an_tx_empty; scalar_t__ an_tx_prod; } ;
struct an_softc {TYPE_1__ an_rdata; int mpi350; scalar_t__ an_timer; struct ifnet* an_ifp; } ;


 int AN_EV_TX_EXC ;
 int AN_INC (scalar_t__,int) ;
 int AN_LOCK_ASSERT (struct an_softc*) ;
 int AN_MAX_TX_DESC ;
 int AN_TX_CMP_FID (int ) ;
 int AN_TX_RING_CNT ;
 int CSR_READ_2 (struct an_softc*,int ) ;
 int IFCOUNTER_OERRORS ;
 int IFCOUNTER_OPACKETS ;
 int IFF_DRV_OACTIVE ;
 int if_inc_counter (struct ifnet*,int ,int) ;

__attribute__((used)) static void
an_txeof(struct an_softc *sc, int status)
{
 struct ifnet *ifp;
 int id, i;

 AN_LOCK_ASSERT(sc);
 ifp = sc->an_ifp;

 sc->an_timer = 0;
 ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;

 if (!sc->mpi350) {
  id = CSR_READ_2(sc, AN_TX_CMP_FID(sc->mpi350));

  if (status & AN_EV_TX_EXC) {
   if_inc_counter(ifp, IFCOUNTER_OERRORS, 1);
  } else
   if_inc_counter(ifp, IFCOUNTER_OPACKETS, 1);

  for (i = 0; i < AN_TX_RING_CNT; i++) {
   if (id == sc->an_rdata.an_tx_ring[i]) {
    sc->an_rdata.an_tx_ring[i] = 0;
    break;
   }
  }

  AN_INC(sc->an_rdata.an_tx_cons, AN_TX_RING_CNT);
 } else {
  id = CSR_READ_2(sc, AN_TX_CMP_FID(sc->mpi350));
  if (!sc->an_rdata.an_tx_empty){
   if (status & AN_EV_TX_EXC) {
    if_inc_counter(ifp, IFCOUNTER_OERRORS, 1);
   } else
    if_inc_counter(ifp, IFCOUNTER_OPACKETS, 1);
   AN_INC(sc->an_rdata.an_tx_cons, AN_MAX_TX_DESC);
   if (sc->an_rdata.an_tx_prod ==
       sc->an_rdata.an_tx_cons)
    sc->an_rdata.an_tx_empty = 1;
  }
 }

 return;
}
