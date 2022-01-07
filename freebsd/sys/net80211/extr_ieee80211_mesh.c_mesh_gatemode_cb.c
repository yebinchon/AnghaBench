
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211vap {int iv_bss; int iv_myaddr; struct ieee80211_mesh_state* iv_mesh; } ;
struct ieee80211_meshgann_ie {scalar_t__ gann_seq; int gann_interval; int gann_addr; int gann_ttl; scalar_t__ gann_hopcount; scalar_t__ gann_flags; } ;
struct ieee80211_mesh_state {int ms_gateseq; int ms_ttl; } ;


 int IEEE80211_ACTION_CAT_MESH ;
 int IEEE80211_ACTION_MESH_GANN ;
 int IEEE80211_ADDR_COPY (int ,int ) ;
 int IEEE80211_MSG_MESH ;
 int IEEE80211_NOTE (struct ieee80211vap*,int ,int ,char*,scalar_t__) ;
 int ieee80211_mesh_gateint ;
 int ieee80211_send_action (int ,int ,int ,struct ieee80211_meshgann_ie*) ;
 int mesh_gatemode_setup (struct ieee80211vap*) ;

__attribute__((used)) static void
mesh_gatemode_cb(void *arg)
{
 struct ieee80211vap *vap = (struct ieee80211vap *)arg;
 struct ieee80211_mesh_state *ms = vap->iv_mesh;
 struct ieee80211_meshgann_ie gann;

 gann.gann_flags = 0;
 gann.gann_hopcount = 0;
 gann.gann_ttl = ms->ms_ttl;
 IEEE80211_ADDR_COPY(gann.gann_addr, vap->iv_myaddr);
 gann.gann_seq = ms->ms_gateseq++;
 gann.gann_interval = ieee80211_mesh_gateint;

 IEEE80211_NOTE(vap, IEEE80211_MSG_MESH, vap->iv_bss,
     "send broadcast GANN (seq %u)", gann.gann_seq);

 ieee80211_send_action(vap->iv_bss, IEEE80211_ACTION_CAT_MESH,
     IEEE80211_ACTION_MESH_GANN, &gann);
 mesh_gatemode_setup(vap);
}
