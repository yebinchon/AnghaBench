
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mbuf {int dummy; } ;
struct ieee80211vap {int dummy; } ;
struct ieee80211_rx_stats {int dummy; } ;
struct ieee80211_node {struct ieee80211vap* ni_vap; } ;
struct TYPE_2__ {int (* wv_recv_mgmt ) (struct ieee80211_node*,struct mbuf*,int,struct ieee80211_rx_stats const*,int,int) ;} ;





 TYPE_1__* WI_VAP (struct ieee80211vap*) ;
 int stub1 (struct ieee80211_node*,struct mbuf*,int,struct ieee80211_rx_stats const*,int,int) ;

__attribute__((used)) static void
wi_recv_mgmt(struct ieee80211_node *ni, struct mbuf *m,
 int subtype, const struct ieee80211_rx_stats *rxs, int rssi, int nf)
{
 struct ieee80211vap *vap = ni->ni_vap;

 switch (subtype) {
 case 129:
 case 130:
 case 128:

  return;
 }
 WI_VAP(vap)->wv_recv_mgmt(ni, m, subtype, rxs, rssi, nf);
}
