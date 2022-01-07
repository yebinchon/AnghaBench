
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int is_hwmp_rootrann; } ;
struct ieee80211vap {TYPE_1__ iv_stats; int iv_myaddr; int iv_bss; struct ieee80211_mesh_state* iv_mesh; struct ieee80211_hwmp_state* iv_hwmp; } ;
struct ieee80211_meshrann_ie {int rann_flags; int rann_metric; int rann_interval; scalar_t__ rann_seq; int rann_addr; int rann_ttl; scalar_t__ rann_hopcount; } ;
struct ieee80211_mesh_state {int ms_flags; int ms_ttl; } ;
struct ieee80211_hwmp_state {scalar_t__ hs_seq; } ;


 int IEEE80211_ADDR_COPY (int ,int ) ;
 int IEEE80211_MESHFLAGS_GATE ;
 int IEEE80211_MESHLMETRIC_INITIALVAL ;
 int IEEE80211_MSG_HWMP ;
 int IEEE80211_NOTE (struct ieee80211vap*,int ,int ,char*,char*) ;
 int broadcastaddr ;
 int hwmp_rootmode_setup (struct ieee80211vap*) ;
 int hwmp_send_rann (struct ieee80211vap*,int ,struct ieee80211_meshrann_ie*) ;
 int ieee80211_hwmp_rannint ;

__attribute__((used)) static void
hwmp_rootmode_rann_cb(void *arg)
{
 struct ieee80211vap *vap = (struct ieee80211vap *)arg;
 struct ieee80211_hwmp_state *hs = vap->iv_hwmp;
 struct ieee80211_mesh_state *ms = vap->iv_mesh;
 struct ieee80211_meshrann_ie rann;

 IEEE80211_NOTE(vap, IEEE80211_MSG_HWMP, vap->iv_bss,
     "%s", "send broadcast RANN");

 rann.rann_flags = 0;
 if (ms->ms_flags & IEEE80211_MESHFLAGS_GATE)
  rann.rann_flags |= IEEE80211_MESHFLAGS_GATE;
 rann.rann_hopcount = 0;
 rann.rann_ttl = ms->ms_ttl;
 IEEE80211_ADDR_COPY(rann.rann_addr, vap->iv_myaddr);
 rann.rann_seq = ++hs->hs_seq;
 rann.rann_interval = ieee80211_hwmp_rannint;
 rann.rann_metric = IEEE80211_MESHLMETRIC_INITIALVAL;

 vap->iv_stats.is_hwmp_rootrann++;
 hwmp_send_rann(vap, broadcastaddr, &rann);
 hwmp_rootmode_setup(vap);
}
