
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int csum_flags; void* rcvif; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct ieee80211com {int ic_lintval; int ic_stageq; } ;
struct ieee80211_node {int ni_intval; int ni_macaddr; struct ieee80211com* ni_ic; } ;


 int CSUM_SND_TAG ;
 int MPASS (int) ;
 int ieee80211_ageq_append (int *,struct mbuf*,int) ;
 scalar_t__ ieee80211_mac_hash (struct ieee80211com*,int ) ;
 int ieee80211_notify_wds_discover (struct ieee80211_node*) ;

void
ieee80211_dwds_discover(struct ieee80211_node *ni, struct mbuf *m)
{
 struct ieee80211com *ic = ni->ni_ic;
 MPASS((m->m_pkthdr.csum_flags & CSUM_SND_TAG) == 0);
 m->m_pkthdr.rcvif = (void *)(uintptr_t)
     ieee80211_mac_hash(ic, ni->ni_macaddr);
 (void) ieee80211_ageq_append(&ic->ic_stageq, m,
     ((ni->ni_intval * ic->ic_lintval) << 2) / 1024);
 ieee80211_notify_wds_discover(ni);
}
