
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct acl {int acl_cnt; TYPE_1__* acl_entry; } ;
struct TYPE_2__ {int ae_tag; void* ae_id; int ae_perm; } ;





 int ACL_MAX_ENTRIES ;

 int ACL_PERM_BITS ;
 void* ACL_UNDEFINED_ID ;


 int EINVAL ;

int
acl_posix1e_check(struct acl *acl)
{
 int num_acl_user_obj, num_acl_user, num_acl_group_obj, num_acl_group;
 int num_acl_mask, num_acl_other, i;
 num_acl_user_obj = num_acl_user = num_acl_group_obj = num_acl_group =
     num_acl_mask = num_acl_other = 0;
 if (acl->acl_cnt > ACL_MAX_ENTRIES)
  return (EINVAL);
 for (i = 0; i < acl->acl_cnt; i++) {



  switch(acl->acl_entry[i].ae_tag) {
  case 128:
   acl->acl_entry[i].ae_id = ACL_UNDEFINED_ID;
   if (acl->acl_entry[i].ae_id != ACL_UNDEFINED_ID)
    return (EINVAL);
   num_acl_user_obj++;
   break;
  case 132:
   acl->acl_entry[i].ae_id = ACL_UNDEFINED_ID;
   if (acl->acl_entry[i].ae_id != ACL_UNDEFINED_ID)
    return (EINVAL);
   num_acl_group_obj++;
   break;
  case 129:
   if (acl->acl_entry[i].ae_id == ACL_UNDEFINED_ID)
    return (EINVAL);
   num_acl_user++;
   break;
  case 133:
   if (acl->acl_entry[i].ae_id == ACL_UNDEFINED_ID)
    return (EINVAL);
   num_acl_group++;
   break;
  case 130:
   acl->acl_entry[i].ae_id = ACL_UNDEFINED_ID;
   if (acl->acl_entry[i].ae_id != ACL_UNDEFINED_ID)
    return (EINVAL);
   num_acl_other++;
   break;
  case 131:
   acl->acl_entry[i].ae_id = ACL_UNDEFINED_ID;
   if (acl->acl_entry[i].ae_id != ACL_UNDEFINED_ID)
    return (EINVAL);
   num_acl_mask++;
   break;
  default:
   return (EINVAL);
  }



  if ((acl->acl_entry[i].ae_perm | ACL_PERM_BITS) !=
      ACL_PERM_BITS)
   return (EINVAL);
 }
 if ((num_acl_user_obj != 1) || (num_acl_group_obj != 1) ||
     (num_acl_other != 1) || (num_acl_mask != 0 && num_acl_mask != 1))
  return (EINVAL);
 if (((num_acl_group != 0) || (num_acl_user != 0)) &&
     (num_acl_mask != 1))
  return (EINVAL);
 return (0);
}
