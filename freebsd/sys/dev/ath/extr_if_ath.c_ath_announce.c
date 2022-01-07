
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath_txq {int axq_qnum; } ;
struct ath_softc {int sc_dev; scalar_t__ sc_mcastkey; int sc_bhalq; TYPE_1__* sc_cabq; struct ath_txq** sc_ac2q; struct ath_hal* sc_ah; } ;
struct ath_hal {int ah_phyRev; int ah_analog5GhzRev; int ah_analog2GhzRev; int ah_macRev; int ah_macVersion; } ;
struct TYPE_2__ {int axq_qnum; } ;


 scalar_t__ ATH_RXBUF ;
 scalar_t__ ATH_TXBUF ;
 int WME_AC_VO ;
 int ath_hal_mac_name (struct ath_hal*) ;
 int ath_hal_rf_name (struct ath_hal*) ;
 scalar_t__ ath_rxbuf ;
 scalar_t__ ath_txbuf ;
 scalar_t__ bootverbose ;
 int device_printf (int ,char*,...) ;
 int * ieee80211_wme_acnames ;

__attribute__((used)) static void
ath_announce(struct ath_softc *sc)
{
 struct ath_hal *ah = sc->sc_ah;

 device_printf(sc->sc_dev, "%s mac %d.%d RF%s phy %d.%d\n",
  ath_hal_mac_name(ah), ah->ah_macVersion, ah->ah_macRev,
  ath_hal_rf_name(ah), ah->ah_phyRev >> 4, ah->ah_phyRev & 0xf);
 device_printf(sc->sc_dev, "2GHz radio: 0x%.4x; 5GHz radio: 0x%.4x\n",
  ah->ah_analog2GhzRev, ah->ah_analog5GhzRev);
 if (bootverbose) {
  int i;
  for (i = 0; i <= WME_AC_VO; i++) {
   struct ath_txq *txq = sc->sc_ac2q[i];
   device_printf(sc->sc_dev,
       "Use hw queue %u for %s traffic\n",
       txq->axq_qnum, ieee80211_wme_acnames[i]);
  }
  device_printf(sc->sc_dev, "Use hw queue %u for CAB traffic\n",
      sc->sc_cabq->axq_qnum);
  device_printf(sc->sc_dev, "Use hw queue %u for beacons\n",
      sc->sc_bhalq);
 }
 if (ath_rxbuf != ATH_RXBUF)
  device_printf(sc->sc_dev, "using %u rx buffers\n", ath_rxbuf);
 if (ath_txbuf != ATH_TXBUF)
  device_printf(sc->sc_dev, "using %u tx buffers\n", ath_txbuf);
 if (sc->sc_mcastkey && bootverbose)
  device_printf(sc->sc_dev, "using multicast key search\n");
}
