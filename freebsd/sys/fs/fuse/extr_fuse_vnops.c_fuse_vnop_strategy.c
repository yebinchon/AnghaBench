
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_strategy_args {struct buf* a_bp; struct vnode* a_vp; } ;
struct vnode {int dummy; } ;
struct buf {int b_error; int b_ioflags; } ;


 int BIO_ERROR ;
 int ENXIO ;
 int bufdone (struct buf*) ;
 int fuse_io_strategy (struct vnode*,struct buf*) ;
 scalar_t__ fuse_isdeadfs (struct vnode*) ;

__attribute__((used)) static int
fuse_vnop_strategy(struct vop_strategy_args *ap)
{
 struct vnode *vp = ap->a_vp;
 struct buf *bp = ap->a_bp;

 if (!vp || fuse_isdeadfs(vp)) {
  bp->b_ioflags |= BIO_ERROR;
  bp->b_error = ENXIO;
  bufdone(bp);
  return 0;
 }





 (void)fuse_io_strategy(vp, bp);

 return 0;
}
