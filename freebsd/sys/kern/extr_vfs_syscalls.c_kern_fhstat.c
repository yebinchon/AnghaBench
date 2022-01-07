
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct thread {int td_ucred; } ;
struct stat {int dummy; } ;
struct mount {int dummy; } ;
struct fhandle {int fh_fid; int fh_fsid; } ;


 int ESTALE ;
 int LK_EXCLUSIVE ;
 int NOCRED ;
 int PRIV_VFS_FHSTAT ;
 int VFS_FHTOVP (struct mount*,int *,int ,struct vnode**) ;
 int priv_check (struct thread*,int ) ;
 struct mount* vfs_busyfs (int *) ;
 int vfs_unbusy (struct mount*) ;
 int vn_stat (struct vnode*,struct stat*,int ,int ,struct thread*) ;
 int vput (struct vnode*) ;

int
kern_fhstat(struct thread *td, struct fhandle fh, struct stat *sb)
{
 struct mount *mp;
 struct vnode *vp;
 int error;

 error = priv_check(td, PRIV_VFS_FHSTAT);
 if (error != 0)
  return (error);
 if ((mp = vfs_busyfs(&fh.fh_fsid)) == ((void*)0))
  return (ESTALE);
 error = VFS_FHTOVP(mp, &fh.fh_fid, LK_EXCLUSIVE, &vp);
 vfs_unbusy(mp);
 if (error != 0)
  return (error);
 error = vn_stat(vp, sb, td->td_ucred, NOCRED, td);
 vput(vp);
 return (error);
}
