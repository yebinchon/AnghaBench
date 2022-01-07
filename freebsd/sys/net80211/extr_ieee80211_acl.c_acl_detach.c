
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211vap {struct aclstate* iv_as; } ;
struct aclstate {int dummy; } ;


 int ACL_LOCK_DESTROY (struct aclstate*) ;
 int IEEE80211_FREE (struct aclstate*,int ) ;
 int KASSERT (int,char*) ;
 int M_80211_ACL ;
 int acl_free_all (struct ieee80211vap*) ;
 scalar_t__ nrefs ;

__attribute__((used)) static void
acl_detach(struct ieee80211vap *vap)
{
 struct aclstate *as = vap->iv_as;

 KASSERT(nrefs > 0, ("imbalanced attach/detach"));
 nrefs--;

 acl_free_all(vap);
 vap->iv_as = ((void*)0);
 ACL_LOCK_DESTROY(as);
 IEEE80211_FREE(as, M_80211_ACL);
}
