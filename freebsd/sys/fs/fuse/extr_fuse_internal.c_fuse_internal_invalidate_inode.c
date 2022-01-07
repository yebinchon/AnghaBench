
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct uio {int dummy; } ;
struct mount {int dummy; } ;
struct fuse_notify_inval_inode_out {scalar_t__ ino; scalar_t__ off; } ;
typedef int fniio ;


 scalar_t__ FUSE_ROOT_ID ;
 int LK_EXCLUSIVE ;
 int LK_SHARED ;
 int VFS_ROOT (struct mount*,int ,struct vnode**) ;
 int curthread ;
 int fuse_internal_get_cached_vnode (struct mount*,scalar_t__,int ,struct vnode**) ;
 int fuse_io_invalbuf (struct vnode*,int ) ;
 int fuse_vnode_clear_attr_cache (struct vnode*) ;
 int uiomove (struct fuse_notify_inval_inode_out*,int,struct uio*) ;
 int vput (struct vnode*) ;

int
fuse_internal_invalidate_inode(struct mount *mp, struct uio *uio)
{
 struct fuse_notify_inval_inode_out fniio;
 struct vnode *vp;
 int err;

 if ((err = uiomove(&fniio, sizeof(fniio), uio)) != 0)
  return (err);

 if (fniio.ino == FUSE_ROOT_ID)
  err = VFS_ROOT(mp, LK_EXCLUSIVE, &vp);
 else
  err = fuse_internal_get_cached_vnode(mp, fniio.ino, LK_SHARED,
   &vp);
 if (err != 0 || vp == ((void*)0))
  return (err);
 if (fniio.off >= 0)
  fuse_io_invalbuf(vp, curthread);
 fuse_vnode_clear_attr_cache(vp);
 vput(vp);
 return (0);
}
