
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct ieee80211_node {int ni_mlstate; int ni_mlhtimer; int ni_mlhcnt; int ni_mlpid; int ni_mlrcnt; int ni_vap; } ;


 int IEEE80211_ACTION_CAT_SELF_PROT ;
 int IEEE80211_ACTION_MESHPEERING_CLOSE ;
 int IEEE80211_ACTION_MESHPEERING_OPEN ;
 int IEEE80211_MSG_MESH ;






 int IEEE80211_NOTE (int ,int ,struct ieee80211_node*,char*,int,int ) ;
 int IEEE80211_REASON_MESH_CONFIRM_TIMEOUT ;
 int IEEE80211_REASON_MESH_MAX_RETRIES ;
 int callout_reset (int *,int ,int ,struct ieee80211_node*) ;
 int ieee80211_mesh_backofftimeout ;
 int ieee80211_mesh_maxholding ;
 int ieee80211_mesh_maxretries ;
 int ieee80211_send_action (struct ieee80211_node*,int ,int ,int *) ;
 int mesh_linkchange (struct ieee80211_node*,int const) ;
 int mesh_peer_backoff_cb ;
 int mesh_peer_timeout_backoff (struct ieee80211_node*) ;
 int mesh_peer_timeout_setup (struct ieee80211_node*) ;

__attribute__((used)) static void
mesh_peer_timeout_cb(void *arg)
{
 struct ieee80211_node *ni = (struct ieee80211_node *)arg;
 uint16_t args[3];

 IEEE80211_NOTE(ni->ni_vap, IEEE80211_MSG_MESH,
     ni, "mesh link timeout, state %d, retry counter %d",
     ni->ni_mlstate, ni->ni_mlrcnt);

 switch (ni->ni_mlstate) {
 case 130:
 case 132:
  break;
 case 128:
 case 129:
  if (ni->ni_mlrcnt == ieee80211_mesh_maxretries) {
   args[0] = ni->ni_mlpid;
   args[2] = IEEE80211_REASON_MESH_MAX_RETRIES;
   ieee80211_send_action(ni,
       IEEE80211_ACTION_CAT_SELF_PROT,
       IEEE80211_ACTION_MESHPEERING_CLOSE, args);
   ni->ni_mlrcnt = 0;
   mesh_linkchange(ni, 131);
   mesh_peer_timeout_setup(ni);
  } else {
   args[0] = ni->ni_mlpid;
   ieee80211_send_action(ni,
       IEEE80211_ACTION_CAT_SELF_PROT,
       IEEE80211_ACTION_MESHPEERING_OPEN, args);
   ni->ni_mlrcnt++;
   mesh_peer_timeout_backoff(ni);
  }
  break;
 case 133:
  args[0] = ni->ni_mlpid;
  args[2] = IEEE80211_REASON_MESH_CONFIRM_TIMEOUT;
  ieee80211_send_action(ni,
      IEEE80211_ACTION_CAT_SELF_PROT,
      IEEE80211_ACTION_MESHPEERING_CLOSE, args);
  mesh_linkchange(ni, 131);
  mesh_peer_timeout_setup(ni);
  break;
 case 131:
  ni->ni_mlhcnt++;
  if (ni->ni_mlhcnt >= ieee80211_mesh_maxholding)
   callout_reset(&ni->ni_mlhtimer,
       ieee80211_mesh_backofftimeout,
       mesh_peer_backoff_cb, ni);
  mesh_linkchange(ni, 130);
  break;
 }
}
