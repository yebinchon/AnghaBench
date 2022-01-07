
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acl_entry {int ae_tag; } ;
struct acl {int acl_cnt; struct acl_entry* acl_entry; } ;
typedef int mode_t ;
 int acl_posix1e_perms_to_mode (struct acl_entry*,struct acl_entry*,struct acl_entry*) ;
 int panic (char*) ;

mode_t
acl_posix1e_acl_to_mode(struct acl *acl)
{
 struct acl_entry *acl_mask, *acl_user_obj, *acl_group_obj, *acl_other;
 int i;




 acl_user_obj = acl_group_obj = acl_other = acl_mask = ((void*)0);
 for (i = 0; i < acl->acl_cnt; i++) {
  switch (acl->acl_entry[i].ae_tag) {
  case 128:
   acl_user_obj = &acl->acl_entry[i];
   break;

  case 132:
   acl_group_obj = &acl->acl_entry[i];
   break;

  case 130:
   acl_other = &acl->acl_entry[i];
   break;

  case 131:
   acl_mask = &acl->acl_entry[i];
   break;

  case 129:
  case 133:
   break;

  default:
   panic("acl_posix1e_acl_to_mode: bad ae_tag");
  }
 }

 if (acl_user_obj == ((void*)0) || acl_group_obj == ((void*)0) || acl_other == ((void*)0))
  panic("acl_posix1e_acl_to_mode: missing base ae_tags");






 if (acl_mask != ((void*)0))
  return (acl_posix1e_perms_to_mode(acl_user_obj, acl_mask,
      acl_other));
 else
  return (acl_posix1e_perms_to_mode(acl_user_obj, acl_group_obj,
      acl_other));
}
