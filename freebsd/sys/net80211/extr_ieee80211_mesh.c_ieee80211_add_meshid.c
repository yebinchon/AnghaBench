
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ieee80211vap {scalar_t__ iv_opmode; struct ieee80211_mesh_state* iv_mesh; } ;
struct ieee80211_mesh_state {int ms_idlen; int ms_id; } ;


 int IEEE80211_ELEMID_MESHID ;
 scalar_t__ IEEE80211_M_MBSS ;
 int KASSERT (int,char*) ;
 int memcpy (int *,int ,int) ;

uint8_t *
ieee80211_add_meshid(uint8_t *frm, struct ieee80211vap *vap)
{
 struct ieee80211_mesh_state *ms = vap->iv_mesh;

 KASSERT(vap->iv_opmode == IEEE80211_M_MBSS, ("not a mbss vap"));

 *frm++ = IEEE80211_ELEMID_MESHID;
 *frm++ = ms->ms_idlen;
 memcpy(frm, ms->ms_id, ms->ms_idlen);
 return frm + ms->ms_idlen;
}
