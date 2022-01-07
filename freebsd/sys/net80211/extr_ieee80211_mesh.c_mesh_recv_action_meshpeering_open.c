
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct ieee80211vap {struct ieee80211_mesh_state* iv_mesh; } ;
struct ieee80211_node {int ni_mlstate; int ni_mlpid; int ni_mllid; struct ieee80211vap* ni_vap; } ;
struct ieee80211_meshpeer_ie {int peer_llinkid; int peer_linkid; } ;
struct ieee80211_mesh_state {int ms_neighbors; } ;
struct ieee80211_frame {int dummy; } ;


 int IEEE80211_ACTION_CAT_SELF_PROT ;
 int IEEE80211_ACTION_MESHPEERING_CLOSE ;
 int IEEE80211_ACTION_MESHPEERING_CONFIRM ;
 int IEEE80211_ACTION_MESHPEERING_OPEN ;
 int IEEE80211_MESH_MAX_NEIGHBORS ;
 int IEEE80211_MSG_ACTION ;
 int IEEE80211_MSG_MESH ;






 int IEEE80211_NOTE (struct ieee80211vap*,int,struct ieee80211_node*,char*,int ) ;
 int IEEE80211_REASON_MESH_MAX_PEERS ;
 int IEEE80211_REASON_PEER_LINK_CANCELED ;
 int ieee80211_send_action (struct ieee80211_node*,int ,int ,int *) ;
 int mesh_generateid (struct ieee80211vap*) ;
 int mesh_linkchange (struct ieee80211_node*,int const) ;
 struct ieee80211_meshpeer_ie* mesh_parse_meshpeering_action (struct ieee80211_node*,struct ieee80211_frame const*,int const*,int const*,struct ieee80211_meshpeer_ie*,int ) ;
 int mesh_peer_timeout_setup (struct ieee80211_node*) ;
 int mesh_peer_timeout_stop (struct ieee80211_node*) ;

__attribute__((used)) static int
mesh_recv_action_meshpeering_open(struct ieee80211_node *ni,
 const struct ieee80211_frame *wh,
 const uint8_t *frm, const uint8_t *efrm)
{
 struct ieee80211vap *vap = ni->ni_vap;
 struct ieee80211_mesh_state *ms = vap->iv_mesh;
 struct ieee80211_meshpeer_ie ie;
 const struct ieee80211_meshpeer_ie *meshpeer;
 uint16_t args[3];


 meshpeer = mesh_parse_meshpeering_action(ni, wh, frm+2+2, efrm, &ie,
     IEEE80211_ACTION_MESHPEERING_OPEN);
 if (meshpeer == ((void*)0)) {
  return 0;
 }


 IEEE80211_NOTE(vap, IEEE80211_MSG_ACTION | IEEE80211_MSG_MESH, ni,
     "recv PEER OPEN, lid 0x%x", meshpeer->peer_llinkid);

 switch (ni->ni_mlstate) {
 case 130:

  if (ms->ms_neighbors >= IEEE80211_MESH_MAX_NEIGHBORS) {
   args[0] = meshpeer->peer_llinkid;
   args[1] = 0;
   args[2] = IEEE80211_REASON_MESH_MAX_PEERS;
   ieee80211_send_action(ni,
       IEEE80211_ACTION_CAT_SELF_PROT,
       IEEE80211_ACTION_MESHPEERING_CLOSE,
       args);

   return (0);
  }

  mesh_linkchange(ni, 129);
  ni->ni_mllid = meshpeer->peer_llinkid;
  ni->ni_mlpid = mesh_generateid(vap);
  if (ni->ni_mlpid == 0)
   return 0;
  args[0] = ni->ni_mlpid;

  ieee80211_send_action(ni,
      IEEE80211_ACTION_CAT_SELF_PROT,
      IEEE80211_ACTION_MESHPEERING_OPEN, args);

  args[0] = ni->ni_mlpid;
  args[1] = ni->ni_mllid;
  ieee80211_send_action(ni,
      IEEE80211_ACTION_CAT_SELF_PROT,
      IEEE80211_ACTION_MESHPEERING_CONFIRM,
      args);
  mesh_peer_timeout_setup(ni);
  break;
 case 129:

  if (ni->ni_mllid != meshpeer->peer_llinkid) {
   args[0] = ni->ni_mllid;
   args[1] = ni->ni_mlpid;
   args[2] = IEEE80211_REASON_PEER_LINK_CANCELED;
   ieee80211_send_action(ni,
       IEEE80211_ACTION_CAT_SELF_PROT,
       IEEE80211_ACTION_MESHPEERING_CLOSE,
       args);
   mesh_linkchange(ni, 131);
   mesh_peer_timeout_setup(ni);
   break;
  }

  args[0] = ni->ni_mlpid;
  args[1] = ni->ni_mllid;
  ieee80211_send_action(ni,
      IEEE80211_ACTION_CAT_SELF_PROT,
      IEEE80211_ACTION_MESHPEERING_CONFIRM,
      args);
  break;
 case 128:
  ni->ni_mllid = meshpeer->peer_llinkid;
  mesh_linkchange(ni, 129);
  args[0] = ni->ni_mlpid;
  args[1] = ni->ni_mllid;
  ieee80211_send_action(ni,
      IEEE80211_ACTION_CAT_SELF_PROT,
      IEEE80211_ACTION_MESHPEERING_CONFIRM,
      args);

  break;
 case 133:
  if (ni->ni_mlpid != meshpeer->peer_linkid ||
      ni->ni_mllid != meshpeer->peer_llinkid) {
   args[0] = ni->ni_mlpid;
   args[1] = ni->ni_mllid;
   args[2] = IEEE80211_REASON_PEER_LINK_CANCELED;
   ieee80211_send_action(ni,
       IEEE80211_ACTION_CAT_SELF_PROT,
       IEEE80211_ACTION_MESHPEERING_CLOSE,
       args);
   mesh_linkchange(ni,
       131);
   mesh_peer_timeout_setup(ni);
   break;
  }
  mesh_linkchange(ni, 132);
  ni->ni_mllid = meshpeer->peer_llinkid;
  args[0] = ni->ni_mlpid;
  args[1] = ni->ni_mllid;
  ieee80211_send_action(ni,
      IEEE80211_ACTION_CAT_SELF_PROT,
      IEEE80211_ACTION_MESHPEERING_CONFIRM,
      args);
  mesh_peer_timeout_stop(ni);
  break;
 case 132:
  if (ni->ni_mllid != meshpeer->peer_llinkid) {
   args[0] = ni->ni_mllid;
   args[1] = ni->ni_mlpid;
   args[2] = IEEE80211_REASON_PEER_LINK_CANCELED;
   ieee80211_send_action(ni,
       IEEE80211_ACTION_CAT_SELF_PROT,
       IEEE80211_ACTION_MESHPEERING_CLOSE,
       args);
   mesh_linkchange(ni, 131);
   mesh_peer_timeout_setup(ni);
   break;
  }
  args[0] = ni->ni_mlpid;
  args[1] = ni->ni_mllid;
  ieee80211_send_action(ni,
      IEEE80211_ACTION_CAT_SELF_PROT,
      IEEE80211_ACTION_MESHPEERING_CONFIRM,
      args);
  break;
 case 131:
  args[0] = ni->ni_mlpid;
  args[1] = meshpeer->peer_llinkid;

  args[2] = IEEE80211_REASON_PEER_LINK_CANCELED;
  ieee80211_send_action(ni,
      IEEE80211_ACTION_CAT_SELF_PROT,
      IEEE80211_ACTION_MESHPEERING_CLOSE,
      args);
  break;
 }
 return 0;
}
