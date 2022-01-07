
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mbuf {int dummy; } ;
struct ieee80211vap {int iv_ic; struct ieee80211_mesh_state* iv_mesh; } ;
struct ieee80211_qosframe_addr4 {int i_addr2; int i_addr3; int i_addr4; } ;
struct ieee80211_meshcntl_ae10 {int mc_flags; int mc_addr5; int mc_addr6; } ;
struct ieee80211_meshcntl {int dummy; } ;
struct ieee80211_mesh_state {TYPE_1__* ms_ppath; } ;
struct ieee80211_mesh_route {int rt_flags; } ;
struct ieee80211_frame {int dummy; } ;
struct TYPE_2__ {int mpp_inact; } ;


 int IEEE80211_ADDR_COPY (int ,int ) ;
 scalar_t__ IEEE80211_ADDR_EQ (int ,int ) ;
 int IEEE80211_MESHRT_FLAGS_PROXY ;
 int IEEE80211_MESHRT_FLAGS_VALID ;
 int IEEE80211_MESH_AE_00 ;
 int IEEE80211_MESH_AE_10 ;
 int IEEE80211_MESH_AE_MASK ;
 int IEEE80211_MSG_OUTPUT ;
 int IEEE80211_NOTE_MAC (struct ieee80211vap*,int ,int ,char*,int ,char*,int ,char*) ;
 int IEEE80211_TX_UNLOCK_ASSERT (int ) ;
 int KASSERT (int,char*) ;
 struct ieee80211_mesh_route* ieee80211_mesh_rt_find (struct ieee80211vap*,int ) ;
 int ieee80211_mesh_rt_update (struct ieee80211_mesh_route*,int ) ;
 int mesh_forward (struct ieee80211vap*,struct mbuf*,struct ieee80211_meshcntl const*) ;
 int ticks_to_msecs (int ) ;

__attribute__((used)) static int
mesh_recv_indiv_data_to_me(struct ieee80211vap *vap, struct mbuf *m,
    struct ieee80211_frame *wh, const struct ieee80211_meshcntl *mc)
{
 struct ieee80211_qosframe_addr4 *qwh;
 const struct ieee80211_meshcntl_ae10 *mc10;
 struct ieee80211_mesh_state *ms = vap->iv_mesh;
 struct ieee80211_mesh_route *rt;
 int ae;


 IEEE80211_TX_UNLOCK_ASSERT(vap->iv_ic);

 qwh = (struct ieee80211_qosframe_addr4 *)wh;
 mc10 = (const struct ieee80211_meshcntl_ae10 *)mc;
 rt = ieee80211_mesh_rt_find(vap, qwh->i_addr4);
 KASSERT(rt != ((void*)0), ("no route"));
 ieee80211_mesh_rt_update(rt, ticks_to_msecs(ms->ms_ppath->mpp_inact));
 rt = ((void*)0);

 ae = mc10->mc_flags & IEEE80211_MESH_AE_MASK;
 KASSERT(ae == IEEE80211_MESH_AE_00 ||
     ae == IEEE80211_MESH_AE_10, ("bad AE %d", ae));
 if (ae == IEEE80211_MESH_AE_10) {
  if (IEEE80211_ADDR_EQ(mc10->mc_addr5, qwh->i_addr3)) {
   return (0);
  }

  rt = ieee80211_mesh_rt_find(vap, mc10->mc_addr5);
  if (rt != ((void*)0) &&
      (rt->rt_flags & IEEE80211_MESHRT_FLAGS_VALID) &&
      (rt->rt_flags & IEEE80211_MESHRT_FLAGS_PROXY) == 0) {




   IEEE80211_ADDR_COPY(qwh->i_addr3, mc10->mc_addr5);
   mesh_forward(vap, m,
       (const struct ieee80211_meshcntl *)mc10);
   return (1);
  }




  IEEE80211_NOTE_MAC(vap, IEEE80211_MSG_OUTPUT, qwh->i_addr2,
      "forward frame to DS, SA(%6D) DA(%6D)",
      mc10->mc_addr6, ":", mc10->mc_addr5, ":");
 }
 return (0);
}
