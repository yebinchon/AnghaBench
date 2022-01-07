
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mbuf {int dummy; } ;
struct ieee80211vap {int iv_ic; struct ieee80211_mesh_state* iv_mesh; } ;
struct ieee80211_qosframe_addr4 {int i_addr4; int i_addr3; int i_addr2; } ;
struct ieee80211_meshcntl {int dummy; } ;
struct ieee80211_mesh_state {TYPE_1__* ms_ppath; } ;
struct ieee80211_mesh_route {int dummy; } ;
struct ieee80211_frame {int dummy; } ;
struct TYPE_2__ {int mpp_inact; } ;


 int IEEE80211_MSG_MESH ;
 int IEEE80211_NOTE_MAC (struct ieee80211vap*,int ,int ,char*,int ,char*) ;
 int IEEE80211_TX_UNLOCK_ASSERT (int ) ;
 int KASSERT (int ,char*) ;
 struct ieee80211_mesh_route* ieee80211_mesh_rt_find (struct ieee80211vap*,int ) ;
 int ieee80211_mesh_rt_update (struct ieee80211_mesh_route*,int ) ;
 int mesh_forward (struct ieee80211vap*,struct mbuf*,struct ieee80211_meshcntl const*) ;
 int ticks_to_msecs (int ) ;

__attribute__((used)) static int
mesh_recv_indiv_data_to_fwrd(struct ieee80211vap *vap, struct mbuf *m,
    struct ieee80211_frame *wh, const struct ieee80211_meshcntl *mc)
{
 struct ieee80211_qosframe_addr4 *qwh;
 struct ieee80211_mesh_state *ms = vap->iv_mesh;
 struct ieee80211_mesh_route *rt_meshda, *rt_meshsa;


 IEEE80211_TX_UNLOCK_ASSERT(vap->iv_ic);

 qwh = (struct ieee80211_qosframe_addr4 *)wh;
 rt_meshda = ieee80211_mesh_rt_find(vap, qwh->i_addr3);
 if (rt_meshda == ((void*)0)) {
  IEEE80211_NOTE_MAC(vap, IEEE80211_MSG_MESH, qwh->i_addr2,
      "no route to meshDA(%6D)", qwh->i_addr3, ":");







  return (-1);
 }

 ieee80211_mesh_rt_update(rt_meshda, ticks_to_msecs(
     ms->ms_ppath->mpp_inact));


 rt_meshsa = ieee80211_mesh_rt_find(vap, qwh->i_addr4);
 KASSERT(rt_meshsa != ((void*)0), ("no route"));
 ieee80211_mesh_rt_update(rt_meshsa, ticks_to_msecs(
     ms->ms_ppath->mpp_inact));

 mesh_forward(vap, m, mc);
 return (1);
}
