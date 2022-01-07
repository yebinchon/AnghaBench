
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {int td_ucred; } ;
struct TYPE_2__ {scalar_t__* val; } ;
struct statfs {TYPE_1__ f_fsid; } ;
struct mount {int dummy; } ;


 int EBADF ;
 int PRIV_VFS_GENERATION ;
 int VFS_STATFS (struct mount*,struct statfs*) ;
 int mac_mount_check_stat (int ,struct mount*) ;
 int prison_enforce_statfs (int ,struct mount*,struct statfs*) ;
 scalar_t__ priv_check (struct thread*,int ) ;
 int vfs_busy (struct mount*,int ) ;
 int vfs_rel (struct mount*) ;
 int vfs_unbusy (struct mount*) ;

__attribute__((used)) static int
kern_do_statfs(struct thread *td, struct mount *mp, struct statfs *buf)
{
 int error;

 if (mp == ((void*)0))
  return (EBADF);
 error = vfs_busy(mp, 0);
 vfs_rel(mp);
 if (error != 0)
  return (error);





 error = VFS_STATFS(mp, buf);
 if (error != 0)
  goto out;
 if (priv_check(td, PRIV_VFS_GENERATION)) {
  buf->f_fsid.val[0] = buf->f_fsid.val[1] = 0;
  prison_enforce_statfs(td->td_ucred, mp, buf);
 }
out:
 vfs_unbusy(mp);
 return (error);
}
