
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
struct ucred {int cr_uid; } ;
struct acl_entry {int ae_tag; int ae_perm; int ae_id; } ;
struct acl {int acl_cnt; struct acl_entry* acl_entry; } ;
typedef int gid_t ;
typedef enum vtype { ____Placeholder_vtype } vtype ;
typedef int accmode_t ;


 int ACL_EXECUTE ;




 int ACL_READ ;


 int ACL_WRITE ;
 int EACCES ;
 int EPERM ;
 int KASSERT (int,char*) ;
 int PRIV_VFS_ADMIN ;
 int PRIV_VFS_EXEC ;
 int PRIV_VFS_LOOKUP ;
 int PRIV_VFS_READ ;
 int PRIV_VFS_WRITE ;
 int S_IXGRP ;
 int S_IXOTH ;
 int S_IXUSR ;
 int VADMIN ;
 int VAPPEND ;
 int VDIR ;
 int VEXEC ;
 int VREAD ;
 int VWRITE ;
 int acl_posix1e_acl_to_mode (struct acl*) ;
 int groupmember (int ,struct ucred*) ;
 int printf (char*) ;
 int priv_check_cred (struct ucred*,int ) ;

int
vaccess_acl_posix1e(enum vtype type, uid_t file_uid, gid_t file_gid,
    struct acl *acl, accmode_t accmode, struct ucred *cred, int *privused)
{
 struct acl_entry *acl_other, *acl_mask;
 accmode_t dac_granted;
 accmode_t priv_granted;
 accmode_t acl_mask_granted;
 int group_matched, i;

 KASSERT((accmode & ~(VEXEC | VWRITE | VREAD | VADMIN | VAPPEND)) == 0,
     ("invalid bit in accmode"));
 KASSERT((accmode & VAPPEND) == 0 || (accmode & VWRITE),
      ("VAPPEND without VWRITE"));
 if (privused != ((void*)0))
  *privused = 0;
 priv_granted = 0;

 if (type == VDIR) {
  if ((accmode & VEXEC) && !priv_check_cred(cred, PRIV_VFS_LOOKUP))
   priv_granted |= VEXEC;
 } else {





  if ((accmode & VEXEC) && (acl_posix1e_acl_to_mode(acl) &
      (S_IXUSR | S_IXGRP | S_IXOTH)) != 0 &&
      !priv_check_cred(cred, PRIV_VFS_EXEC))
   priv_granted |= VEXEC;
 }

 if ((accmode & VREAD) && !priv_check_cred(cred, PRIV_VFS_READ))
  priv_granted |= VREAD;

 if (((accmode & VWRITE) || (accmode & VAPPEND)) &&
     !priv_check_cred(cred, PRIV_VFS_WRITE))
  priv_granted |= (VWRITE | VAPPEND);

 if ((accmode & VADMIN) && !priv_check_cred(cred, PRIV_VFS_ADMIN))
  priv_granted |= VADMIN;







 acl_mask = acl_other = ((void*)0);
 for (i = 0; i < acl->acl_cnt; i++) {
  switch (acl->acl_entry[i].ae_tag) {
  case 128:
   if (file_uid != cred->cr_uid)
    break;
   dac_granted = 0;
   dac_granted |= VADMIN;
   if (acl->acl_entry[i].ae_perm & ACL_EXECUTE)
    dac_granted |= VEXEC;
   if (acl->acl_entry[i].ae_perm & ACL_READ)
    dac_granted |= VREAD;
   if (acl->acl_entry[i].ae_perm & ACL_WRITE)
    dac_granted |= (VWRITE | VAPPEND);
   if ((accmode & dac_granted) == accmode)
    return (0);




   if ((accmode & (dac_granted | priv_granted)) ==
       accmode) {
    if (privused != ((void*)0))
     *privused = 1;
    return (0);
   }
   goto error;

  case 131:
   acl_mask = &acl->acl_entry[i];
   break;

  case 130:
   acl_other = &acl->acl_entry[i];
   break;

  default:
   break;
  }
 }







 if (acl_other == ((void*)0)) {



  printf("vaccess_acl_posix1e: ACL_OTHER missing\n");
  return (EPERM);
 }
 if (acl_mask != ((void*)0)) {
  acl_mask_granted = 0;
  if (acl_mask->ae_perm & ACL_EXECUTE)
   acl_mask_granted |= VEXEC;
  if (acl_mask->ae_perm & ACL_READ)
   acl_mask_granted |= VREAD;
  if (acl_mask->ae_perm & ACL_WRITE)
   acl_mask_granted |= (VWRITE | VAPPEND);
 } else
  acl_mask_granted = VEXEC | VREAD | VWRITE | VAPPEND;






 for (i = 0; i < acl->acl_cnt; i++) {
  switch (acl->acl_entry[i].ae_tag) {
  case 129:
   if (acl->acl_entry[i].ae_id != cred->cr_uid)
    break;
   dac_granted = 0;
   if (acl->acl_entry[i].ae_perm & ACL_EXECUTE)
    dac_granted |= VEXEC;
   if (acl->acl_entry[i].ae_perm & ACL_READ)
    dac_granted |= VREAD;
   if (acl->acl_entry[i].ae_perm & ACL_WRITE)
    dac_granted |= (VWRITE | VAPPEND);
   dac_granted &= acl_mask_granted;
   if ((accmode & dac_granted) == accmode)
    return (0);



   if ((accmode & (dac_granted | priv_granted)) !=
       accmode)
    goto error;

   if (privused != ((void*)0))
    *privused = 1;
   return (0);
  }
 }
 group_matched = 0;
 for (i = 0; i < acl->acl_cnt; i++) {
  switch (acl->acl_entry[i].ae_tag) {
  case 132:
   if (!groupmember(file_gid, cred))
    break;
   dac_granted = 0;
   if (acl->acl_entry[i].ae_perm & ACL_EXECUTE)
    dac_granted |= VEXEC;
   if (acl->acl_entry[i].ae_perm & ACL_READ)
    dac_granted |= VREAD;
   if (acl->acl_entry[i].ae_perm & ACL_WRITE)
    dac_granted |= (VWRITE | VAPPEND);
   dac_granted &= acl_mask_granted;

   if ((accmode & dac_granted) == accmode)
    return (0);

   group_matched = 1;
   break;

  case 133:
   if (!groupmember(acl->acl_entry[i].ae_id, cred))
    break;
   dac_granted = 0;
   if (acl->acl_entry[i].ae_perm & ACL_EXECUTE)
    dac_granted |= VEXEC;
   if (acl->acl_entry[i].ae_perm & ACL_READ)
    dac_granted |= VREAD;
   if (acl->acl_entry[i].ae_perm & ACL_WRITE)
    dac_granted |= (VWRITE | VAPPEND);
   dac_granted &= acl_mask_granted;

   if ((accmode & dac_granted) == accmode)
    return (0);

   group_matched = 1;
   break;

  default:
   break;
  }
 }

 if (group_matched == 1) {




  for (i = 0; i < acl->acl_cnt; i++) {
   switch (acl->acl_entry[i].ae_tag) {
   case 132:
    if (!groupmember(file_gid, cred))
     break;
    dac_granted = 0;
    if (acl->acl_entry[i].ae_perm & ACL_EXECUTE)
     dac_granted |= VEXEC;
    if (acl->acl_entry[i].ae_perm & ACL_READ)
     dac_granted |= VREAD;
    if (acl->acl_entry[i].ae_perm & ACL_WRITE)
     dac_granted |= (VWRITE | VAPPEND);
    dac_granted &= acl_mask_granted;




    if ((accmode & (dac_granted | priv_granted))
        != accmode)
     break;

    if (privused != ((void*)0))
     *privused = 1;
    return (0);

   case 133:
    if (!groupmember(acl->acl_entry[i].ae_id,
        cred))
     break;
    dac_granted = 0;
    if (acl->acl_entry[i].ae_perm & ACL_EXECUTE)
    dac_granted |= VEXEC;
    if (acl->acl_entry[i].ae_perm & ACL_READ)
     dac_granted |= VREAD;
    if (acl->acl_entry[i].ae_perm & ACL_WRITE)
     dac_granted |= (VWRITE | VAPPEND);
    dac_granted &= acl_mask_granted;




    if ((accmode & (dac_granted | priv_granted))
        != accmode)
     break;

    if (privused != ((void*)0))
     *privused = 1;
    return (0);

   default:
    break;
   }
  }




  goto error;
 }




 dac_granted = 0;
 if (acl_other->ae_perm & ACL_EXECUTE)
  dac_granted |= VEXEC;
 if (acl_other->ae_perm & ACL_READ)
  dac_granted |= VREAD;
 if (acl_other->ae_perm & ACL_WRITE)
  dac_granted |= (VWRITE | VAPPEND);

 if ((accmode & dac_granted) == accmode)
  return (0);



 if ((accmode & (dac_granted | priv_granted)) == accmode) {
  if (privused != ((void*)0))
   *privused = 1;
  return (0);
 }

error:
 return ((accmode & VADMIN) ? EPERM : EACCES);
}
