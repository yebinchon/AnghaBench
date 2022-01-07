
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnode {int dummy; } ;
struct vattr {scalar_t__ va_size; } ;
struct TYPE_2__ {scalar_t__ va_size; } ;
struct fuse_vnode_data {TYPE_1__ cached_attrs; } ;
struct buf {int b_flags; int b_dirtyend; } ;
typedef scalar_t__ off_t ;
typedef size_t daddr_t ;


 int ASSERT_VOP_ELOCKED (struct vnode*,char*) ;
 int B_CACHE ;
 int B_VMIO ;
 int EINTR ;
 int MIN (int ,scalar_t__) ;
 int MPASS (int) ;
 int PCATCH ;
 struct fuse_vnode_data* VTOFUD (struct vnode*) ;
 struct vattr* VTOVA (struct vnode*) ;
 int brelse (struct buf*) ;
 size_t fuse_iosize (struct vnode*) ;
 struct buf* getblk (struct vnode*,size_t,size_t,int ,int ,int ) ;
 int vfs_bio_clrbuf (struct buf*) ;
 int vnode_pager_setsize (struct vnode*,scalar_t__) ;
 int vtruncbuf (struct vnode*,scalar_t__,size_t) ;

int
fuse_vnode_setsize(struct vnode *vp, off_t newsize)
{
 struct fuse_vnode_data *fvdat = VTOFUD(vp);
 struct vattr *attrs;
 off_t oldsize;
 size_t iosize;
 struct buf *bp = ((void*)0);
 int err = 0;

 ASSERT_VOP_ELOCKED(vp, "fuse_vnode_setsize");

 iosize = fuse_iosize(vp);
 oldsize = fvdat->cached_attrs.va_size;
 fvdat->cached_attrs.va_size = newsize;
 if ((attrs = VTOVA(vp)) != ((void*)0))
  attrs->va_size = newsize;

 if (newsize < oldsize) {
  daddr_t lbn;

  err = vtruncbuf(vp, newsize, fuse_iosize(vp));
  if (err)
   goto out;
  if (newsize % iosize == 0)
   goto out;





  lbn = newsize / iosize;
  bp = getblk(vp, lbn, iosize, PCATCH, 0, 0);
  if (!bp) {
   err = EINTR;
   goto out;
  }
  if (!(bp->b_flags & B_CACHE))
   goto out;
  MPASS(bp->b_flags & B_VMIO);
  vfs_bio_clrbuf(bp);
  bp->b_dirtyend = MIN(bp->b_dirtyend, newsize - lbn * iosize);
 }
out:
 if (bp)
  brelse(bp);
 vnode_pager_setsize(vp, newsize);
 return err;
}
