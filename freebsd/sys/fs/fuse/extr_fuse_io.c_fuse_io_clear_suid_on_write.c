
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct vattr {int va_mode; } ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct mount {int dummy; } ;
struct fuse_data {int dataflags; } ;
typedef int mode_t ;


 int FSESS_DEFAULT_PERMISSIONS ;
 int PRIV_VFS_RETAINSUGID ;
 int S_ISGID ;
 int S_ISUID ;
 struct fuse_data* fuse_get_mpdata (struct mount*) ;
 int fuse_internal_getattr (struct vnode*,struct vattr*,struct ucred*,struct thread*) ;
 int fuse_internal_setattr (struct vnode*,struct vattr*,struct thread*,int *) ;
 scalar_t__ priv_check_cred (struct ucred*,int ) ;
 int vattr_null (struct vattr*) ;
 struct mount* vnode_mount (struct vnode*) ;

__attribute__((used)) static void
fuse_io_clear_suid_on_write(struct vnode *vp, struct ucred *cred,
 struct thread *td)
{
 struct fuse_data *data;
 struct mount *mp;
 struct vattr va;
 int dataflags;

 mp = vnode_mount(vp);
 data = fuse_get_mpdata(mp);
 dataflags = data->dataflags;

 if (dataflags & FSESS_DEFAULT_PERMISSIONS) {
  if (priv_check_cred(cred, PRIV_VFS_RETAINSUGID)) {
   fuse_internal_getattr(vp, &va, cred, td);
   if (va.va_mode & (S_ISUID | S_ISGID)) {
    mode_t mode = va.va_mode & ~(S_ISUID | S_ISGID);

    vattr_null(&va);
    va.va_mode = mode;







    (void)fuse_internal_setattr(vp, &va, td, ((void*)0));
   }
  }
 }
}
