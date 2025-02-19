
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acl_entry {scalar_t__ ae_tag; scalar_t__ ae_id; scalar_t__ ae_perm; scalar_t__ ae_entry_type; scalar_t__ ae_flags; } ;
typedef scalar_t__ acl_tag_t ;
typedef scalar_t__ acl_perm_t ;
typedef scalar_t__ acl_entry_type_t ;


 scalar_t__ ACL_UNDEFINED_ID ;

__attribute__((used)) static int
_acl_entry_matches(struct acl_entry *entry, acl_tag_t tag, acl_perm_t perm,
    acl_entry_type_t entry_type)
{
 if (entry->ae_tag != tag)
  return (0);

 if (entry->ae_id != ACL_UNDEFINED_ID)
  return (0);

 if (entry->ae_perm != perm)
  return (0);

 if (entry->ae_entry_type != entry_type)
  return (0);

 if (entry->ae_flags != 0)
  return (0);

 return (1);
}
