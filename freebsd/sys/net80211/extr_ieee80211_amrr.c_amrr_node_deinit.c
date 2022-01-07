
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_node {int ni_rctls; } ;


 int IEEE80211_FREE (int ,int ) ;
 int M_80211_RATECTL ;

__attribute__((used)) static void
amrr_node_deinit(struct ieee80211_node *ni)
{
 IEEE80211_FREE(ni->ni_rctls, M_80211_RATECTL);
}
