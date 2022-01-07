
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mbuf {int dummy; } ;
struct ieee80211_rx_stats {int c_nf; int c_rssi; } ;
struct ieee80211_node {TYPE_1__* ni_vap; } ;
typedef int rxs ;
struct TYPE_2__ {int (* iv_input ) (struct ieee80211_node*,struct mbuf*,struct ieee80211_rx_stats*,int ,int ) ;} ;


 int bzero (struct ieee80211_rx_stats*,int) ;
 scalar_t__ ieee80211_get_rx_params (struct mbuf*,struct ieee80211_rx_stats*) ;
 int ieee80211_process_mimo (struct ieee80211_node*,struct ieee80211_rx_stats*) ;
 int stub1 (struct ieee80211_node*,struct mbuf*,struct ieee80211_rx_stats*,int ,int ) ;

int
ieee80211_input_mimo(struct ieee80211_node *ni, struct mbuf *m)
{
 struct ieee80211_rx_stats rxs;


 bzero(&rxs, sizeof(rxs));
 if (ieee80211_get_rx_params(m, &rxs) != 0)
  return (-1);


 ieee80211_process_mimo(ni, &rxs);


 return ni->ni_vap->iv_input(ni, m, &rxs, rxs.c_rssi, rxs.c_nf);
}
