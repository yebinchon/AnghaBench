
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211vap {struct aclstate* iv_as; } ;
struct aclstate {struct ieee80211vap* as_vap; int as_policy; int as_list; } ;


 int ACL_LOCK_INIT (struct aclstate*,char*) ;
 int ACL_POLICY_OPEN ;
 scalar_t__ IEEE80211_MALLOC (int,int ,int) ;
 int IEEE80211_M_NOWAIT ;
 int IEEE80211_M_ZERO ;
 int M_80211_ACL ;
 int TAILQ_INIT (int *) ;
 int nrefs ;

__attribute__((used)) static int
acl_attach(struct ieee80211vap *vap)
{
 struct aclstate *as;

 as = (struct aclstate *) IEEE80211_MALLOC(sizeof(struct aclstate),
  M_80211_ACL, IEEE80211_M_NOWAIT | IEEE80211_M_ZERO);
 if (as == ((void*)0))
  return 0;
 ACL_LOCK_INIT(as, "acl");
 TAILQ_INIT(&as->as_list);
 as->as_policy = ACL_POLICY_OPEN;
 as->as_vap = vap;
 vap->iv_as = as;
 nrefs++;
 return 1;
}
