
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct ieee80211_node {int ni_mlstate; int ni_mllid; int ni_mlpid; int ni_vap; } ;
struct ieee80211_meshpeer_ie {int dummy; } ;
struct ieee80211_frame {int dummy; } ;


 int IEEE80211_ACTION_CAT_SELF_PROT ;
 int IEEE80211_ACTION_MESHPEERING_CLOSE ;
 int IEEE80211_MSG_ACTION ;
 int IEEE80211_MSG_MESH ;






 int IEEE80211_NOTE (int ,int,struct ieee80211_node*,char*,char*) ;
 int IEEE80211_REASON_MESH_CLOSE_RCVD ;
 int ieee80211_send_action (struct ieee80211_node*,int ,int ,int *) ;
 int mesh_linkchange (struct ieee80211_node*,int const) ;
 struct ieee80211_meshpeer_ie* mesh_parse_meshpeering_action (struct ieee80211_node*,struct ieee80211_frame const*,int const*,int const*,struct ieee80211_meshpeer_ie*,int ) ;
 int mesh_peer_timeout_setup (struct ieee80211_node*) ;
 int mesh_peer_timeout_stop (struct ieee80211_node*) ;

__attribute__((used)) static int
mesh_recv_action_meshpeering_close(struct ieee80211_node *ni,
 const struct ieee80211_frame *wh,
 const uint8_t *frm, const uint8_t *efrm)
{
 struct ieee80211_meshpeer_ie ie;
 const struct ieee80211_meshpeer_ie *meshpeer;
 uint16_t args[3];


 meshpeer = mesh_parse_meshpeering_action(ni, wh, frm+2, efrm, &ie,
     IEEE80211_ACTION_MESHPEERING_CLOSE);
 if (meshpeer == ((void*)0)) {
  return 0;
 }







 IEEE80211_NOTE(ni->ni_vap, IEEE80211_MSG_ACTION | IEEE80211_MSG_MESH,
     ni, "%s", "recv PEER CLOSE");

 switch (ni->ni_mlstate) {
 case 130:

  break;
 case 129:
 case 128:
 case 133:
 case 132:
  args[0] = ni->ni_mlpid;
  args[1] = ni->ni_mllid;
  args[2] = IEEE80211_REASON_MESH_CLOSE_RCVD;
  ieee80211_send_action(ni,
      IEEE80211_ACTION_CAT_SELF_PROT,
      IEEE80211_ACTION_MESHPEERING_CLOSE,
      args);
  mesh_linkchange(ni, 131);
  mesh_peer_timeout_setup(ni);
  break;
 case 131:
  mesh_linkchange(ni, 130);
  mesh_peer_timeout_stop(ni);
  break;
 }
 return 0;
}
