
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct ath_softc {int sc_eecc; int sc_eerd; int sc_ledon; int sc_ledidle; int sc_txintrperiod; int sc_monpass; int sc_tdmadbaprep; int sc_tdmaswbaprep; int sc_tdmaguard; int sc_tdmabintval; int sc_cabq_enable; int sc_txq_node_maxdepth; int sc_txq_mcastq_maxdepth; int sc_txq_data_minfree; int sc_delim_min_pad; int sc_rts_aggr_limit; int sc_aggr_limit; int sc_tid_hwq_hi; int sc_tid_hwq_lo; int sc_hwq_limit_aggr; int sc_hwq_limit_nonaggr; int sc_led_pwr_pin; int sc_led_net_pin; int sc_ktrdebug; int sc_debug; struct ath_hal* sc_ah; int sc_dev; } ;
struct ath_hal {int dummy; } ;


 int ATH_TXINTR_PERIOD ;
 int CTLFLAG_RD ;
 int CTLFLAG_RW ;
 int CTLTYPE_INT ;
 int HAL_RXERR_DECRYPT ;
 int HAL_RXERR_MIC ;
 int OID_AUTO ;
 int SYSCTL_ADD_INT (struct sysctl_ctx_list*,int ,int ,char*,int,int *,int ,char*) ;
 int SYSCTL_ADD_PROC (struct sysctl_ctx_list*,int ,int ,char*,int,struct ath_softc*,int ,int ,char*,char*) ;
 int SYSCTL_ADD_QUAD (struct sysctl_ctx_list*,int ,int ,char*,int,int *,char*) ;
 int SYSCTL_ADD_UINT (struct sysctl_ctx_list*,int ,int ,char*,int,int*,int ,char*) ;
 int SYSCTL_CHILDREN (struct sysctl_oid*) ;
 scalar_t__ ath_hal_hasdiversity (struct ath_hal*) ;
 scalar_t__ ath_hal_hasintmit (struct ath_hal*) ;
 scalar_t__ ath_hal_hasrfsilent (struct ath_hal*) ;
 scalar_t__ ath_hal_hastpc (struct ath_hal*) ;
 int ath_hal_macversion (struct ath_hal*) ;
 int ath_sysctl_acktimeout ;
 int ath_sysctl_alq_attach (struct ath_softc*) ;
 int ath_sysctl_ctstimeout ;
 int ath_sysctl_diag ;
 int ath_sysctl_diversity ;
 int ath_sysctl_forcebstuck ;
 int ath_sysctl_hangcheck ;
 int ath_sysctl_hardled ;
 int ath_sysctl_intmit ;
 int ath_sysctl_ledpin ;
 int ath_sysctl_rfkill ;
 int ath_sysctl_rfsilent ;
 int ath_sysctl_rxantenna ;
 int ath_sysctl_setcca ;
 int ath_sysctl_slottime ;
 int ath_sysctl_softled ;
 int ath_sysctl_tpack ;
 int ath_sysctl_tpc ;
 int ath_sysctl_tpcts ;
 int ath_sysctl_tpscale ;
 int ath_sysctl_txagg ;
 int ath_sysctl_txantenna ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 struct sysctl_oid* device_get_sysctl_tree (int ) ;

void
ath_sysctlattach(struct ath_softc *sc)
{
 struct sysctl_ctx_list *ctx = device_get_sysctl_ctx(sc->sc_dev);
 struct sysctl_oid *tree = device_get_sysctl_tree(sc->sc_dev);
 struct ath_hal *ah = sc->sc_ah;

 SYSCTL_ADD_UINT(ctx, SYSCTL_CHILDREN(tree), OID_AUTO,
  "countrycode", CTLFLAG_RD, &sc->sc_eecc, 0,
  "EEPROM country code");
 SYSCTL_ADD_UINT(ctx, SYSCTL_CHILDREN(tree), OID_AUTO,
  "regdomain", CTLFLAG_RD, &sc->sc_eerd, 0,
  "EEPROM regdomain code");
 SYSCTL_ADD_PROC(ctx, SYSCTL_CHILDREN(tree), OID_AUTO,
  "slottime", CTLTYPE_INT | CTLFLAG_RW, sc, 0,
  ath_sysctl_slottime, "I", "802.11 slot time (us)");
 SYSCTL_ADD_PROC(ctx, SYSCTL_CHILDREN(tree), OID_AUTO,
  "acktimeout", CTLTYPE_INT | CTLFLAG_RW, sc, 0,
  ath_sysctl_acktimeout, "I", "802.11 ACK timeout (us)");
 SYSCTL_ADD_PROC(ctx, SYSCTL_CHILDREN(tree), OID_AUTO,
  "ctstimeout", CTLTYPE_INT | CTLFLAG_RW, sc, 0,
  ath_sysctl_ctstimeout, "I", "802.11 CTS timeout (us)");

 SYSCTL_ADD_PROC(ctx, SYSCTL_CHILDREN(tree), OID_AUTO,
  "softled", CTLTYPE_INT | CTLFLAG_RW, sc, 0,
  ath_sysctl_softled, "I", "enable/disable software LED support");
 SYSCTL_ADD_PROC(ctx, SYSCTL_CHILDREN(tree), OID_AUTO,
  "ledpin", CTLTYPE_INT | CTLFLAG_RW, sc, 0,
  ath_sysctl_ledpin, "I", "GPIO pin connected to LED");
 SYSCTL_ADD_UINT(ctx, SYSCTL_CHILDREN(tree), OID_AUTO,
  "ledon", CTLFLAG_RW, &sc->sc_ledon, 0,
  "setting to turn LED on");
 SYSCTL_ADD_UINT(ctx, SYSCTL_CHILDREN(tree), OID_AUTO,
  "ledidle", CTLFLAG_RW, &sc->sc_ledidle, 0,
  "idle time for inactivity LED (ticks)");

 SYSCTL_ADD_PROC(ctx, SYSCTL_CHILDREN(tree), OID_AUTO,
  "hardled", CTLTYPE_INT | CTLFLAG_RW, sc, 0,
  ath_sysctl_hardled, "I", "enable/disable hardware LED support");

 SYSCTL_ADD_INT(ctx, SYSCTL_CHILDREN(tree), OID_AUTO,
  "led_net_pin", CTLFLAG_RW, &sc->sc_led_net_pin, 0,
  "MAC Network LED pin, or -1 to disable");
 SYSCTL_ADD_INT(ctx, SYSCTL_CHILDREN(tree), OID_AUTO,
  "led_pwr_pin", CTLFLAG_RW, &sc->sc_led_pwr_pin, 0,
  "MAC Power LED pin, or -1 to disable");

 SYSCTL_ADD_PROC(ctx, SYSCTL_CHILDREN(tree), OID_AUTO,
  "txantenna", CTLTYPE_INT | CTLFLAG_RW, sc, 0,
  ath_sysctl_txantenna, "I", "antenna switch");
 SYSCTL_ADD_PROC(ctx, SYSCTL_CHILDREN(tree), OID_AUTO,
  "rxantenna", CTLTYPE_INT | CTLFLAG_RW, sc, 0,
  ath_sysctl_rxantenna, "I", "default/rx antenna");
 if (ath_hal_hasdiversity(ah))
  SYSCTL_ADD_PROC(ctx, SYSCTL_CHILDREN(tree), OID_AUTO,
   "diversity", CTLTYPE_INT | CTLFLAG_RW, sc, 0,
   ath_sysctl_diversity, "I", "antenna diversity");
 sc->sc_txintrperiod = ATH_TXINTR_PERIOD;
 SYSCTL_ADD_UINT(ctx, SYSCTL_CHILDREN(tree), OID_AUTO,
  "txintrperiod", CTLFLAG_RW, &sc->sc_txintrperiod, 0,
  "tx descriptor batching");
 SYSCTL_ADD_PROC(ctx, SYSCTL_CHILDREN(tree), OID_AUTO,
  "diag", CTLTYPE_INT | CTLFLAG_RW, sc, 0,
  ath_sysctl_diag, "I", "h/w diagnostic control");
 SYSCTL_ADD_PROC(ctx, SYSCTL_CHILDREN(tree), OID_AUTO,
  "tpscale", CTLTYPE_INT | CTLFLAG_RW, sc, 0,
  ath_sysctl_tpscale, "I", "tx power scaling");
 if (ath_hal_hastpc(ah)) {
  SYSCTL_ADD_PROC(ctx, SYSCTL_CHILDREN(tree), OID_AUTO,
   "tpc", CTLTYPE_INT | CTLFLAG_RW, sc, 0,
   ath_sysctl_tpc, "I", "enable/disable per-packet TPC");
  SYSCTL_ADD_PROC(ctx, SYSCTL_CHILDREN(tree), OID_AUTO,
   "tpack", CTLTYPE_INT | CTLFLAG_RW, sc, 0,
   ath_sysctl_tpack, "I", "tx power for ack frames");
  SYSCTL_ADD_PROC(ctx, SYSCTL_CHILDREN(tree), OID_AUTO,
   "tpcts", CTLTYPE_INT | CTLFLAG_RW, sc, 0,
   ath_sysctl_tpcts, "I", "tx power for cts frames");
 }
 if (ath_hal_hasrfsilent(ah)) {
  SYSCTL_ADD_PROC(ctx, SYSCTL_CHILDREN(tree), OID_AUTO,
   "rfsilent", CTLTYPE_INT | CTLFLAG_RW, sc, 0,
   ath_sysctl_rfsilent, "I", "h/w RF silent config");
  SYSCTL_ADD_PROC(ctx, SYSCTL_CHILDREN(tree), OID_AUTO,
   "rfkill", CTLTYPE_INT | CTLFLAG_RW, sc, 0,
   ath_sysctl_rfkill, "I", "enable/disable RF kill switch");
 }

 SYSCTL_ADD_PROC(ctx, SYSCTL_CHILDREN(tree), OID_AUTO,
  "txagg", CTLTYPE_INT | CTLFLAG_RW, sc, 0,
  ath_sysctl_txagg, "I", "");

 SYSCTL_ADD_PROC(ctx, SYSCTL_CHILDREN(tree), OID_AUTO,
  "forcebstuck", CTLTYPE_INT | CTLFLAG_RW, sc, 0,
  ath_sysctl_forcebstuck, "I", "");

 SYSCTL_ADD_PROC(ctx, SYSCTL_CHILDREN(tree), OID_AUTO,
  "hangcheck", CTLTYPE_INT | CTLFLAG_RW, sc, 0,
  ath_sysctl_hangcheck, "I", "");

 if (ath_hal_hasintmit(ah)) {
  SYSCTL_ADD_PROC(ctx, SYSCTL_CHILDREN(tree), OID_AUTO,
   "intmit", CTLTYPE_INT | CTLFLAG_RW, sc, 0,
   ath_sysctl_intmit, "I", "interference mitigation");
 }
 sc->sc_monpass = HAL_RXERR_DECRYPT | HAL_RXERR_MIC;
 SYSCTL_ADD_UINT(ctx, SYSCTL_CHILDREN(tree), OID_AUTO,
  "monpass", CTLFLAG_RW, &sc->sc_monpass, 0,
  "mask of error frames to pass when monitoring");

 SYSCTL_ADD_INT(ctx, SYSCTL_CHILDREN(tree), OID_AUTO,
  "hwq_limit_nonaggr", CTLFLAG_RW, &sc->sc_hwq_limit_nonaggr, 0,
  "Hardware non-AMPDU queue depth before software-queuing TX frames");
 SYSCTL_ADD_INT(ctx, SYSCTL_CHILDREN(tree), OID_AUTO,
  "hwq_limit_aggr", CTLFLAG_RW, &sc->sc_hwq_limit_aggr, 0,
  "Hardware AMPDU queue depth before software-queuing TX frames");
 SYSCTL_ADD_INT(ctx, SYSCTL_CHILDREN(tree), OID_AUTO,
  "tid_hwq_lo", CTLFLAG_RW, &sc->sc_tid_hwq_lo, 0,
  "");
 SYSCTL_ADD_INT(ctx, SYSCTL_CHILDREN(tree), OID_AUTO,
  "tid_hwq_hi", CTLFLAG_RW, &sc->sc_tid_hwq_hi, 0,
  "");


 SYSCTL_ADD_INT(ctx, SYSCTL_CHILDREN(tree), OID_AUTO,
  "aggr_limit", CTLFLAG_RW, &sc->sc_aggr_limit, 0,
  "Maximum A-MPDU size, or 0 for 'default'");
 SYSCTL_ADD_INT(ctx, SYSCTL_CHILDREN(tree), OID_AUTO,
  "rts_aggr_limit", CTLFLAG_RW, &sc->sc_rts_aggr_limit, 0,
  "Maximum A-MPDU size for RTS-protected frames, or '0' "
  "for default");
 SYSCTL_ADD_INT(ctx, SYSCTL_CHILDREN(tree), OID_AUTO,
  "delim_min_pad", CTLFLAG_RW, &sc->sc_delim_min_pad, 0,
  "Enforce a minimum number of delimiters per A-MPDU "
  " sub-frame");

 SYSCTL_ADD_INT(ctx, SYSCTL_CHILDREN(tree), OID_AUTO,
  "txq_data_minfree", CTLFLAG_RW, &sc->sc_txq_data_minfree,
  0, "Minimum free buffers before adding a data frame"
  " to the TX queue");
 SYSCTL_ADD_INT(ctx, SYSCTL_CHILDREN(tree), OID_AUTO,
  "txq_mcastq_maxdepth", CTLFLAG_RW,
  &sc->sc_txq_mcastq_maxdepth, 0,
  "Maximum buffer depth for multicast/broadcast frames");
 SYSCTL_ADD_INT(ctx, SYSCTL_CHILDREN(tree), OID_AUTO,
  "txq_node_maxdepth", CTLFLAG_RW,
  &sc->sc_txq_node_maxdepth, 0,
  "Maximum buffer depth for a single node");
}
