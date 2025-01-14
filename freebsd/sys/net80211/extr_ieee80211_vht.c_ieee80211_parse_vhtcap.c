
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {void* tx_highest; void* tx_mcs_map; void* rx_highest; void* rx_mcs_map; } ;
struct ieee80211_node {TYPE_1__ ni_vht_mcsinfo; int ni_vhtcap; } ;


 void* le16dec (int const*) ;
 int le32dec (int const*) ;

void
ieee80211_parse_vhtcap(struct ieee80211_node *ni, const uint8_t *ie)
{


 ni->ni_vhtcap = le32dec(ie + 2);


 ni->ni_vht_mcsinfo.rx_mcs_map = le16dec(ie + 6);
 ni->ni_vht_mcsinfo.rx_highest = le16dec(ie + 8);
 ni->ni_vht_mcsinfo.tx_mcs_map = le16dec(ie + 10);
 ni->ni_vht_mcsinfo.tx_highest = le16dec(ie + 12);
}
