
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acl_entry {int ae_flags; int ae_tag; scalar_t__ ae_entry_type; int ae_perm; } ;
struct acl {int acl_cnt; struct acl_entry* acl_entry; } ;
typedef int mode_t ;


 int ACL_APPEND_DATA ;
 int ACL_ENTRY_DIRECTORY_INHERIT ;
 int ACL_ENTRY_FILE_INHERIT ;
 int ACL_ENTRY_INHERITED ;
 int ACL_ENTRY_INHERIT_ONLY ;
 int ACL_ENTRY_NO_PROPAGATE_INHERIT ;
 scalar_t__ ACL_ENTRY_TYPE_ALLOW ;
 scalar_t__ ACL_ENTRY_TYPE_DENY ;
 int ACL_EVERYONE ;
 int ACL_EXECUTE ;
 int ACL_GROUP_OBJ ;
 int ACL_MAX_ENTRIES ;
 int ACL_READ_DATA ;
 int ACL_USER_OBJ ;
 int ACL_WRITE_ACL ;
 int ACL_WRITE_ATTRIBUTES ;
 int ACL_WRITE_DATA ;
 int ACL_WRITE_NAMED_ATTRS ;
 int ACL_WRITE_OWNER ;
 int KASSERT (int,char*) ;
 int S_IRGRP ;
 int S_IWGRP ;
 int S_IXGRP ;

__attribute__((used)) static void
acl_nfs4_inherit_entries(const struct acl *parent_aclp,
    struct acl *child_aclp, mode_t mode, int file_owner_id,
    int is_directory)
{
 int i, flags, tag;
 const struct acl_entry *parent_entry;
 struct acl_entry *entry;

 KASSERT(parent_aclp->acl_cnt <= ACL_MAX_ENTRIES,
     ("parent_aclp->acl_cnt <= ACL_MAX_ENTRIES"));

 for (i = 0; i < parent_aclp->acl_cnt; i++) {
  parent_entry = &(parent_aclp->acl_entry[i]);
  flags = parent_entry->ae_flags;
  tag = parent_entry->ae_tag;




  if (tag == ACL_USER_OBJ || tag == ACL_GROUP_OBJ ||
      tag == ACL_EVERYONE)
   continue;




  if ((flags & (ACL_ENTRY_DIRECTORY_INHERIT |
      ACL_ENTRY_FILE_INHERIT)) == 0)
   continue;





  if (!is_directory && (flags & ACL_ENTRY_FILE_INHERIT) == 0)
   continue;






  if (is_directory &&
      (flags & ACL_ENTRY_DIRECTORY_INHERIT) == 0 &&
      (flags & ACL_ENTRY_NO_PROPAGATE_INHERIT))
   continue;




  KASSERT(child_aclp->acl_cnt + 1 <= ACL_MAX_ENTRIES,
      ("child_aclp->acl_cnt + 1 <= ACL_MAX_ENTRIES"));
  entry = &(child_aclp->acl_entry[child_aclp->acl_cnt]);
  *entry = *parent_entry;
  child_aclp->acl_cnt++;

  entry->ae_flags &= ~ACL_ENTRY_INHERIT_ONLY;
  entry->ae_flags |= ACL_ENTRY_INHERITED;





  if (entry->ae_entry_type != ACL_ENTRY_TYPE_ALLOW &&
      entry->ae_entry_type != ACL_ENTRY_TYPE_DENY)
   continue;
  if (entry->ae_flags & ACL_ENTRY_NO_PROPAGATE_INHERIT ||
      !is_directory) {
   entry->ae_flags &= ~(ACL_ENTRY_NO_PROPAGATE_INHERIT |
   ACL_ENTRY_FILE_INHERIT | ACL_ENTRY_DIRECTORY_INHERIT |
   ACL_ENTRY_INHERIT_ONLY);
  }






  if (is_directory &&
      (entry->ae_flags & ACL_ENTRY_FILE_INHERIT) &&
      ((entry->ae_flags & ACL_ENTRY_DIRECTORY_INHERIT) == 0)) {
   entry->ae_flags |= ACL_ENTRY_INHERIT_ONLY;
  }

  if (entry->ae_entry_type == ACL_ENTRY_TYPE_ALLOW &&
      (entry->ae_flags & ACL_ENTRY_INHERIT_ONLY) == 0) {



   entry->ae_perm &= ~(ACL_WRITE_ACL | ACL_WRITE_OWNER |
       ACL_WRITE_NAMED_ATTRS | ACL_WRITE_ATTRIBUTES);




   if ((mode & S_IRGRP) == 0)
    entry->ae_perm &= ~ACL_READ_DATA;
   if ((mode & S_IWGRP) == 0)
    entry->ae_perm &=
        ~(ACL_WRITE_DATA | ACL_APPEND_DATA);
   if ((mode & S_IXGRP) == 0)
    entry->ae_perm &= ~ACL_EXECUTE;
  }
 }
}
