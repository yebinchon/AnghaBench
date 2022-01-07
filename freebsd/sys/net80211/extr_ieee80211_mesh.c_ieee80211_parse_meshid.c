
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ieee80211_node {int ni_meshid; int ni_meshidlen; } ;


 int memcpy (int ,int const*,int const) ;

void
ieee80211_parse_meshid(struct ieee80211_node *ni, const uint8_t *ie)
{
 ni->ni_meshidlen = ie[1];
 memcpy(ni->ni_meshid, ie + 2, ie[1]);
}
