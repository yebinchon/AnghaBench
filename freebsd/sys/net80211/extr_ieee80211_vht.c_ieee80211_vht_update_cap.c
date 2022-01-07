
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ieee80211_node {int dummy; } ;


 int ieee80211_parse_vhtcap (struct ieee80211_node*,int const*) ;
 int ieee80211_parse_vhtopmode (struct ieee80211_node*,int const*) ;

void
ieee80211_vht_update_cap(struct ieee80211_node *ni, const uint8_t *vhtcap_ie,
    const uint8_t *vhtop_ie)
{

 ieee80211_parse_vhtcap(ni, vhtcap_ie);
 ieee80211_parse_vhtopmode(ni, vhtop_ie);
}
