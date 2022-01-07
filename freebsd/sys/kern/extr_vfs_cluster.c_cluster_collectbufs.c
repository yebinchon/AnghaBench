
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int v_lastw; int v_cstart; } ;
struct cluster_save {int bs_nchildren; struct buf** bs_children; } ;
struct buf {scalar_t__ b_blkno; scalar_t__ b_lblkno; int b_bcount; } ;
typedef int daddr_t ;


 int M_SEGMENT ;
 int M_WAITOK ;
 int NOCRED ;
 int VOP_BMAP (struct vnode*,scalar_t__,int *,scalar_t__*,int *,int *) ;
 int bread_gb (struct vnode*,int,int ,int ,int,struct buf**) ;
 int brelse (struct buf*) ;
 int free (struct cluster_save*,int ) ;
 struct cluster_save* malloc (int,int ,int ) ;

__attribute__((used)) static struct cluster_save *
cluster_collectbufs(struct vnode *vp, struct buf *last_bp, int gbflags)
{
 struct cluster_save *buflist;
 struct buf *bp;
 daddr_t lbn;
 int i, j, len, error;

 len = vp->v_lastw - vp->v_cstart + 1;
 buflist = malloc(sizeof(struct buf *) * (len + 1) + sizeof(*buflist),
     M_SEGMENT, M_WAITOK);
 buflist->bs_nchildren = 0;
 buflist->bs_children = (struct buf **) (buflist + 1);
 for (lbn = vp->v_cstart, i = 0; i < len; lbn++, i++) {
  error = bread_gb(vp, lbn, last_bp->b_bcount, NOCRED,
      gbflags, &bp);
  if (error != 0) {




   for (j = 0; j < i; j++)
    brelse(buflist->bs_children[j]);
   free(buflist, M_SEGMENT);
   return (((void*)0));
  }
  buflist->bs_children[i] = bp;
  if (bp->b_blkno == bp->b_lblkno)
   VOP_BMAP(vp, bp->b_lblkno, ((void*)0), &bp->b_blkno,
    ((void*)0), ((void*)0));
 }
 buflist->bs_children[i] = bp = last_bp;
 if (bp->b_blkno == bp->b_lblkno)
  VOP_BMAP(vp, bp->b_lblkno, ((void*)0), &bp->b_blkno, ((void*)0), ((void*)0));
 buflist->bs_nchildren = i + 1;
 return (buflist);
}
