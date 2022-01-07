
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ieee80211vap {struct ieee80211_aclator const* iv_acl; } ;
struct ieee80211req {int i_len; scalar_t__ i_type; int i_data; } ;
typedef struct ieee80211_aclator {int (* iac_remove ) (struct ieee80211vap*,int *) ;int (* iac_add ) (struct ieee80211vap*,int *) ;int (* iac_attach ) (struct ieee80211vap*) ;} const ieee80211_aclator ;
typedef int mac ;


 int EINVAL ;
 int IEEE80211_ADDR_LEN ;
 scalar_t__ IEEE80211_IOC_ADDMAC ;
 int copyin (int ,int *,int) ;
 struct ieee80211_aclator const* ieee80211_aclator_get (char*) ;
 int stub1 (struct ieee80211vap*) ;
 int stub2 (struct ieee80211vap*,int *) ;
 int stub3 (struct ieee80211vap*,int *) ;

__attribute__((used)) static int
ieee80211_ioctl_macmac(struct ieee80211vap *vap, struct ieee80211req *ireq)
{
 uint8_t mac[IEEE80211_ADDR_LEN];
 const struct ieee80211_aclator *acl = vap->iv_acl;
 int error;

 if (ireq->i_len != sizeof(mac))
  return EINVAL;
 error = copyin(ireq->i_data, mac, ireq->i_len);
 if (error)
  return error;
 if (acl == ((void*)0)) {
  acl = ieee80211_aclator_get("mac");
  if (acl == ((void*)0) || !acl->iac_attach(vap))
   return EINVAL;
  vap->iv_acl = acl;
 }
 if (ireq->i_type == IEEE80211_IOC_ADDMAC)
  acl->iac_add(vap, mac);
 else
  acl->iac_remove(vap, mac);
 return 0;
}
