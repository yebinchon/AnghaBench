
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_quad_t ;
struct vnode {scalar_t__ v_type; int v_lasta; int v_clen; int v_cstart; int v_lastw; TYPE_2__* v_mount; } ;
struct cluster_save {int bs_nchildren; struct buf** bs_children; } ;
struct buf {int b_bufsize; scalar_t__ b_lblkno; scalar_t__ b_offset; int b_blkno; } ;
typedef scalar_t__ daddr_t ;
struct TYPE_3__ {int f_iosize; } ;
struct TYPE_4__ {int mnt_iosize_max; TYPE_1__ mnt_stat; } ;


 int DOINGASYNC (struct vnode*) ;
 int GB_UNMAPPED ;
 int KASSERT (int,char*) ;
 int M_SEGMENT ;
 scalar_t__ NOOFFSET ;
 scalar_t__ VOP_BMAP (struct vnode*,scalar_t__,int *,int*,int*,int *) ;
 scalar_t__ VOP_REALLOCBLKS (struct vnode*,struct cluster_save*) ;
 scalar_t__ VREG ;
 int bawrite (struct buf*) ;
 int bdwrite (struct buf*) ;
 int brelse (struct buf*) ;
 int btodb (int) ;
 struct cluster_save* cluster_collectbufs (struct vnode*,struct buf*,int) ;
 int cluster_wbuild_wb (struct vnode*,int,int,int,int) ;
 int free (struct cluster_save*,int ) ;
 int unmapped_buf_allowed ;
 scalar_t__ vm_page_count_severe () ;

void
cluster_write(struct vnode *vp, struct buf *bp, u_quad_t filesize, int seqcount,
    int gbflags)
{
 daddr_t lbn;
 int maxclen, cursize;
 int lblocksize;
 int async;

 if (!unmapped_buf_allowed)
  gbflags &= ~GB_UNMAPPED;

 if (vp->v_type == VREG) {
  async = DOINGASYNC(vp);
  lblocksize = vp->v_mount->mnt_stat.f_iosize;
 } else {
  async = 0;
  lblocksize = bp->b_bufsize;
 }
 lbn = bp->b_lblkno;
 KASSERT(bp->b_offset != NOOFFSET, ("cluster_write: no buffer offset"));


 if (lbn == 0)
  vp->v_lasta = vp->v_clen = vp->v_cstart = vp->v_lastw = 0;

 if (vp->v_clen == 0 || lbn != vp->v_lastw + 1 ||
     (bp->b_blkno != vp->v_lasta + btodb(lblocksize))) {
  maxclen = vp->v_mount->mnt_iosize_max / lblocksize - 1;
  if (vp->v_clen != 0) {
   cursize = vp->v_lastw - vp->v_cstart + 1;
   if (((u_quad_t) bp->b_offset + lblocksize) != filesize ||
       lbn != vp->v_lastw + 1 || vp->v_clen <= cursize) {
    if (!async && seqcount > 0) {
     cluster_wbuild_wb(vp, lblocksize,
         vp->v_cstart, cursize, gbflags);
    }
   } else {
    struct buf **bpp, **endbp;
    struct cluster_save *buflist;

    buflist = cluster_collectbufs(vp, bp, gbflags);
    if (buflist == ((void*)0)) {




     bawrite(bp);
     return;
    }
    endbp = &buflist->bs_children
        [buflist->bs_nchildren - 1];
    if (VOP_REALLOCBLKS(vp, buflist)) {
     for (bpp = buflist->bs_children;
          bpp < endbp; bpp++)
      brelse(*bpp);
     free(buflist, M_SEGMENT);
     if (seqcount > 1) {
      cluster_wbuild_wb(vp,
          lblocksize, vp->v_cstart,
          cursize, gbflags);
     }
    } else {



     for (bpp = buflist->bs_children;
          bpp <= endbp; bpp++)
      bdwrite(*bpp);
     free(buflist, M_SEGMENT);
     vp->v_lastw = lbn;
     vp->v_lasta = bp->b_blkno;
     return;
    }
   }
  }





  if ((vp->v_type == VREG) &&
   ((u_quad_t) bp->b_offset + lblocksize) != filesize &&
      (bp->b_blkno == bp->b_lblkno) &&
      (VOP_BMAP(vp, lbn, ((void*)0), &bp->b_blkno, &maxclen, ((void*)0)) ||
       bp->b_blkno == -1)) {
   bawrite(bp);
   vp->v_clen = 0;
   vp->v_lasta = bp->b_blkno;
   vp->v_cstart = lbn + 1;
   vp->v_lastw = lbn;
   return;
  }
  vp->v_clen = maxclen;
  if (!async && maxclen == 0) {
   vp->v_cstart = lbn + 1;
   bawrite(bp);
  } else {
   vp->v_cstart = lbn;
   bdwrite(bp);
  }
 } else if (lbn == vp->v_cstart + vp->v_clen) {





  bdwrite(bp);
  if (seqcount > 1) {
   cluster_wbuild_wb(vp, lblocksize, vp->v_cstart,
       vp->v_clen + 1, gbflags);
  }
  vp->v_clen = 0;
  vp->v_cstart = lbn + 1;
 } else if (vm_page_count_severe()) {



  bawrite(bp);
 } else {



  bdwrite(bp);
 }
 vp->v_lastw = lbn;
 vp->v_lasta = bp->b_blkno;
}
