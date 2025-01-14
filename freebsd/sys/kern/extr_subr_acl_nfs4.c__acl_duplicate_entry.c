
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acl_entry {int dummy; } ;
struct acl {int acl_cnt; struct acl_entry* acl_entry; } ;


 int ACL_MAX_ENTRIES ;
 int KASSERT (int,char*) ;

__attribute__((used)) static struct acl_entry *
_acl_duplicate_entry(struct acl *aclp, int entry_index)
{
 int i;

 KASSERT(aclp->acl_cnt + 1 <= ACL_MAX_ENTRIES,
     ("aclp->acl_cnt + 1 <= ACL_MAX_ENTRIES"));

 for (i = aclp->acl_cnt; i > entry_index; i--)
  aclp->acl_entry[i] = aclp->acl_entry[i - 1];

 aclp->acl_cnt++;

 return (&(aclp->acl_entry[entry_index + 1]));
}
