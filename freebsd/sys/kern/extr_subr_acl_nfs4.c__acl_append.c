
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acl_entry {scalar_t__ ae_flags; int ae_entry_type; int ae_perm; int ae_id; int ae_tag; } ;
struct acl {int acl_cnt; struct acl_entry* acl_entry; } ;
typedef int acl_tag_t ;
typedef int acl_perm_t ;
typedef int acl_entry_type_t ;


 int ACL_MAX_ENTRIES ;
 int ACL_UNDEFINED_ID ;
 int KASSERT (int,char*) ;

__attribute__((used)) static struct acl_entry *
_acl_append(struct acl *aclp, acl_tag_t tag, acl_perm_t perm,
    acl_entry_type_t entry_type)
{
 struct acl_entry *entry;

 KASSERT(aclp->acl_cnt + 1 <= ACL_MAX_ENTRIES,
     ("aclp->acl_cnt + 1 <= ACL_MAX_ENTRIES"));

 entry = &(aclp->acl_entry[aclp->acl_cnt]);
 aclp->acl_cnt++;

 entry->ae_tag = tag;
 entry->ae_id = ACL_UNDEFINED_ID;
 entry->ae_perm = perm;
 entry->ae_entry_type = entry_type;
 entry->ae_flags = 0;

 return (entry);
}
