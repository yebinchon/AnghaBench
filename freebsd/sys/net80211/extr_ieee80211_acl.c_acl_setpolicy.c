
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211vap {struct aclstate* iv_as; } ;
struct aclstate {int as_policy; } ;


 int ACL_POLICY_ALLOW ;
 int ACL_POLICY_DENY ;
 int ACL_POLICY_OPEN ;
 int ACL_POLICY_RADIUS ;
 int EINVAL ;
 int IEEE80211_DPRINTF (struct ieee80211vap*,int ,char*,int) ;




 int IEEE80211_MSG_ACL ;

__attribute__((used)) static int
acl_setpolicy(struct ieee80211vap *vap, int policy)
{
 struct aclstate *as = vap->iv_as;

 IEEE80211_DPRINTF(vap, IEEE80211_MSG_ACL,
  "ACL: set policy to %u\n", policy);

 switch (policy) {
 case 129:
  as->as_policy = ACL_POLICY_OPEN;
  break;
 case 131:
  as->as_policy = ACL_POLICY_ALLOW;
  break;
 case 130:
  as->as_policy = ACL_POLICY_DENY;
  break;
 case 128:
  as->as_policy = ACL_POLICY_RADIUS;
  break;
 default:
  return EINVAL;
 }
 return 0;
}
