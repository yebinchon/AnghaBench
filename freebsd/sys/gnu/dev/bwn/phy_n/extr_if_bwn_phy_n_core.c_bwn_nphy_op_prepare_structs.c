
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {scalar_t__ board_vendor; int board_srom_rev; int board_flags2; scalar_t__ board_devid; } ;
struct bwn_softc {int sc_dev; TYPE_1__ sc_board_info; } ;
struct bwn_phy_n {int hang_avoid; int gain_boost; int txrx_chain; int phyrxchain; int perical; int* tx_pwr_idx; int txpwrctrl; int pwg_gain_5ghz; int ipa2g_on; int ipa5g_on; int spur_avoid; } ;
struct bwn_phy {int rev; struct bwn_phy_n* phy_n; } ;
struct bwn_mac {struct bwn_softc* mac_sc; struct bwn_phy mac_phy; } ;


 int BHND_BFL2_5G_PWRGAIN ;
 int BHND_BFL2_TXPWRCTRL_EN ;
 int BHND_NVAR_EXTPAGAIN2G ;
 int BHND_NVAR_EXTPAGAIN5G ;
 int BWN_ERRPRINTF (struct bwn_softc*,char*,int) ;
 int BWN_SPUR_AVOID_AUTO ;
 int BWN_SPUR_AVOID_DISABLE ;
 scalar_t__ PCI_DEVID_BCM4321_D11N ;
 scalar_t__ PCI_DEVID_BCM4321_D11N5G ;
 scalar_t__ PCI_VENDOR_APPLE ;
 int bhnd_get_hwrev (int ) ;
 int bhnd_nvram_getvar_uint8 (int ,int ,int*) ;
 int memset (struct bwn_phy_n*,int ,int) ;

int
bwn_nphy_op_prepare_structs(struct bwn_mac *mac)
{
 struct bwn_softc *sc = mac->mac_sc;
 struct bwn_phy *phy = &mac->mac_phy;
 struct bwn_phy_n *nphy = phy->phy_n;
 int error;

 memset(nphy, 0, sizeof(*nphy));

 nphy->hang_avoid = (phy->rev == 3 || phy->rev == 4);
 nphy->spur_avoid = (phy->rev >= 3) ?
    BWN_SPUR_AVOID_AUTO : BWN_SPUR_AVOID_DISABLE;
 nphy->gain_boost = 1;
 nphy->txrx_chain = 2;
 nphy->phyrxchain = 3;
 nphy->perical = 2;


 nphy->tx_pwr_idx[0] = 128;
 nphy->tx_pwr_idx[1] = 128;


 nphy->txpwrctrl = 0;
 nphy->pwg_gain_5ghz = 0;
 if (mac->mac_phy.rev >= 3 ||
     (sc->sc_board_info.board_vendor == PCI_VENDOR_APPLE &&
      (bhnd_get_hwrev(sc->sc_dev) == 11 || bhnd_get_hwrev(sc->sc_dev) == 12))) {
  nphy->txpwrctrl = 1;
  nphy->pwg_gain_5ghz = 1;
 } else if (sc->sc_board_info.board_srom_rev >= 4) {
  if (mac->mac_phy.rev >= 2 &&
      (sc->sc_board_info.board_flags2 & BHND_BFL2_TXPWRCTRL_EN)) {
   nphy->txpwrctrl = 1;
   if ((sc->sc_board_info.board_devid == PCI_DEVID_BCM4321_D11N) ||
       (sc->sc_board_info.board_devid == PCI_DEVID_BCM4321_D11N5G))
    nphy->pwg_gain_5ghz = 1;
  } else if (sc->sc_board_info.board_flags2 & BHND_BFL2_5G_PWRGAIN) {
   nphy->pwg_gain_5ghz = 1;
  }
 }

 if (mac->mac_phy.rev >= 3) {
  uint8_t extpa_gain2g, extpa_gain5g;

  error = bhnd_nvram_getvar_uint8(sc->sc_dev,
      BHND_NVAR_EXTPAGAIN2G, &extpa_gain2g);
  if (error) {
   BWN_ERRPRINTF(mac->mac_sc, "Error reading 2GHz EPA "
       "gain configuration from NVRAM: %d\n", error);
   return (error);
  }

  error = bhnd_nvram_getvar_uint8(sc->sc_dev,
      BHND_NVAR_EXTPAGAIN5G, &extpa_gain5g);
  if (error) {
   BWN_ERRPRINTF(mac->mac_sc, "Error reading 5GHz EPA "
       "gain configuration from NVRAM: %d\n", error);
   return (error);
  }

  nphy->ipa2g_on = (extpa_gain2g == 2);
  nphy->ipa5g_on = (extpa_gain5g == 2);
 }

 return (0);
}
