
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_offset_t ;
struct TYPE_2__ {int cluster_head; } ;
struct buf {int b_ioflags; int b_error; int b_flags; scalar_t__ b_dirtyend; scalar_t__ b_dirtyoff; TYPE_1__ b_cluster; int b_npages; scalar_t__ b_data; } ;


 int BIO_ERROR ;
 int B_DIRECT ;
 int B_INVAL ;
 int B_RELBUF ;
 struct buf* TAILQ_FIRST (int *) ;
 struct buf* TAILQ_NEXT (TYPE_1__*,int ) ;
 scalar_t__ buf_mapped (struct buf*) ;
 int bufdone (struct buf*) ;
 int cluster_entry ;
 int cluster_pbuf_zone ;
 int pbrelvp (struct buf*) ;
 int pmap_qremove (int ,int ) ;
 int trunc_page (int ) ;
 int uma_zfree (int ,struct buf*) ;

__attribute__((used)) static void
cluster_callback(struct buf *bp)
{
 struct buf *nbp, *tbp;
 int error = 0;




 if (bp->b_ioflags & BIO_ERROR)
  error = bp->b_error;

 if (buf_mapped(bp)) {
  pmap_qremove(trunc_page((vm_offset_t) bp->b_data),
      bp->b_npages);
 }




 for (tbp = TAILQ_FIRST(&bp->b_cluster.cluster_head);
  tbp; tbp = nbp) {
  nbp = TAILQ_NEXT(&tbp->b_cluster, cluster_entry);
  if (error) {
   tbp->b_ioflags |= BIO_ERROR;
   tbp->b_error = error;
  } else {
   tbp->b_dirtyoff = tbp->b_dirtyend = 0;
   tbp->b_flags &= ~B_INVAL;
   tbp->b_ioflags &= ~BIO_ERROR;







   if (tbp->b_flags & B_DIRECT)
    tbp->b_flags |= B_RELBUF;
  }
  bufdone(tbp);
 }
 pbrelvp(bp);
 uma_zfree(cluster_pbuf_zone, bp);
}
