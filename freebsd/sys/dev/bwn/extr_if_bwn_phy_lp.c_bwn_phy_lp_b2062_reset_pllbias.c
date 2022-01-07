
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ chip_id; } ;
struct bwn_softc {TYPE_1__ sc_cid; } ;
struct bwn_mac {struct bwn_softc* mac_sc; } ;


 scalar_t__ BHND_CHIPID_BCM5354 ;
 int BWN_B2062_N_COM1 ;
 int BWN_B2062_S_RFPLLCTL2 ;
 int BWN_RF_WRITE (struct bwn_mac*,int ,int) ;
 int DELAY (int) ;

__attribute__((used)) static void
bwn_phy_lp_b2062_reset_pllbias(struct bwn_mac *mac)
{
 struct bwn_softc *sc = mac->mac_sc;

 BWN_RF_WRITE(mac, BWN_B2062_S_RFPLLCTL2, 0xff);
 DELAY(20);
 if (sc->sc_cid.chip_id == BHND_CHIPID_BCM5354) {
  BWN_RF_WRITE(mac, BWN_B2062_N_COM1, 4);
  BWN_RF_WRITE(mac, BWN_B2062_S_RFPLLCTL2, 4);
 } else {
  BWN_RF_WRITE(mac, BWN_B2062_S_RFPLLCTL2, 0);
 }
 DELAY(5);
}
