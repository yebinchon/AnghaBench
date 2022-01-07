
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bwi_tpctl {int bbp_atten; int tp_ctrl1; int tp_ctrl2; int rf_atten; } ;
struct bwi_softc {int sc_pci_revid; int sc_bbp_id; } ;
struct bwi_rf {scalar_t__ rf_type; int rf_rev; } ;
struct bwi_phy {scalar_t__ phy_mode; } ;
struct bwi_mac {struct bwi_tpctl mac_tpctl; struct bwi_phy mac_phy; struct bwi_rf mac_rf; struct bwi_softc* mac_sc; } ;


 int BWI_BBPID_BCM4320 ;
 int BWI_DBG_INIT ;
 int BWI_DBG_MAC ;
 int BWI_DBG_TXPOWER ;
 scalar_t__ BWI_IS_BRCM_BCM4309G (struct bwi_softc*) ;
 int BWI_IS_BRCM_BU4306 (struct bwi_softc*) ;
 scalar_t__ BWI_RF_T_BCM2050 ;
 scalar_t__ BWI_RF_T_BCM2053 ;
 int DPRINTF (struct bwi_softc*,int,char*,int,int,int,int) ;
 scalar_t__ IEEE80211_MODE_11A ;
 scalar_t__ IEEE80211_MODE_11G ;

__attribute__((used)) static void
bwi_mac_setup_tpctl(struct bwi_mac *mac)
{
 struct bwi_softc *sc = mac->mac_sc;
 struct bwi_rf *rf = &mac->mac_rf;
 struct bwi_phy *phy = &mac->mac_phy;
 struct bwi_tpctl *tpctl = &mac->mac_tpctl;


 if (rf->rf_type == BWI_RF_T_BCM2050 && rf->rf_rev < 6)
  tpctl->bbp_atten = 0;
 else
  tpctl->bbp_atten = 2;


 tpctl->tp_ctrl1 = 0;
 if (rf->rf_type == BWI_RF_T_BCM2050) {
  if (rf->rf_rev == 1)
   tpctl->tp_ctrl1 = 3;
  else if (rf->rf_rev < 6)
   tpctl->tp_ctrl1 = 2;
  else if (rf->rf_rev == 8)
   tpctl->tp_ctrl1 = 1;
 }


 tpctl->tp_ctrl2 = 0xffff;




 if (phy->phy_mode == IEEE80211_MODE_11A) {
  tpctl->rf_atten = 0x60;
  goto back;
 }

 if (BWI_IS_BRCM_BCM4309G(sc) && sc->sc_pci_revid < 0x51) {
  tpctl->rf_atten = sc->sc_pci_revid < 0x43 ? 2 : 3;
  goto back;
 }

 tpctl->rf_atten = 5;

 if (rf->rf_type != BWI_RF_T_BCM2050) {
  if (rf->rf_type == BWI_RF_T_BCM2053 && rf->rf_rev == 1)
   tpctl->rf_atten = 6;
  goto back;
 }







 switch (rf->rf_rev) {
 case 1:
  if (phy->phy_mode == IEEE80211_MODE_11G) {
   if (BWI_IS_BRCM_BCM4309G(sc) || BWI_IS_BRCM_BU4306(sc))
    tpctl->rf_atten = 3;
   else
    tpctl->rf_atten = 1;
  } else {
   if (BWI_IS_BRCM_BCM4309G(sc))
    tpctl->rf_atten = 7;
   else
    tpctl->rf_atten = 6;
  }
  break;
 case 2:
  if (phy->phy_mode == IEEE80211_MODE_11G) {



   if (BWI_IS_BRCM_BCM4309G(sc))
    tpctl->rf_atten = 3;
   else if (BWI_IS_BRCM_BU4306(sc))
    tpctl->rf_atten = 5;
   else if (sc->sc_bbp_id == BWI_BBPID_BCM4320)
    tpctl->rf_atten = 4;
   else
    tpctl->rf_atten = 3;
  } else {
   tpctl->rf_atten = 6;
  }
  break;
 case 4:
 case 5:
  tpctl->rf_atten = 1;
  break;
 case 8:
  tpctl->rf_atten = 0x1a;
  break;
 }
back:
 DPRINTF(sc, BWI_DBG_MAC | BWI_DBG_INIT | BWI_DBG_TXPOWER,
  "bbp atten: %u, rf atten: %u, ctrl1: %u, ctrl2: %u\n",
  tpctl->bbp_atten, tpctl->rf_atten,
  tpctl->tp_ctrl1, tpctl->tp_ctrl2);
}
