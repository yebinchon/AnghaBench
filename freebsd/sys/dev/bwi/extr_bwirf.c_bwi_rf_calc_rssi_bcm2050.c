
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct bwi_rxbuf_hdr {int rxh_rssi; int rxh_phyinfo; int rxh_flags3; int rxh_flags1; } ;
struct bwi_rf {scalar_t__* rf_nrssi_table; } ;
struct TYPE_3__ {scalar_t__ phy_mode; } ;
struct bwi_mac {TYPE_2__* mac_sc; TYPE_1__ mac_phy; struct bwi_rf mac_rf; } ;
struct TYPE_4__ {int sc_card_flags; } ;


 int BWI_CARD_F_SW_NRSSI ;
 int BWI_DBG_RF ;
 int BWI_DBG_RX ;
 int BWI_NRSSI_TBLSZ ;
 int BWI_RXH_F1_OFDM ;
 int BWI_RXH_F3_BCM2050_RSSI ;
 int BWI_RXH_PHYINFO_LNAGAIN ;
 int DPRINTF (TYPE_2__*,int,char*,int,int) ;
 scalar_t__ IEEE80211_MODE_11G ;
 int __SHIFTOUT (int,int ) ;
 int le16toh (int ) ;
 int panic (char*,int) ;

__attribute__((used)) static int
bwi_rf_calc_rssi_bcm2050(struct bwi_mac *mac, const struct bwi_rxbuf_hdr *hdr)
{
 uint16_t flags1, flags3;
 int rssi, lna_gain;

 rssi = hdr->rxh_rssi;
 flags1 = le16toh(hdr->rxh_flags1);
 flags3 = le16toh(hdr->rxh_flags3);

 if (flags1 & BWI_RXH_F1_OFDM) {
  if (rssi > 127)
   rssi -= 256;
  if (flags3 & BWI_RXH_F3_BCM2050_RSSI)
   rssi += 17;
  else
   rssi -= 4;
  return rssi;
 }

 if (mac->mac_sc->sc_card_flags & BWI_CARD_F_SW_NRSSI) {
  struct bwi_rf *rf = &mac->mac_rf;

  if (rssi >= BWI_NRSSI_TBLSZ)
   rssi = BWI_NRSSI_TBLSZ - 1;

  rssi = ((31 - (int)rf->rf_nrssi_table[rssi]) * -131) / 128;
  rssi -= 67;
 } else {
  rssi = ((31 - rssi) * -149) / 128;
  rssi -= 68;
 }

 if (mac->mac_phy.phy_mode != IEEE80211_MODE_11G)
  return rssi;

 if (flags3 & BWI_RXH_F3_BCM2050_RSSI)
  rssi += 20;

 lna_gain = __SHIFTOUT(le16toh(hdr->rxh_phyinfo),
         BWI_RXH_PHYINFO_LNAGAIN);
 DPRINTF(mac->mac_sc, BWI_DBG_RF | BWI_DBG_RX,
  "lna_gain %d, phyinfo 0x%04x\n",
  lna_gain, le16toh(hdr->rxh_phyinfo));
 switch (lna_gain) {
 case 0:
  rssi += 27;
  break;
 case 1:
  rssi += 6;
  break;
 case 2:
  rssi += 12;
  break;
 case 3:







  rssi += 5;
  break;
 default:
  panic("impossible lna gain %d", lna_gain);
 }
 return rssi;
}
