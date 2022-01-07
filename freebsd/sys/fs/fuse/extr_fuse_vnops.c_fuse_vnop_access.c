
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_access_args {int a_accmode; struct ucred* a_cred; int a_td; struct vnode* a_vp; } ;
struct vnode {int dummy; } ;
struct ucred {int dummy; } ;
struct fuse_data {int dataflags; int daemoncred; } ;


 int EBADF ;
 int ENXIO ;
 int FSESS_INITED ;
 int PRIV_VFS_ADMIN ;
 struct fuse_data* fuse_get_mpdata (int ) ;
 int fuse_internal_access (struct vnode*,int,int ,struct ucred*) ;
 scalar_t__ fuse_isdeadfs (struct vnode*) ;
 scalar_t__ fuse_match_cred (int ,struct ucred*) ;
 scalar_t__ priv_check_cred (struct ucred*,int ) ;
 scalar_t__ vnode_islnk (struct vnode*) ;
 scalar_t__ vnode_isvroot (struct vnode*) ;
 int vnode_mount (struct vnode*) ;

__attribute__((used)) static int
fuse_vnop_access(struct vop_access_args *ap)
{
 struct vnode *vp = ap->a_vp;
 int accmode = ap->a_accmode;
 struct ucred *cred = ap->a_cred;

 struct fuse_data *data = fuse_get_mpdata(vnode_mount(vp));

 int err;

 if (fuse_isdeadfs(vp)) {
  if (vnode_isvroot(vp)) {
   return 0;
  }
  return ENXIO;
 }
 if (!(data->dataflags & FSESS_INITED)) {
  if (vnode_isvroot(vp)) {
   if (priv_check_cred(cred, PRIV_VFS_ADMIN) ||
       (fuse_match_cred(data->daemoncred, cred) == 0)) {
    return 0;
   }
  }
  return EBADF;
 }
 if (vnode_islnk(vp)) {
  return 0;
 }

 err = fuse_internal_access(vp, accmode, ap->a_td, ap->a_cred);
 return err;
}
