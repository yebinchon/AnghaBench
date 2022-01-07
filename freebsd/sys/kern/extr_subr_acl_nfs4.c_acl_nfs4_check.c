
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acl_entry {int ae_tag; int ae_perm; scalar_t__ ae_entry_type; int ae_flags; int ae_id; } ;
struct acl {int acl_cnt; struct acl_entry* acl_entry; } ;


 int ACL_ENTRY_DIRECTORY_INHERIT ;
 int ACL_ENTRY_FAILED_ACCESS ;
 int ACL_ENTRY_FILE_INHERIT ;
 int ACL_ENTRY_INHERIT_ONLY ;
 int ACL_ENTRY_NO_PROPAGATE_INHERIT ;
 int ACL_ENTRY_SUCCESSFUL_ACCESS ;
 scalar_t__ ACL_ENTRY_TYPE_ALLOW ;
 scalar_t__ ACL_ENTRY_TYPE_DENY ;

 int ACL_FLAGS_BITS ;


 int ACL_MAX_ENTRIES ;
 int ACL_NFS4_PERM_BITS ;
 int ACL_UNDEFINED_ID ;


 int EINVAL ;

int
acl_nfs4_check(const struct acl *aclp, int is_directory)
{
 int i;
 const struct acl_entry *entry;
 if (aclp->acl_cnt > ACL_MAX_ENTRIES || aclp->acl_cnt <= 0)
  return (EINVAL);

 for (i = 0; i < aclp->acl_cnt; i++) {
  entry = &(aclp->acl_entry[i]);

  switch (entry->ae_tag) {
  case 128:
  case 130:
  case 132:
   if (entry->ae_id != ACL_UNDEFINED_ID)
    return (EINVAL);
   break;

  case 129:
  case 131:
   if (entry->ae_id == ACL_UNDEFINED_ID)
    return (EINVAL);
   break;

  default:
   return (EINVAL);
  }

  if ((entry->ae_perm | ACL_NFS4_PERM_BITS) != ACL_NFS4_PERM_BITS)
   return (EINVAL);




  if (entry->ae_entry_type != ACL_ENTRY_TYPE_ALLOW &&
      entry->ae_entry_type != ACL_ENTRY_TYPE_DENY)
   return (EINVAL);

  if ((entry->ae_flags | ACL_FLAGS_BITS) != ACL_FLAGS_BITS)
   return (EINVAL);


  if (entry->ae_flags & (ACL_ENTRY_SUCCESSFUL_ACCESS |
      ACL_ENTRY_FAILED_ACCESS))
   return (EINVAL);


  if (!is_directory) {
   if (entry->ae_flags & (ACL_ENTRY_FILE_INHERIT |
       ACL_ENTRY_DIRECTORY_INHERIT |
       ACL_ENTRY_NO_PROPAGATE_INHERIT | ACL_ENTRY_INHERIT_ONLY))
    return (EINVAL);
  }
 }

 return (0);
}
