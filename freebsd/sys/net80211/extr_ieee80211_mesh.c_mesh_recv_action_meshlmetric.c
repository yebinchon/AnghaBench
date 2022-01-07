
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ieee80211_node {int dummy; } ;
struct ieee80211_meshlmetric_ie {int lm_flags; int lm_metric; } ;
struct ieee80211_frame {int dummy; } ;


 int IEEE80211_ACTION_CAT_MESH ;
 int IEEE80211_ACTION_MESH_LMETRIC ;
 int IEEE80211_MESH_LMETRIC_FLAGS_REQ ;
 int ieee80211_send_action (struct ieee80211_node*,int ,int ,struct ieee80211_meshlmetric_ie*) ;
 int mesh_airtime_calc (struct ieee80211_node*) ;

__attribute__((used)) static int
mesh_recv_action_meshlmetric(struct ieee80211_node *ni,
 const struct ieee80211_frame *wh,
 const uint8_t *frm, const uint8_t *efrm)
{
 const struct ieee80211_meshlmetric_ie *ie =
     (const struct ieee80211_meshlmetric_ie *)
     (frm+2);
 struct ieee80211_meshlmetric_ie lm_rep;

 if (ie->lm_flags & IEEE80211_MESH_LMETRIC_FLAGS_REQ) {
  lm_rep.lm_flags = 0;
  lm_rep.lm_metric = mesh_airtime_calc(ni);
  ieee80211_send_action(ni,
      IEEE80211_ACTION_CAT_MESH,
      IEEE80211_ACTION_MESH_LMETRIC,
      &lm_rep);
 }

 return 0;
}
