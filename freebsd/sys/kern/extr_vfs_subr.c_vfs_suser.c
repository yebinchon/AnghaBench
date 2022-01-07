
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct thread {TYPE_2__* td_ucred; } ;
struct mount {TYPE_3__* mnt_cred; TYPE_1__* mnt_vfc; } ;
struct TYPE_8__ {scalar_t__ cr_uid; } ;
struct TYPE_7__ {scalar_t__ cr_uid; } ;
struct TYPE_6__ {int vfc_flags; int vfc_prison_flag; } ;


 int EPERM ;
 int PRIV_VFS_MOUNT_OWNER ;
 int VFCF_DELEGADMIN ;
 scalar_t__ jailed (TYPE_2__*) ;
 int prison_allow (TYPE_2__*,int ) ;
 scalar_t__ prison_check (TYPE_2__*,TYPE_3__*) ;
 int priv_check (struct thread*,int ) ;

int
vfs_suser(struct mount *mp, struct thread *td)
{
 int error;

 if (jailed(td->td_ucred)) {




  if (!prison_allow(td->td_ucred, mp->mnt_vfc->vfc_prison_flag))
   return (EPERM);





  if (prison_check(td->td_ucred, mp->mnt_cred) != 0)
   return (EPERM);
 }
 if (!(mp->mnt_vfc->vfc_flags & VFCF_DELEGADMIN) &&
     mp->mnt_cred->cr_uid != td->td_ucred->cr_uid) {
  if ((error = priv_check(td, PRIV_VFS_MOUNT_OWNER)) != 0)
   return (error);
 }
 return (0);
}
