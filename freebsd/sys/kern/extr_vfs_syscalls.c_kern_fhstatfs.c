
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct vnode {int dummy; } ;
struct thread {int td_ucred; } ;
struct statfs {int dummy; } ;
struct mount {int dummy; } ;
struct TYPE_3__ {int fh_fid; int fh_fsid; } ;
typedef TYPE_1__ fhandle_t ;


 int ESTALE ;
 int LK_EXCLUSIVE ;
 int PRIV_VFS_FHSTATFS ;
 int VFS_FHTOVP (struct mount*,int *,int ,struct vnode**) ;
 int VFS_STATFS (struct mount*,struct statfs*) ;
 int mac_mount_check_stat (int ,struct mount*) ;
 int prison_canseemount (int ,struct mount*) ;
 int priv_check (struct thread*,int ) ;
 struct mount* vfs_busyfs (int *) ;
 int vfs_unbusy (struct mount*) ;
 int vput (struct vnode*) ;

int
kern_fhstatfs(struct thread *td, fhandle_t fh, struct statfs *buf)
{
 struct mount *mp;
 struct vnode *vp;
 int error;

 error = priv_check(td, PRIV_VFS_FHSTATFS);
 if (error != 0)
  return (error);
 if ((mp = vfs_busyfs(&fh.fh_fsid)) == ((void*)0))
  return (ESTALE);
 error = VFS_FHTOVP(mp, &fh.fh_fid, LK_EXCLUSIVE, &vp);
 if (error != 0) {
  vfs_unbusy(mp);
  return (error);
 }
 vput(vp);
 error = prison_canseemount(td->td_ucred, mp);
 if (error != 0)
  goto out;





 error = VFS_STATFS(mp, buf);
out:
 vfs_unbusy(mp);
 return (error);
}
