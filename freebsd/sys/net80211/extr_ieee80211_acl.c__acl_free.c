
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aclstate {int as_nacls; int as_list; } ;
struct acl {int dummy; } ;


 int ACL_LOCK_ASSERT (struct aclstate*) ;
 int IEEE80211_FREE (struct acl*,int ) ;
 int LIST_REMOVE (struct acl*,int ) ;
 int M_80211_ACL ;
 int TAILQ_REMOVE (int *,struct acl*,int ) ;
 int acl_hash ;
 int acl_list ;

__attribute__((used)) static void
_acl_free(struct aclstate *as, struct acl *acl)
{
 ACL_LOCK_ASSERT(as);

 TAILQ_REMOVE(&as->as_list, acl, acl_list);
 LIST_REMOVE(acl, acl_hash);
 IEEE80211_FREE(acl, M_80211_ACL);
 as->as_nacls--;
}
