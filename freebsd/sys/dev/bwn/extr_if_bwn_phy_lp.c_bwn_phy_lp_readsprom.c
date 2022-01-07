
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211com {int ic_curchan; } ;
struct bwn_softc {int sc_dev; struct ieee80211com sc_ic; } ;
struct bwn_phy_lp {int plp_rssigs; int plp_rssivc; int plp_rssivf; int plp_rxpwroffset; int plp_bxarch; int plp_txisoband_h; int plp_txisoband_m; int plp_txisoband_l; } ;
struct TYPE_2__ {struct bwn_phy_lp phy_lp; } ;
struct bwn_mac {struct bwn_softc* mac_sc; TYPE_1__ mac_phy; } ;


 int BHND_NVAR_BXA2G ;
 int BHND_NVAR_BXA5G ;
 int BHND_NVAR_RSSISAV2G ;
 int BHND_NVAR_RSSISAV5G ;
 int BHND_NVAR_RSSISMC2G ;
 int BHND_NVAR_RSSISMC5G ;
 int BHND_NVAR_RSSISMF2G ;
 int BHND_NVAR_RSSISMF5G ;
 int BHND_NVAR_RXPO2G ;
 int BHND_NVAR_RXPO5G ;
 int BHND_NVAR_TRI2G ;
 int BHND_NVAR_TRI5G ;
 int BHND_NVAR_TRI5GH ;
 int BHND_NVAR_TRI5GL ;
 int BWN_PHY_LP_READVAR (int ,int ,int ,int *) ;
 scalar_t__ IEEE80211_IS_CHAN_2GHZ (int ) ;
 int int8 ;
 int uint8 ;

__attribute__((used)) static int
bwn_phy_lp_readsprom(struct bwn_mac *mac)
{
 struct bwn_phy_lp *plp = &mac->mac_phy.phy_lp;
 struct bwn_softc *sc = mac->mac_sc;
 struct ieee80211com *ic = &sc->sc_ic;
 if (IEEE80211_IS_CHAN_2GHZ(ic->ic_curchan)) {
  do { int error; error = bhnd_nvram_getvar_uint8((sc->sc_dev), (BHND_NVAR_TRI2G), (&plp->plp_txisoband_m)); if (error) { device_printf((sc->sc_dev), "NVRAM variable %s unreadable: " "%d\n", (BHND_NVAR_TRI2G), error); return (error); } } while(0);

  do { int error; error = bhnd_nvram_getvar_uint8((sc->sc_dev), (BHND_NVAR_BXA2G), (&plp->plp_bxarch)); if (error) { device_printf((sc->sc_dev), "NVRAM variable %s unreadable: " "%d\n", (BHND_NVAR_BXA2G), error); return (error); } } while(0);

  do { int error; error = bhnd_nvram_getvar_int8((sc->sc_dev), (BHND_NVAR_RXPO2G), (&plp->plp_rxpwroffset)); if (error) { device_printf((sc->sc_dev), "NVRAM variable %s unreadable: " "%d\n", (BHND_NVAR_RXPO2G), error); return (error); } } while(0);

  do { int error; error = bhnd_nvram_getvar_uint8((sc->sc_dev), (BHND_NVAR_RSSISMF2G), (&plp->plp_rssivf)); if (error) { device_printf((sc->sc_dev), "NVRAM variable %s unreadable: " "%d\n", (BHND_NVAR_RSSISMF2G), error); return (error); } } while(0);

  do { int error; error = bhnd_nvram_getvar_uint8((sc->sc_dev), (BHND_NVAR_RSSISMC2G), (&plp->plp_rssivc)); if (error) { device_printf((sc->sc_dev), "NVRAM variable %s unreadable: " "%d\n", (BHND_NVAR_RSSISMC2G), error); return (error); } } while(0);

  do { int error; error = bhnd_nvram_getvar_uint8((sc->sc_dev), (BHND_NVAR_RSSISAV2G), (&plp->plp_rssigs)); if (error) { device_printf((sc->sc_dev), "NVRAM variable %s unreadable: " "%d\n", (BHND_NVAR_RSSISAV2G), error); return (error); } } while(0);


  return (0);
 }

 do { int error; error = bhnd_nvram_getvar_uint8((sc->sc_dev), (BHND_NVAR_TRI5GL), (&plp->plp_txisoband_l)); if (error) { device_printf((sc->sc_dev), "NVRAM variable %s unreadable: " "%d\n", (BHND_NVAR_TRI5GL), error); return (error); } } while(0);

 do { int error; error = bhnd_nvram_getvar_uint8((sc->sc_dev), (BHND_NVAR_TRI5G), (&plp->plp_txisoband_m)); if (error) { device_printf((sc->sc_dev), "NVRAM variable %s unreadable: " "%d\n", (BHND_NVAR_TRI5G), error); return (error); } } while(0);

 do { int error; error = bhnd_nvram_getvar_uint8((sc->sc_dev), (BHND_NVAR_TRI5GH), (&plp->plp_txisoband_h)); if (error) { device_printf((sc->sc_dev), "NVRAM variable %s unreadable: " "%d\n", (BHND_NVAR_TRI5GH), error); return (error); } } while(0);

 do { int error; error = bhnd_nvram_getvar_uint8((sc->sc_dev), (BHND_NVAR_BXA5G), (&plp->plp_bxarch)); if (error) { device_printf((sc->sc_dev), "NVRAM variable %s unreadable: " "%d\n", (BHND_NVAR_BXA5G), error); return (error); } } while(0);

 do { int error; error = bhnd_nvram_getvar_int8((sc->sc_dev), (BHND_NVAR_RXPO5G), (&plp->plp_rxpwroffset)); if (error) { device_printf((sc->sc_dev), "NVRAM variable %s unreadable: " "%d\n", (BHND_NVAR_RXPO5G), error); return (error); } } while(0);

 do { int error; error = bhnd_nvram_getvar_uint8((sc->sc_dev), (BHND_NVAR_RSSISMF5G), (&plp->plp_rssivf)); if (error) { device_printf((sc->sc_dev), "NVRAM variable %s unreadable: " "%d\n", (BHND_NVAR_RSSISMF5G), error); return (error); } } while(0);

 do { int error; error = bhnd_nvram_getvar_uint8((sc->sc_dev), (BHND_NVAR_RSSISMC5G), (&plp->plp_rssivc)); if (error) { device_printf((sc->sc_dev), "NVRAM variable %s unreadable: " "%d\n", (BHND_NVAR_RSSISMC5G), error); return (error); } } while(0);

 do { int error; error = bhnd_nvram_getvar_uint8((sc->sc_dev), (BHND_NVAR_RSSISAV5G), (&plp->plp_rssigs)); if (error) { device_printf((sc->sc_dev), "NVRAM variable %s unreadable: " "%d\n", (BHND_NVAR_RSSISAV5G), error); return (error); } } while(0);




 return (0);
}
