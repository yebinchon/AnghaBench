
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct ieee80211vap {struct ieee80211_mesh_state* iv_mesh; } ;
struct ieee80211_mesh_state {scalar_t__ const ms_idlen; int ms_id; } ;


 int memcmp (int ,scalar_t__ const*,scalar_t__ const) ;

__attribute__((used)) static int
mesh_verify_meshid(struct ieee80211vap *vap, const uint8_t *ie)
{
 struct ieee80211_mesh_state *ms = vap->iv_mesh;

 if (ie == ((void*)0) || ie[1] != ms->ms_idlen)
  return 1;
 return memcmp(ms->ms_id, ie + 2, ms->ms_idlen);
}
