
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct mii_data {int mii_media_active; } ;
struct ifnet {int if_snd; } ;
struct TYPE_2__ {scalar_t__ dc_tx_cnt; } ;
struct dc_softc {int dc_flags; scalar_t__ dc_link; int dc_stat_ch; TYPE_1__ dc_cdata; int dc_miibus; struct ifnet* dc_ifp; } ;


 int CSR_READ_4 (struct dc_softc*,int ) ;
 int DC_10BTSTAT ;
 int DC_21143_NWAY ;
 scalar_t__ DC_HAS_BROKEN_RXSTATE (struct dc_softc*) ;
 int DC_ISR ;
 int DC_ISR_RX_STATE ;
 int DC_LOCK_ASSERT (struct dc_softc*) ;
 int DC_REDUCED_MII_POLL ;
 int DC_RXSTATE_WAIT ;
 int DC_TSTAT_LS10 ;
 int DC_TSTAT_LS100 ;
 int DC_TX_USE_TX_INTR ;
 scalar_t__ IFM_100_TX ;
 scalar_t__ IFM_10_T ;
 scalar_t__ IFM_SUBTYPE (int ) ;
 int IFQ_DRV_IS_EMPTY (int *) ;
 int callout_reset (int *,int,void (*) (void*),struct dc_softc*) ;
 int dc_start_locked (struct ifnet*) ;
 int dc_txeof (struct dc_softc*) ;
 struct mii_data* device_get_softc (int ) ;
 int hz ;
 int mii_mediachg (struct mii_data*) ;
 int mii_tick (struct mii_data*) ;

__attribute__((used)) static void
dc_tick(void *xsc)
{
 struct dc_softc *sc;
 struct mii_data *mii;
 struct ifnet *ifp;
 uint32_t r;

 sc = xsc;
 DC_LOCK_ASSERT(sc);
 ifp = sc->dc_ifp;
 mii = device_get_softc(sc->dc_miibus);





 if (sc->dc_flags & DC_TX_USE_TX_INTR)
  dc_txeof(sc);

 if (sc->dc_flags & DC_REDUCED_MII_POLL) {
  if (sc->dc_flags & DC_21143_NWAY) {
   r = CSR_READ_4(sc, DC_10BTSTAT);
   if (IFM_SUBTYPE(mii->mii_media_active) ==
       IFM_100_TX && (r & DC_TSTAT_LS100)) {
    sc->dc_link = 0;
    mii_mediachg(mii);
   }
   if (IFM_SUBTYPE(mii->mii_media_active) ==
       IFM_10_T && (r & DC_TSTAT_LS10)) {
    sc->dc_link = 0;
    mii_mediachg(mii);
   }
   if (sc->dc_link == 0)
    mii_tick(mii);
  } else {




   if ((DC_HAS_BROKEN_RXSTATE(sc) || (CSR_READ_4(sc,
       DC_ISR) & DC_ISR_RX_STATE) == DC_RXSTATE_WAIT) &&
       sc->dc_cdata.dc_tx_cnt == 0)
    mii_tick(mii);
  }
 } else
  mii_tick(mii);
 if (sc->dc_link != 0 && !IFQ_DRV_IS_EMPTY(&ifp->if_snd))
  dc_start_locked(ifp);

 if (sc->dc_flags & DC_21143_NWAY && !sc->dc_link)
  callout_reset(&sc->dc_stat_ch, hz/10, dc_tick, sc);
 else
  callout_reset(&sc->dc_stat_ch, hz, dc_tick, sc);
}
