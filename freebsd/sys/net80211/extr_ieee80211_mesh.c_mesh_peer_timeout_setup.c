
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_node {int ni_mlstate; scalar_t__ ni_mltval; int ni_mltimer; } ;





 int callout_reset (int *,scalar_t__,int ,struct ieee80211_node*) ;
 scalar_t__ ieee80211_mesh_confirmtimeout ;
 scalar_t__ ieee80211_mesh_holdingtimeout ;
 scalar_t__ ieee80211_mesh_retrytimeout ;
 int mesh_peer_timeout_cb ;

__attribute__((used)) static void
mesh_peer_timeout_setup(struct ieee80211_node *ni)
{
 switch (ni->ni_mlstate) {
 case 129:
  ni->ni_mltval = ieee80211_mesh_holdingtimeout;
  break;
 case 130:
  ni->ni_mltval = ieee80211_mesh_confirmtimeout;
  break;
 case 128:
  ni->ni_mltval = 0;
  break;
 default:
  ni->ni_mltval = ieee80211_mesh_retrytimeout;
  break;
 }
 if (ni->ni_mltval)
  callout_reset(&ni->ni_mltimer, ni->ni_mltval,
      mesh_peer_timeout_cb, ni);
}
