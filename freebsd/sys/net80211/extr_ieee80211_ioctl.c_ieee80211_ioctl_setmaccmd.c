
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211vap {struct ieee80211_aclator const* iv_acl; } ;
struct ieee80211req {int i_val; } ;
typedef struct ieee80211_aclator {int (* iac_setioctl ) (struct ieee80211vap*,struct ieee80211req*) ;int (* iac_detach ) (struct ieee80211vap*) ;int (* iac_flush ) (struct ieee80211vap*) ;int (* iac_setpolicy ) (struct ieee80211vap*,int) ;int (* iac_attach ) (struct ieee80211vap*) ;} const ieee80211_aclator ;


 int EINVAL ;






 struct ieee80211_aclator const* ieee80211_aclator_get (char*) ;
 int stub1 (struct ieee80211vap*) ;
 int stub2 (struct ieee80211vap*,int) ;
 int stub3 (struct ieee80211vap*) ;
 int stub4 (struct ieee80211vap*) ;
 int stub5 (struct ieee80211vap*,struct ieee80211req*) ;

__attribute__((used)) static int
ieee80211_ioctl_setmaccmd(struct ieee80211vap *vap, struct ieee80211req *ireq)
{
 const struct ieee80211_aclator *acl = vap->iv_acl;

 switch (ireq->i_val) {
 case 129:
 case 131:
 case 130:
 case 128:
  if (acl == ((void*)0)) {
   acl = ieee80211_aclator_get("mac");
   if (acl == ((void*)0) || !acl->iac_attach(vap))
    return EINVAL;
   vap->iv_acl = acl;
  }
  acl->iac_setpolicy(vap, ireq->i_val);
  break;
 case 132:
  if (acl != ((void*)0))
   acl->iac_flush(vap);

  break;
 case 133:
  if (acl != ((void*)0)) {
   vap->iv_acl = ((void*)0);
   acl->iac_detach(vap);
  }
  break;
 default:
  if (acl == ((void*)0))
   return EINVAL;
  else
   return acl->iac_setioctl(vap, ireq);
 }
 return 0;
}
