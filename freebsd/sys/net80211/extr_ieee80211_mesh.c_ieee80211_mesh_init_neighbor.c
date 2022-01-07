
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_scanparams {int meshid; } ;
struct ieee80211_node {int dummy; } ;
struct ieee80211_frame {int dummy; } ;


 int ieee80211_parse_meshid (struct ieee80211_node*,int ) ;

void
ieee80211_mesh_init_neighbor(struct ieee80211_node *ni,
 const struct ieee80211_frame *wh,
 const struct ieee80211_scanparams *sp)
{
 ieee80211_parse_meshid(ni, sp->meshid);
}
