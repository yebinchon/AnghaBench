
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_3__ {scalar_t__ chip_id; } ;
struct bwn_softc {int sc_dev; TYPE_1__ sc_cid; } ;
struct TYPE_4__ {scalar_t__ type; } ;
struct bwn_mac {TYPE_2__ mac_phy; struct bwn_softc* mac_sc; } ;
typedef int bhnd_pmu_spuravoid ;


 scalar_t__ BHND_CHIPID_BCM43131 ;
 scalar_t__ BHND_CHIPID_BCM43217 ;
 scalar_t__ BHND_CHIPID_BCM43222 ;
 scalar_t__ BHND_CHIPID_BCM43224 ;
 scalar_t__ BHND_CHIPID_BCM43225 ;
 scalar_t__ BHND_CHIPID_BCM43227 ;
 scalar_t__ BHND_CHIPID_BCM43228 ;
 scalar_t__ BHND_CHIPID_BCM4331 ;



 scalar_t__ BWN_PHYTYPE_LCN ;
 int BWN_TSF_CLK_FRAC_HIGH ;
 int BWN_TSF_CLK_FRAC_LOW ;
 int BWN_WRITE_2 (struct bwn_mac*,int ,int) ;
 int device_printf (int ,char*,int) ;

void
bwn_mac_switch_freq(struct bwn_mac *mac, bhnd_pmu_spuravoid spurmode)
{
 struct bwn_softc *sc = mac->mac_sc;
 uint16_t chip_id = sc->sc_cid.chip_id;

 if (chip_id == BHND_CHIPID_BCM4331) {
  switch (spurmode) {
  case 129:
   BWN_WRITE_2(mac, BWN_TSF_CLK_FRAC_LOW, 0x1862);
   BWN_WRITE_2(mac, BWN_TSF_CLK_FRAC_HIGH, 0x6);
   break;
  case 130:
   BWN_WRITE_2(mac, BWN_TSF_CLK_FRAC_LOW, 0x3e70);
   BWN_WRITE_2(mac, BWN_TSF_CLK_FRAC_HIGH, 0x6);
   break;
  case 128:
   BWN_WRITE_2(mac, BWN_TSF_CLK_FRAC_LOW, 0x6666);
   BWN_WRITE_2(mac, BWN_TSF_CLK_FRAC_HIGH, 0x6);
   break;
  }
 } else if (chip_id == BHND_CHIPID_BCM43131 ||
     chip_id == BHND_CHIPID_BCM43217 ||
     chip_id == BHND_CHIPID_BCM43222 ||
     chip_id == BHND_CHIPID_BCM43224 ||
     chip_id == BHND_CHIPID_BCM43225 ||
     chip_id == BHND_CHIPID_BCM43227 ||
     chip_id == BHND_CHIPID_BCM43228) {
  switch (spurmode) {
  case 129:
   BWN_WRITE_2(mac, BWN_TSF_CLK_FRAC_LOW, 0x2082);
   BWN_WRITE_2(mac, BWN_TSF_CLK_FRAC_HIGH, 0x8);
   break;
  case 130:
   BWN_WRITE_2(mac, BWN_TSF_CLK_FRAC_LOW, 0x5341);
   BWN_WRITE_2(mac, BWN_TSF_CLK_FRAC_HIGH, 0x8);
   break;
  case 128:
   BWN_WRITE_2(mac, BWN_TSF_CLK_FRAC_LOW, 0x8889);
   BWN_WRITE_2(mac, BWN_TSF_CLK_FRAC_HIGH, 0x8);
   break;
  }
 } else if (mac->mac_phy.type == BWN_PHYTYPE_LCN) {
  switch (spurmode) {
  case 129:
   device_printf(sc->sc_dev, "invalid spuravoid mode: "
       "%d\n", spurmode);
   break;
  case 130:
   BWN_WRITE_2(mac, BWN_TSF_CLK_FRAC_LOW, 0x7CE0);
   BWN_WRITE_2(mac, BWN_TSF_CLK_FRAC_HIGH, 0xC);
   break;
  case 128:
   BWN_WRITE_2(mac, BWN_TSF_CLK_FRAC_LOW, 0xCCCD);
   BWN_WRITE_2(mac, BWN_TSF_CLK_FRAC_HIGH, 0xC);
   break;
  }
 }
}
