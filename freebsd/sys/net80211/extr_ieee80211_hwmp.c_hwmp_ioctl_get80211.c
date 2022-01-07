
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211vap {scalar_t__ iv_opmode; struct ieee80211_hwmp_state* iv_hwmp; } ;
struct ieee80211req {int i_type; int i_val; } ;
struct ieee80211_hwmp_state {int hs_maxhops; int hs_rootmode; } ;


 int ENOSYS ;


 scalar_t__ IEEE80211_M_MBSS ;

__attribute__((used)) static int
hwmp_ioctl_get80211(struct ieee80211vap *vap, struct ieee80211req *ireq)
{
 struct ieee80211_hwmp_state *hs = vap->iv_hwmp;
 int error;

 if (vap->iv_opmode != IEEE80211_M_MBSS)
  return ENOSYS;
 error = 0;
 switch (ireq->i_type) {
 case 128:
  ireq->i_val = hs->hs_rootmode;
  break;
 case 129:
  ireq->i_val = hs->hs_maxhops;
  break;
 default:
  return ENOSYS;
 }
 return error;
}
