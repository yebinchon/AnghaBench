
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211vap {struct ieee80211com* iv_ic; } ;
struct ieee80211req {int i_len; int i_data; } ;
struct ieee80211com {int ic_regdomain; } ;


 int EINVAL ;
 int copyout (int *,int ,int) ;

__attribute__((used)) static int
ieee80211_ioctl_getregdomain(struct ieee80211vap *vap,
 const struct ieee80211req *ireq)
{
 struct ieee80211com *ic = vap->iv_ic;

 if (ireq->i_len != sizeof(ic->ic_regdomain))
  return EINVAL;
 return copyout(&ic->ic_regdomain, ireq->i_data,
     sizeof(ic->ic_regdomain));
}
