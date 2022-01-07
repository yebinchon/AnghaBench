
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {int td_ucred; } ;
struct quotactl_args {int cmd; int arg; int uid; int path; } ;
struct nameidata {TYPE_1__* ni_vp; } ;
struct mount {int dummy; } ;
struct TYPE_2__ {struct mount* v_mount; } ;


 int AUDITVNODE1 ;
 int AUDIT_ARG_CMD (int) ;
 int AUDIT_ARG_UID (int ) ;
 int EPERM ;
 int FOLLOW ;
 int LOCKLEAF ;
 int LOOKUP ;
 int NDFREE (struct nameidata*,int ) ;
 int NDF_ONLY_PNBUF ;
 int NDINIT (struct nameidata*,int ,int,int ,int ,struct thread*) ;
 int PR_ALLOW_QUOTAS ;
 int Q_QUOTAOFF ;
 int Q_QUOTAON ;
 int SUBCMDSHIFT ;
 int UIO_USERSPACE ;
 int VFS_QUOTACTL (struct mount*,int,int ,int ) ;
 int namei (struct nameidata*) ;
 int prison_allow (int ,int ) ;
 int vfs_busy (struct mount*,int ) ;
 int vfs_ref (struct mount*) ;
 int vfs_rel (struct mount*) ;
 int vfs_unbusy (struct mount*) ;
 int vput (TYPE_1__*) ;

int
sys_quotactl(struct thread *td, struct quotactl_args *uap)
{
 struct mount *mp;
 struct nameidata nd;
 int error;

 AUDIT_ARG_CMD(uap->cmd);
 AUDIT_ARG_UID(uap->uid);
 if (!prison_allow(td->td_ucred, PR_ALLOW_QUOTAS))
  return (EPERM);
 NDINIT(&nd, LOOKUP, FOLLOW | LOCKLEAF | AUDITVNODE1, UIO_USERSPACE,
     uap->path, td);
 if ((error = namei(&nd)) != 0)
  return (error);
 NDFREE(&nd, NDF_ONLY_PNBUF);
 mp = nd.ni_vp->v_mount;
 vfs_ref(mp);
 vput(nd.ni_vp);
 error = vfs_busy(mp, 0);
 vfs_rel(mp);
 if (error != 0)
  return (error);
 error = VFS_QUOTACTL(mp, uap->cmd, uap->uid, uap->arg);
 if ((uap->cmd >> SUBCMDSHIFT) != Q_QUOTAON &&
     (uap->cmd >> SUBCMDSHIFT) != Q_QUOTAOFF)
  vfs_unbusy(mp);
 return (error);
}
