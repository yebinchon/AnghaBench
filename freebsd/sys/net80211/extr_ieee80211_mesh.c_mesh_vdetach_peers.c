
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct ieee80211com {int ic_stageq; } ;
struct ieee80211_node {scalar_t__ ni_mlstate; int ni_macaddr; int ni_mltimer; int ni_mllid; int ni_mlpid; struct ieee80211com* ni_ic; } ;


 int IEEE80211_ACTION_CAT_SELF_PROT ;
 int IEEE80211_ACTION_MESHPEERING_CLOSE ;
 scalar_t__ IEEE80211_NODE_MESH_ESTABLISHED ;
 int IEEE80211_REASON_PEER_LINK_CANCELED ;
 int callout_drain (int *) ;
 int ieee80211_ageq_drain_node (int *,void*) ;
 scalar_t__ ieee80211_mac_hash (struct ieee80211com*,int ) ;
 int ieee80211_send_action (struct ieee80211_node*,int ,int ,int *) ;

__attribute__((used)) static void
mesh_vdetach_peers(void *arg, struct ieee80211_node *ni)
{
 struct ieee80211com *ic = ni->ni_ic;
 uint16_t args[3];

 if (ni->ni_mlstate == IEEE80211_NODE_MESH_ESTABLISHED) {
  args[0] = ni->ni_mlpid;
  args[1] = ni->ni_mllid;
  args[2] = IEEE80211_REASON_PEER_LINK_CANCELED;
  ieee80211_send_action(ni,
      IEEE80211_ACTION_CAT_SELF_PROT,
      IEEE80211_ACTION_MESHPEERING_CLOSE,
      args);
 }
 callout_drain(&ni->ni_mltimer);

 ieee80211_ageq_drain_node(&ic->ic_stageq,
    (void *)(uintptr_t) ieee80211_mac_hash(ic, ni->ni_macaddr));
}
