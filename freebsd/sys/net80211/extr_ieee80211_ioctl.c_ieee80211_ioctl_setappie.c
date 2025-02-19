
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ieee80211vap {struct ieee80211com* iv_ic; } ;
struct ieee80211req {int i_val; } ;
struct ieee80211com {int dummy; } ;


 int EINVAL ;
 int IEEE80211_FC0_TYPE_MASK ;
 int IEEE80211_FC0_TYPE_MGT ;
 int IEEE80211_LOCK (struct ieee80211com*) ;
 int IEEE80211_UNLOCK (struct ieee80211com*) ;
 int ieee80211_ioctl_setappie_locked (struct ieee80211vap*,struct ieee80211req const*,int) ;

__attribute__((used)) static int
ieee80211_ioctl_setappie(struct ieee80211vap *vap,
 const struct ieee80211req *ireq)
{
 struct ieee80211com *ic = vap->iv_ic;
 int error;
 uint8_t fc0;

 fc0 = ireq->i_val & 0xff;
 if ((fc0 & IEEE80211_FC0_TYPE_MASK) != IEEE80211_FC0_TYPE_MGT)
  return EINVAL;

 IEEE80211_LOCK(ic);
 error = ieee80211_ioctl_setappie_locked(vap, ireq, fc0);
 IEEE80211_UNLOCK(ic);
 return error;
}
