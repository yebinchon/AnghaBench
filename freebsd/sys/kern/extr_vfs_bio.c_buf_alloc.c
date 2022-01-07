
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufdomain {int bd_lofreebuffers; int bd_freebuffers; } ;
struct buf {int b_flags; int b_xflags; scalar_t__ b_npages; scalar_t__ b_kvasize; scalar_t__ b_bufsize; int b_dep; int * b_fsprivate3; int * b_fsprivate2; int * b_fsprivate1; int b_kvabase; int b_data; int * b_bufobj; scalar_t__ b_dirtyend; scalar_t__ b_dirtyoff; scalar_t__ b_bcount; scalar_t__ b_resid; scalar_t__ b_error; scalar_t__ b_iodone; int b_offset; scalar_t__ b_lblkno; scalar_t__ b_blkno; int * b_vp; scalar_t__ b_vflags; scalar_t__ b_ioflags; int b_domain; } ;


 int BD_DOMAIN (struct bufdomain*) ;
 scalar_t__ BUF_LOCK (struct buf*,int,int *) ;
 int BX_VNCLEAN ;
 int BX_VNDIRTY ;
 int B_DELWRI ;
 int B_NOREUSE ;
 int KASSERT (int,char*) ;
 int LIST_INIT (int *) ;
 int LK_EXCLUSIVE ;
 int LK_NOWAIT ;
 int M_NOWAIT ;
 int NOOFFSET ;
 int atomic_add_int (int *,int) ;
 int atomic_fetchadd_int (int *,int) ;
 int buf_zone ;
 int bufspace_daemon_wakeup (struct bufdomain*) ;
 int counter_u64_add (int ,int) ;
 int numbufallocfails ;
 int panic (char*,struct buf*) ;
 struct buf* uma_zalloc (int ,int ) ;
 int unmapped_buf ;

__attribute__((used)) static struct buf *
buf_alloc(struct bufdomain *bd)
{
 struct buf *bp;
 int freebufs;






 bp = ((void*)0);
 freebufs = atomic_fetchadd_int(&bd->bd_freebuffers, -1);
 if (freebufs > 0)
  bp = uma_zalloc(buf_zone, M_NOWAIT);
 if (bp == ((void*)0)) {
  atomic_add_int(&bd->bd_freebuffers, 1);
  bufspace_daemon_wakeup(bd);
  counter_u64_add(numbufallocfails, 1);
  return (((void*)0));
 }



 if (freebufs == bd->bd_lofreebuffers)
  bufspace_daemon_wakeup(bd);

 if (BUF_LOCK(bp, LK_EXCLUSIVE | LK_NOWAIT, ((void*)0)) != 0)
  panic("getnewbuf_empty: Locked buf %p on free queue.", bp);

 KASSERT(bp->b_vp == ((void*)0),
     ("bp: %p still has vnode %p.", bp, bp->b_vp));
 KASSERT((bp->b_flags & (B_DELWRI | B_NOREUSE)) == 0,
     ("invalid buffer %p flags %#x", bp, bp->b_flags));
 KASSERT((bp->b_xflags & (BX_VNCLEAN|BX_VNDIRTY)) == 0,
     ("bp: %p still on a buffer list. xflags %X", bp, bp->b_xflags));
 KASSERT(bp->b_npages == 0,
     ("bp: %p still has %d vm pages\n", bp, bp->b_npages));
 KASSERT(bp->b_kvasize == 0, ("bp: %p still has kva\n", bp));
 KASSERT(bp->b_bufsize == 0, ("bp: %p still has bufspace\n", bp));

 bp->b_domain = BD_DOMAIN(bd);
 bp->b_flags = 0;
 bp->b_ioflags = 0;
 bp->b_xflags = 0;
 bp->b_vflags = 0;
 bp->b_vp = ((void*)0);
 bp->b_blkno = bp->b_lblkno = 0;
 bp->b_offset = NOOFFSET;
 bp->b_iodone = 0;
 bp->b_error = 0;
 bp->b_resid = 0;
 bp->b_bcount = 0;
 bp->b_npages = 0;
 bp->b_dirtyoff = bp->b_dirtyend = 0;
 bp->b_bufobj = ((void*)0);
 bp->b_data = bp->b_kvabase = unmapped_buf;
 bp->b_fsprivate1 = ((void*)0);
 bp->b_fsprivate2 = ((void*)0);
 bp->b_fsprivate3 = ((void*)0);
 LIST_INIT(&bp->b_dep);

 return (bp);
}
