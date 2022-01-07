
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211vap {struct ieee80211_aclator* iv_acl; } ;
struct ieee80211req {int dummy; } ;
struct ieee80211_aclator {int (* iac_getioctl ) (struct ieee80211vap*,struct ieee80211req*) ;} ;


 int EINVAL ;
 int stub1 (struct ieee80211vap*,struct ieee80211req*) ;

__attribute__((used)) static int
ieee80211_ioctl_getmaccmd(struct ieee80211vap *vap, struct ieee80211req *ireq)
{
 const struct ieee80211_aclator *acl = vap->iv_acl;

 return (acl == ((void*)0) ? EINVAL : acl->iac_getioctl(vap, ireq));
}
