
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_node_table {int dummy; } ;
struct ieee80211_node {int dummy; } ;
struct ieee80211_frame_min {int i_addr2; } ;


 scalar_t__ IS_BCAST_PROBEREQ (struct ieee80211_frame_min const*) ;
 struct ieee80211_node* ieee80211_find_node_locked (struct ieee80211_node_table*,int ) ;

__attribute__((used)) static __inline struct ieee80211_node *
_find_rxnode(struct ieee80211_node_table *nt,
    const struct ieee80211_frame_min *wh)
{
 if (IS_BCAST_PROBEREQ(wh))
  return ((void*)0);
 return ieee80211_find_node_locked(nt, wh->i_addr2);
}
