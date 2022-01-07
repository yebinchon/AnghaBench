
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vnode {int v_mount; } ;
struct vattr {int va_type; int va_rdev; int va_mode; } ;
struct fuse_mknod_in {int umask; int rdev; int mode; } ;
struct fuse_data {int dummy; } ;
struct componentname {int dummy; } ;
typedef int fmni ;
struct TYPE_6__ {TYPE_2__* td_proc; } ;
struct TYPE_5__ {TYPE_1__* p_fd; } ;
struct TYPE_4__ {int fd_cmask; } ;


 size_t FUSE_COMPAT_MKNOD_IN_SIZE ;
 int FUSE_MKNOD ;
 int MAKEIMODE (int ,int ) ;
 TYPE_3__* curthread ;
 struct fuse_data* fuse_get_mpdata (int ) ;
 int fuse_internal_newentry (struct vnode*,struct vnode**,struct componentname*,int ,struct fuse_mknod_in*,size_t,int ) ;
 scalar_t__ fuse_libabi_geq (struct fuse_data*,int,int) ;

int
fuse_internal_mknod(struct vnode *dvp, struct vnode **vpp,
 struct componentname *cnp, struct vattr *vap)
{
 struct fuse_data *data;
 struct fuse_mknod_in fmni;
 size_t insize;

 data = fuse_get_mpdata(dvp->v_mount);

 fmni.mode = MAKEIMODE(vap->va_type, vap->va_mode);
 fmni.rdev = vap->va_rdev;
 if (fuse_libabi_geq(data, 7, 12)) {
  insize = sizeof(fmni);
  fmni.umask = curthread->td_proc->p_fd->fd_cmask;
 } else {
  insize = FUSE_COMPAT_MKNOD_IN_SIZE;
 }
 return (fuse_internal_newentry(dvp, vpp, cnp, FUSE_MKNOD, &fmni,
     insize, vap->va_type));
}
