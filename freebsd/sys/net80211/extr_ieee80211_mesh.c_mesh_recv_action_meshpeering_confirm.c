
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_2__ {int is_rx_mgtdiscard; } ;
struct ieee80211vap {TYPE_1__ iv_stats; } ;
struct ieee80211_node {int ni_mlstate; int ni_mllid; int ni_mlpid; struct ieee80211vap* ni_vap; } ;
struct ieee80211_meshpeer_ie {int peer_llinkid; int peer_linkid; } ;
struct ieee80211_frame {int dummy; } ;


 int IEEE80211_ACTION_CAT_SELF_PROT ;
 int IEEE80211_ACTION_MESHPEERING_CLOSE ;
 int IEEE80211_ACTION_MESHPEERING_CONFIRM ;
 int IEEE80211_DISCARD (struct ieee80211vap*,int,struct ieee80211_frame const*,int *,char*,int) ;
 int IEEE80211_MSG_ACTION ;
 int IEEE80211_MSG_MESH ;

 int const IEEE80211_NODE_MESH_ESTABLISHED ;



 int IEEE80211_NOTE (struct ieee80211vap*,int,struct ieee80211_node*,char*,int ,int ) ;
 int IEEE80211_REASON_PEER_LINK_CANCELED ;
 int ieee80211_send_action (struct ieee80211_node*,int ,int ,int *) ;
 int mesh_linkchange (struct ieee80211_node*,int const) ;
 struct ieee80211_meshpeer_ie* mesh_parse_meshpeering_action (struct ieee80211_node*,struct ieee80211_frame const*,int const*,int const*,struct ieee80211_meshpeer_ie*,int ) ;
 int mesh_peer_timeout_setup (struct ieee80211_node*) ;
 int mesh_peer_timeout_stop (struct ieee80211_node*) ;

__attribute__((used)) static int
mesh_recv_action_meshpeering_confirm(struct ieee80211_node *ni,
 const struct ieee80211_frame *wh,
 const uint8_t *frm, const uint8_t *efrm)
{
 struct ieee80211vap *vap = ni->ni_vap;
 struct ieee80211_meshpeer_ie ie;
 const struct ieee80211_meshpeer_ie *meshpeer;
 uint16_t args[3];


 meshpeer = mesh_parse_meshpeering_action(ni, wh, frm+2+2+2+2, efrm, &ie,
     IEEE80211_ACTION_MESHPEERING_CONFIRM);
 if (meshpeer == ((void*)0)) {
  return 0;
 }

 IEEE80211_NOTE(vap, IEEE80211_MSG_ACTION | IEEE80211_MSG_MESH, ni,
     "recv PEER CONFIRM, local id 0x%x, peer id 0x%x",
     meshpeer->peer_llinkid, meshpeer->peer_linkid);

 switch (ni->ni_mlstate) {
 case 129:
  mesh_linkchange(ni, IEEE80211_NODE_MESH_ESTABLISHED);
  mesh_peer_timeout_stop(ni);
  break;
 case 128:
  mesh_linkchange(ni, 131);
  mesh_peer_timeout_setup(ni);
  break;
 case 130:
  args[0] = ni->ni_mlpid;
  args[1] = meshpeer->peer_llinkid;

  args[2] = IEEE80211_REASON_PEER_LINK_CANCELED;
  ieee80211_send_action(ni,
      IEEE80211_ACTION_CAT_SELF_PROT,
      IEEE80211_ACTION_MESHPEERING_CLOSE,
      args);
  break;
 case 131:
  if (ni->ni_mllid != meshpeer->peer_llinkid) {
   args[0] = ni->ni_mlpid;
   args[1] = ni->ni_mllid;
   args[2] = IEEE80211_REASON_PEER_LINK_CANCELED;
   ieee80211_send_action(ni,
       IEEE80211_ACTION_CAT_SELF_PROT,
       IEEE80211_ACTION_MESHPEERING_CLOSE,
       args);
   mesh_linkchange(ni, 130);
   mesh_peer_timeout_setup(ni);
  }
  break;
 default:
  IEEE80211_DISCARD(vap,
      IEEE80211_MSG_ACTION | IEEE80211_MSG_MESH,
      wh, ((void*)0), "received confirm in invalid state %d",
      ni->ni_mlstate);
  vap->iv_stats.is_rx_mgtdiscard++;
  break;
 }
 return 0;
}
