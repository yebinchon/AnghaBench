
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


typedef TYPE_5__* vm_page_t ;
typedef long vm_offset_t ;
typedef int u_quad_t ;
struct vnode {TYPE_4__* v_mount; } ;
struct TYPE_13__ {int cluster_head; } ;
struct buf {int b_flags; int b_blkno; char* b_data; int b_lblkno; scalar_t__ b_offset; long b_bcount; long b_bufsize; int b_npages; int b_vflags; scalar_t__ b_kvasize; TYPE_5__** b_pages; TYPE_2__ b_cluster; void* b_iocmd; TYPE_3__* b_bufobj; int b_iodone; } ;
typedef long off_t ;
typedef int intmax_t ;
typedef int daddr_t ;
struct TYPE_16__ {int valid; } ;
struct TYPE_12__ {long f_iosize; } ;
struct TYPE_15__ {scalar_t__ mnt_iosize_max; TYPE_1__ mnt_stat; } ;
struct TYPE_14__ {int bo_object; } ;
struct TYPE_11__ {int cluster_entry; } ;


 void* BIO_READ ;
 int BUF_KERNPROC (struct buf*) ;
 int BV_BKGRDINPROG ;
 int B_ASYNC ;
 int B_CACHE ;
 int B_CLUSTER ;
 int B_MALLOC ;
 int B_RAM ;
 int B_VMIO ;
 int GB_LOCK_NOWAIT ;
 int GB_UNMAPPED ;
 int KASSERT (int,char*) ;
 int M_NOWAIT ;
 scalar_t__ NOOFFSET ;
 long PAGE_MASK ;
 int PAGE_SIZE ;
 int TAILQ_INIT (int *) ;
 int TAILQ_INSERT_TAIL (int *,struct buf*,int ) ;
 TYPE_10__ b_cluster ;
 void* bogus_page ;
 int bqrelse (struct buf*) ;
 int btodb (long) ;
 scalar_t__ buf_mapped (struct buf*) ;
 int cluster_callback ;
 int cluster_pbuf_zone ;
 struct buf* getblk (struct vnode*,int,long,int ,int ,int) ;
 int panic (char*,scalar_t__,scalar_t__) ;
 int pbgetvp (struct vnode*,struct buf*) ;
 int pmap_qenter (int ,TYPE_5__**,int) ;
 int printf (char*,long,long) ;
 scalar_t__ round_page (long) ;
 int trunc_page (long) ;
 struct buf* uma_zalloc (int ,int ) ;
 char* unmapped_buf ;
 int vfs_busy_pages_acquire (struct buf*) ;
 int vm_object_pip_add (int ,int) ;
 int vm_object_pip_wakeupn (int ,int) ;
 scalar_t__ vm_page_all_valid (TYPE_5__*) ;
 int vm_page_bits (int,long) ;
 int vm_page_sunbusy (TYPE_5__*) ;
 scalar_t__ vm_page_trysbusy (TYPE_5__*) ;

__attribute__((used)) static struct buf *
cluster_rbuild(struct vnode *vp, u_quad_t filesize, daddr_t lbn,
    daddr_t blkno, long size, int run, int gbflags, struct buf *fbp)
{
 struct buf *bp, *tbp;
 daddr_t bn;
 off_t off;
 long tinc, tsize;
 int i, inc, j, k, toff;

 KASSERT(size == vp->v_mount->mnt_stat.f_iosize,
     ("cluster_rbuild: size %ld != f_iosize %jd\n",
     size, (intmax_t)vp->v_mount->mnt_stat.f_iosize));




 while ((u_quad_t) size * (lbn + run) > filesize) {
  --run;
 }

 if (fbp) {
  tbp = fbp;
  tbp->b_iocmd = BIO_READ;
 } else {
  tbp = getblk(vp, lbn, size, 0, 0, gbflags);
  if (tbp->b_flags & B_CACHE)
   return tbp;
  tbp->b_flags |= B_ASYNC | B_RAM;
  tbp->b_iocmd = BIO_READ;
 }
 tbp->b_blkno = blkno;
 if( (tbp->b_flags & B_MALLOC) ||
  ((tbp->b_flags & B_VMIO) == 0) || (run <= 1) )
  return tbp;

 bp = uma_zalloc(cluster_pbuf_zone, M_NOWAIT);
 if (bp == ((void*)0))
  return tbp;







 bp->b_flags = B_ASYNC | B_CLUSTER | B_VMIO;
 if ((gbflags & GB_UNMAPPED) != 0) {
  bp->b_data = unmapped_buf;
 } else {
  bp->b_data = (char *)((vm_offset_t)bp->b_data |
      ((vm_offset_t)tbp->b_data & PAGE_MASK));
 }
 bp->b_iocmd = BIO_READ;
 bp->b_iodone = cluster_callback;
 bp->b_blkno = blkno;
 bp->b_lblkno = lbn;
 bp->b_offset = tbp->b_offset;
 KASSERT(bp->b_offset != NOOFFSET, ("cluster_rbuild: no buffer offset"));
 pbgetvp(vp, bp);

 TAILQ_INIT(&bp->b_cluster.cluster_head);

 bp->b_bcount = 0;
 bp->b_bufsize = 0;
 bp->b_npages = 0;

 inc = btodb(size);
 for (bn = blkno, i = 0; i < run; ++i, bn += inc) {
  if (i == 0) {
   vm_object_pip_add(tbp->b_bufobj->bo_object,
       tbp->b_npages);
   vfs_busy_pages_acquire(tbp);
  } else {
   if ((bp->b_npages * PAGE_SIZE) +
       round_page(size) > vp->v_mount->mnt_iosize_max) {
    break;
   }

   tbp = getblk(vp, lbn + i, size, 0, 0, GB_LOCK_NOWAIT |
       (gbflags & GB_UNMAPPED));


   if (tbp == ((void*)0))
    break;
   if ((tbp->b_vflags & BV_BKGRDINPROG) ||
       (tbp->b_flags & B_CACHE) ||
       (tbp->b_flags & B_VMIO) == 0) {
    bqrelse(tbp);
    break;
   }






   off = tbp->b_offset;
   tsize = size;
   for (j = 0; tsize > 0; j++) {
    toff = off & PAGE_MASK;
    tinc = tsize;
    if (toff + tinc > PAGE_SIZE)
     tinc = PAGE_SIZE - toff;
    if (vm_page_trysbusy(tbp->b_pages[j]) == 0)
     break;
    if ((tbp->b_pages[j]->valid &
        vm_page_bits(toff, tinc)) != 0) {
     vm_page_sunbusy(tbp->b_pages[j]);
     break;
    }
    vm_object_pip_add(tbp->b_bufobj->bo_object, 1);
    off += tinc;
    tsize -= tinc;
   }
   if (tsize > 0) {
clean_sbusy:
    vm_object_pip_wakeupn(tbp->b_bufobj->bo_object,
        j);
    for (k = 0; k < j; k++)
     vm_page_sunbusy(tbp->b_pages[k]);
    bqrelse(tbp);
    break;
   }




   if ((fbp && (i == 1)) || (i == (run - 1)))
    tbp->b_flags |= B_RAM;
   tbp->b_flags |= B_ASYNC;
   tbp->b_iocmd = BIO_READ;
   if (tbp->b_blkno == tbp->b_lblkno) {
    tbp->b_blkno = bn;
   } else if (tbp->b_blkno != bn) {
    goto clean_sbusy;
   }
  }




  BUF_KERNPROC(tbp);
  TAILQ_INSERT_TAIL(&bp->b_cluster.cluster_head,
   tbp, b_cluster.cluster_entry);
  for (j = 0; j < tbp->b_npages; j += 1) {
   vm_page_t m;

   m = tbp->b_pages[j];
   if ((bp->b_npages == 0) ||
       (bp->b_pages[bp->b_npages-1] != m)) {
    bp->b_pages[bp->b_npages] = m;
    bp->b_npages++;
   }
   if (vm_page_all_valid(m))
    tbp->b_pages[j] = bogus_page;
  }






  if (tbp->b_bcount != size)
   printf("warning: tbp->b_bcount wrong %ld vs %ld\n", tbp->b_bcount, size);
  if (tbp->b_bufsize != size)
   printf("warning: tbp->b_bufsize wrong %ld vs %ld\n", tbp->b_bufsize, size);
  bp->b_bcount += size;
  bp->b_bufsize += size;
 }





 for (j = 0; j < bp->b_npages; j++) {
  if (vm_page_all_valid(bp->b_pages[j]))
   bp->b_pages[j] = bogus_page;
 }
 if (bp->b_bufsize > bp->b_kvasize)
  panic("cluster_rbuild: b_bufsize(%ld) > b_kvasize(%d)\n",
      bp->b_bufsize, bp->b_kvasize);

 if (buf_mapped(bp)) {
  pmap_qenter(trunc_page((vm_offset_t) bp->b_data),
      (vm_page_t *)bp->b_pages, bp->b_npages);
 }
 return (bp);
}
