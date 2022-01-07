
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211vap {int dummy; } ;
struct ieee80211_node {int ni_mlhtimer; int ni_mltimer; int ni_flags; } ;


 int IEEE80211_NODE_QOS ;
 int callout_init (int *,int) ;

void
ieee80211_mesh_node_init(struct ieee80211vap *vap, struct ieee80211_node *ni)
{
 ni->ni_flags |= IEEE80211_NODE_QOS;
 callout_init(&ni->ni_mltimer, 1);
 callout_init(&ni->ni_mlhtimer, 1);
}
