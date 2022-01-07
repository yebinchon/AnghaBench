
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct vop_strategy_args {struct vnode* a_vp; struct buf* a_bp; } ;
struct vnode {int dummy; } ;
struct udf_node {TYPE_1__* udfmp; } ;
struct bufobj {int dummy; } ;
struct buf {int b_blkno; int b_lblkno; int b_iooffset; } ;
typedef int off_t ;
typedef int daddr_t ;
struct TYPE_2__ {int bshift; struct bufobj* im_bo; } ;


 int BO_STRATEGY (struct bufobj*,struct buf*) ;
 int DEV_BSHIFT ;
 struct udf_node* VTON (struct vnode*) ;
 int bufdone (struct buf*) ;
 int clrbuf (struct buf*) ;
 int dbtob (int) ;
 int lblktosize (TYPE_1__*,int) ;
 int udf_bmap_internal (struct udf_node*,int ,int*,int *) ;

__attribute__((used)) static int
udf_strategy(struct vop_strategy_args *a)
{
 struct buf *bp;
 struct vnode *vp;
 struct udf_node *node;
 struct bufobj *bo;
 off_t offset;
 uint32_t maxsize;
 daddr_t sector;
 int error;

 bp = a->a_bp;
 vp = a->a_vp;
 node = VTON(vp);

 if (bp->b_blkno == bp->b_lblkno) {
  offset = lblktosize(node->udfmp, bp->b_lblkno);
  error = udf_bmap_internal(node, offset, &sector, &maxsize);
  if (error) {
   clrbuf(bp);
   bp->b_blkno = -1;
   bufdone(bp);
   return (0);
  }

  bp->b_blkno = sector << (node->udfmp->bshift - DEV_BSHIFT);
 }
 bo = node->udfmp->im_bo;
 bp->b_iooffset = dbtob(bp->b_blkno);
 BO_STRATEGY(bo, bp);
 return (0);
}
