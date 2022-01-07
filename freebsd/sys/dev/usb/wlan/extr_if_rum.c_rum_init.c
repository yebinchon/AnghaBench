
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct ieee80211com {scalar_t__ ic_opmode; scalar_t__ ic_promisc; int ic_macaddr; int ic_curchan; int ic_vaps; } ;
struct rum_softc {int sc_running; scalar_t__ sc_clr_shkeys; int * sc_xfer; int sta; TYPE_1__* wme_params; struct ieee80211com sc_ic; } ;
struct ieee80211vap {int iv_myaddr; } ;
struct TYPE_5__ {int val; int reg; } ;
struct TYPE_4__ {int wmep_aifsn; int wmep_logcwmin; int wmep_logcwmax; } ;


 scalar_t__ IEEE80211_M_HOSTAP ;
 scalar_t__ IEEE80211_M_MONITOR ;
 int RT2573_DROP_ACKCTS ;
 int RT2573_DROP_CRC_ERROR ;
 int RT2573_DROP_CTL ;
 int RT2573_DROP_NOT_TO_ME ;
 int RT2573_DROP_PHY_ERROR ;
 int RT2573_DROP_TODS ;
 int RT2573_DROP_VER_ERROR ;
 int RT2573_HOST_READY ;
 int RT2573_MAC_CSR1 ;
 int RT2573_RESET_ASIC ;
 int RT2573_RESET_BBP ;
 int RT2573_STA_CSR0 ;
 int RT2573_TXRX_CSR0 ;
 size_t RUM_BULK_RD ;
 size_t RUM_BULK_WR ;
 int RUM_LOCK (struct rum_softc*) ;
 int RUM_UNLOCK (struct rum_softc*) ;
 struct ieee80211vap* TAILQ_FIRST (int *) ;
 int nitems (TYPE_2__*) ;
 int rum_bbp_init (struct rum_softc*) ;
 int rum_bbp_wakeup (struct rum_softc*) ;
 int rum_clr_shkey_regs (struct rum_softc*) ;
 TYPE_2__* rum_def_mac ;
 int rum_read (struct rum_softc*,int ) ;
 int rum_read_multi (struct rum_softc*,int ,int ,int) ;
 int rum_select_antenna (struct rum_softc*) ;
 int rum_select_band (struct rum_softc*,int ) ;
 int rum_set_chan (struct rum_softc*,int ) ;
 int rum_set_macaddr (struct rum_softc*,int ) ;
 int rum_setup_tx_list (struct rum_softc*) ;
 int rum_stop (struct rum_softc*) ;
 int rum_write (struct rum_softc*,int ,int) ;
 int usbd_transfer_start (int ) ;
 int usbd_xfer_set_stall (int ) ;

__attribute__((used)) static int
rum_init(struct rum_softc *sc)
{
 struct ieee80211com *ic = &sc->sc_ic;
 struct ieee80211vap *vap = TAILQ_FIRST(&ic->ic_vaps);
 uint32_t tmp;
 int i, ret;

 RUM_LOCK(sc);
 if (sc->sc_running) {
  ret = 0;
  goto end;
 }


 for (i = 0; i < nitems(rum_def_mac); i++)
  rum_write(sc, rum_def_mac[i].reg, rum_def_mac[i].val);


 sc->wme_params[0].wmep_aifsn = 2;
 sc->wme_params[0].wmep_logcwmin = 4;
 sc->wme_params[0].wmep_logcwmax = 10;


 rum_write(sc, RT2573_MAC_CSR1, RT2573_RESET_ASIC | RT2573_RESET_BBP);
 rum_write(sc, RT2573_MAC_CSR1, 0);


 if ((ret = rum_bbp_wakeup(sc)) != 0)
  goto end;

 if ((ret = rum_bbp_init(sc)) != 0)
  goto end;


 rum_select_band(sc, ic->ic_curchan);
 rum_select_antenna(sc);
 rum_set_chan(sc, ic->ic_curchan);


 rum_read_multi(sc, RT2573_STA_CSR0, sc->sta, sizeof sc->sta);


 if (sc->sc_clr_shkeys == 0) {
  rum_clr_shkey_regs(sc);
  sc->sc_clr_shkeys = 1;
 }

 rum_set_macaddr(sc, vap ? vap->iv_myaddr : ic->ic_macaddr);


 rum_write(sc, RT2573_MAC_CSR1, RT2573_HOST_READY);




 rum_setup_tx_list(sc);


 tmp = rum_read(sc, RT2573_TXRX_CSR0) & 0xffff;

 tmp |= RT2573_DROP_PHY_ERROR | RT2573_DROP_CRC_ERROR;
 if (ic->ic_opmode != IEEE80211_M_MONITOR) {
  tmp |= RT2573_DROP_CTL | RT2573_DROP_VER_ERROR |
         RT2573_DROP_ACKCTS;
  if (ic->ic_opmode != IEEE80211_M_HOSTAP)
   tmp |= RT2573_DROP_TODS;
  if (ic->ic_promisc == 0)
   tmp |= RT2573_DROP_NOT_TO_ME;
 }
 rum_write(sc, RT2573_TXRX_CSR0, tmp);

 sc->sc_running = 1;
 usbd_xfer_set_stall(sc->sc_xfer[RUM_BULK_WR]);
 usbd_transfer_start(sc->sc_xfer[RUM_BULK_RD]);

end: RUM_UNLOCK(sc);

 if (ret != 0)
  rum_stop(sc);

 return ret;
}
