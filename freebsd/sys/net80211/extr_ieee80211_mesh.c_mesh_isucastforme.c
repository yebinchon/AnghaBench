
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211vap {int iv_myaddr; } ;
struct ieee80211_meshcntl_ae10 {int mc_addr5; } ;
struct ieee80211_meshcntl {int mc_flags; } ;
struct ieee80211_mesh_route {int rt_flags; } ;
struct ieee80211_frame {int* i_fc; int i_addr3; } ;


 int IEEE80211_ADDR_EQ (int ,int ) ;
 int IEEE80211_FC1_DIR_DSTODS ;
 int IEEE80211_FC1_DIR_MASK ;
 int IEEE80211_MESHRT_FLAGS_PROXY ;
 int IEEE80211_MESH_AE_00 ;
 int IEEE80211_MESH_AE_10 ;
 int KASSERT (int,char*) ;
 struct ieee80211_mesh_route* ieee80211_mesh_rt_find (struct ieee80211vap*,int ) ;

__attribute__((used)) static __inline int
mesh_isucastforme(struct ieee80211vap *vap, const struct ieee80211_frame *wh,
    const struct ieee80211_meshcntl *mc)
{
 int ae = mc->mc_flags & 3;

 KASSERT((wh->i_fc[1] & IEEE80211_FC1_DIR_MASK) == IEEE80211_FC1_DIR_DSTODS,
     ("bad dir 0x%x:0x%x", wh->i_fc[0], wh->i_fc[1]));
 KASSERT(ae == IEEE80211_MESH_AE_00 || ae == IEEE80211_MESH_AE_10,
     ("bad AE %d", ae));
 if (ae == IEEE80211_MESH_AE_10) {
  const struct ieee80211_meshcntl_ae10 *mc10 =
      (const struct ieee80211_meshcntl_ae10 *) mc;
  struct ieee80211_mesh_route *rt =
      ieee80211_mesh_rt_find(vap, mc10->mc_addr5);

  return (rt != ((void*)0) &&
      (rt->rt_flags & IEEE80211_MESHRT_FLAGS_PROXY));
 } else
  return IEEE80211_ADDR_EQ(wh->i_addr3, vap->iv_myaddr);
}
