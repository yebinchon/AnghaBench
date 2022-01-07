
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct vnode {int dummy; } ;
struct thread {int dummy; } ;
struct mount {int dummy; } ;
struct fhreadlink_args {scalar_t__ bufsize; int buf; int fhp; } ;
struct TYPE_3__ {int fh_fid; int fh_fsid; } ;
typedef TYPE_1__ fhandle_t ;
typedef int fh ;


 int EINVAL ;
 int ESTALE ;
 scalar_t__ IOSIZE_MAX ;
 int LK_SHARED ;
 int PRIV_VFS_GETFH ;
 int UIO_USERSPACE ;
 int VFS_FHTOVP (struct mount*,int *,int ,struct vnode**) ;
 int copyin (int ,TYPE_1__*,int) ;
 int kern_readlink_vp (struct vnode*,int ,int ,scalar_t__,struct thread*) ;
 int priv_check (struct thread*,int ) ;
 struct mount* vfs_busyfs (int *) ;
 int vfs_unbusy (struct mount*) ;
 int vput (struct vnode*) ;

int
sys_fhreadlink(struct thread *td, struct fhreadlink_args *uap)
{
 fhandle_t fh;
 struct mount *mp;
 struct vnode *vp;
 int error;

 error = priv_check(td, PRIV_VFS_GETFH);
 if (error != 0)
  return (error);
 if (uap->bufsize > IOSIZE_MAX)
  return (EINVAL);
 error = copyin(uap->fhp, &fh, sizeof(fh));
 if (error != 0)
  return (error);
 if ((mp = vfs_busyfs(&fh.fh_fsid)) == ((void*)0))
  return (ESTALE);
 error = VFS_FHTOVP(mp, &fh.fh_fid, LK_SHARED, &vp);
 vfs_unbusy(mp);
 if (error != 0)
  return (error);
 error = kern_readlink_vp(vp, uap->buf, UIO_USERSPACE, uap->bufsize, td);
 vput(vp);
 return (error);
}
