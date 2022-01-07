
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tx_mcs_map; int rx_mcs_map; } ;
struct ieee80211com {TYPE_1__ ic_vht_mcsinfo; int ic_vhtcaps; } ;


 int IEEE80211_CONF_VHT (struct ieee80211com*) ;
 int IEEE80211_VHTCAP_BITS ;
 int IEEE80211_VHTCAP_SUPP_CHAN_WIDTH_MASK ;
 int MS (int ,int ) ;
 int ic_printf (struct ieee80211com*,char*,...) ;
 int printf (char*) ;
 int vht_mcs_to_num (int) ;

void
ieee80211_vht_announce(struct ieee80211com *ic)
{
 int i, tx, rx;

 if (! IEEE80211_CONF_VHT(ic))
  return;


 ic_printf(ic, "[VHT] Channel Widths: 20MHz, 40MHz, 80MHz");
 if (MS(ic->ic_vhtcaps, IEEE80211_VHTCAP_SUPP_CHAN_WIDTH_MASK) == 2)
  printf(" 80+80MHz");
 if (MS(ic->ic_vhtcaps, IEEE80211_VHTCAP_SUPP_CHAN_WIDTH_MASK) >= 1)
  printf(" 160MHz");
 printf("\n");


 ic_printf(ic, "[VHT] Features: %b\n", ic->ic_vhtcaps,
     IEEE80211_VHTCAP_BITS);


 for (i = 0; i < 7; i++) {

  tx = (ic->ic_vht_mcsinfo.tx_mcs_map >> (2*i)) & 0x3;
  rx = (ic->ic_vht_mcsinfo.rx_mcs_map >> (2*i)) & 0x3;
  if (tx == 3 && rx == 3)
   continue;
  ic_printf(ic, "[VHT] NSS %d: TX MCS 0..%d, RX MCS 0..%d\n",
      i + 1,
      vht_mcs_to_num(tx),
      vht_mcs_to_num(rx));
 }
}
