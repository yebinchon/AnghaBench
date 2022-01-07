
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211vap {struct aclstate* iv_as; } ;
struct aclstate {int as_list; } ;
struct acl {int dummy; } ;


 int ACL_LOCK (struct aclstate*) ;
 int ACL_UNLOCK (struct aclstate*) ;
 int IEEE80211_DPRINTF (struct ieee80211vap*,int ,char*,char*) ;
 int IEEE80211_MSG_ACL ;
 struct acl* TAILQ_FIRST (int *) ;
 int _acl_free (struct aclstate*,struct acl*) ;

__attribute__((used)) static int
acl_free_all(struct ieee80211vap *vap)
{
 struct aclstate *as = vap->iv_as;
 struct acl *acl;

 IEEE80211_DPRINTF(vap, IEEE80211_MSG_ACL, "ACL: %s\n", "free all");

 ACL_LOCK(as);
 while ((acl = TAILQ_FIRST(&as->as_list)) != ((void*)0))
  _acl_free(as, acl);
 ACL_UNLOCK(as);

 return 0;
}
