
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_node {int ni_noise; } ;
typedef int int8_t ;


 int node_getrssi (struct ieee80211_node const*) ;

__attribute__((used)) static void
node_getsignal(const struct ieee80211_node *ni, int8_t *rssi, int8_t *noise)
{
 *rssi = node_getrssi(ni);
 *noise = ni->ni_noise;
}
