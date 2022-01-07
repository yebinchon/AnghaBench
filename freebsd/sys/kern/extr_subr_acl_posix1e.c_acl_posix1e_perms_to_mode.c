
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acl_entry {int ae_perm; } ;
typedef int mode_t ;


 int ACL_EXECUTE ;
 int ACL_READ ;
 int ACL_WRITE ;
 int S_IRGRP ;
 int S_IROTH ;
 int S_IRUSR ;
 int S_IWGRP ;
 int S_IWOTH ;
 int S_IWUSR ;
 int S_IXGRP ;
 int S_IXOTH ;
 int S_IXUSR ;

mode_t
acl_posix1e_perms_to_mode(struct acl_entry *acl_user_obj_entry,
    struct acl_entry *acl_group_obj_entry, struct acl_entry *acl_other_entry)
{
 mode_t mode;

 mode = 0;
 if (acl_user_obj_entry->ae_perm & ACL_EXECUTE)
  mode |= S_IXUSR;
 if (acl_user_obj_entry->ae_perm & ACL_READ)
  mode |= S_IRUSR;
 if (acl_user_obj_entry->ae_perm & ACL_WRITE)
  mode |= S_IWUSR;
 if (acl_group_obj_entry->ae_perm & ACL_EXECUTE)
  mode |= S_IXGRP;
 if (acl_group_obj_entry->ae_perm & ACL_READ)
  mode |= S_IRGRP;
 if (acl_group_obj_entry->ae_perm & ACL_WRITE)
  mode |= S_IWGRP;
 if (acl_other_entry->ae_perm & ACL_EXECUTE)
  mode |= S_IXOTH;
 if (acl_other_entry->ae_perm & ACL_READ)
  mode |= S_IROTH;
 if (acl_other_entry->ae_perm & ACL_WRITE)
  mode |= S_IWOTH;

 return (mode);
}
