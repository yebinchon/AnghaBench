
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef int vm_pindex_t ;
typedef TYPE_1__* vm_page_t ;
typedef TYPE_2__* vm_object_t ;
typedef int uintmax_t ;
struct buf {int b_bcount; int b_bufsize; int b_npages; int b_pgbefore; int b_pgafter; scalar_t__ b_blkno; int b_bufobj; void* b_wcred; void* b_rcred; int b_iodone; int b_iocmd; int b_flags; TYPE_1__** b_pages; } ;
typedef int intmax_t ;
typedef scalar_t__ daddr_t ;
struct TYPE_20__ {int td_ucred; } ;
struct TYPE_19__ {int handle; } ;
struct TYPE_18__ {int pindex; int oflags; scalar_t__ valid; } ;


 int BIO_READ ;
 int BUF_KERNPROC (struct buf*) ;
 int B_PAGING ;
 int KASSERT (int,char*) ;
 int MPASS (int) ;
 int M_WAITOK ;
 int PAGE_SIZE ;
 int PSWP ;
 scalar_t__ SWAPBLK_NONE ;
 TYPE_1__* TAILQ_NEXT (TYPE_1__*,int ) ;
 TYPE_1__* TAILQ_PREV (TYPE_1__*,int ,int ) ;
 int VM_ALLOC_NORMAL ;
 int VM_CNT_ADD (int ,int) ;
 int VM_CNT_INC (int ) ;
 scalar_t__ VM_OBJECT_SLEEP (TYPE_2__*,int *,int ,char*,int) ;
 int VM_OBJECT_WLOCK (TYPE_2__*) ;
 int VM_OBJECT_WUNLOCK (TYPE_2__*) ;
 int VM_PAGER_ERROR ;
 int VM_PAGER_FAIL ;
 int VM_PAGER_OK ;
 scalar_t__ VM_PAGE_BITS_ALL ;
 int VPO_SWAPINPROG ;
 int VPO_SWAPSLEEP ;
 void* crhold (int ) ;
 int hz ;
 int imin (int,int) ;
 int listq ;
 int pglist ;
 int printf (char*,int ,int ,int) ;
 int swap_pager_haspage (TYPE_2__*,int,int*,int*) ;
 int swp_pager_async_iodone ;
 scalar_t__ swp_pager_meta_ctl (TYPE_2__*,int,int ) ;
 int swp_pager_strategy (struct buf*) ;
 int swrbuf_zone ;
 TYPE_6__ thread0 ;
 struct buf* uma_zalloc (int ,int ) ;
 int v_intrans ;
 int v_swapin ;
 int v_swappgsin ;
 int vm_object_pip_add (TYPE_2__*,int) ;
 TYPE_1__* vm_page_alloc (TYPE_2__*,int,int ) ;

__attribute__((used)) static int
swap_pager_getpages(vm_object_t object, vm_page_t *ma, int count, int *rbehind,
    int *rahead)
{
 struct buf *bp;
 vm_page_t bm, mpred, msucc, p;
 vm_pindex_t pindex;
 daddr_t blk;
 int i, maxahead, maxbehind, reqcount;

 reqcount = count;
 if (!swap_pager_haspage(object, ma[0]->pindex, &maxbehind, &maxahead))
  return (VM_PAGER_FAIL);




 if (rahead != ((void*)0)) {
  KASSERT(reqcount - 1 <= maxahead,
      ("page count %d extends beyond swap block", reqcount));
  *rahead = imin(*rahead, maxahead - (reqcount - 1));
  pindex = ma[reqcount - 1]->pindex;
  msucc = TAILQ_NEXT(ma[reqcount - 1], listq);
  if (msucc != ((void*)0) && msucc->pindex - pindex - 1 < *rahead)
   *rahead = msucc->pindex - pindex - 1;
 }
 if (rbehind != ((void*)0)) {
  *rbehind = imin(*rbehind, maxbehind);
  pindex = ma[0]->pindex;
  mpred = TAILQ_PREV(ma[0], pglist, listq);
  if (mpred != ((void*)0) && pindex - mpred->pindex - 1 < *rbehind)
   *rbehind = pindex - mpred->pindex - 1;
 }

 bm = ma[0];
 for (i = 0; i < count; i++)
  ma[i]->oflags |= VPO_SWAPINPROG;




 if (rbehind != ((void*)0)) {
  for (i = 1; i <= *rbehind; i++) {
   p = vm_page_alloc(object, ma[0]->pindex - i,
       VM_ALLOC_NORMAL);
   if (p == ((void*)0))
    break;
   p->oflags |= VPO_SWAPINPROG;
   bm = p;
  }
  *rbehind = i - 1;
 }
 if (rahead != ((void*)0)) {
  for (i = 0; i < *rahead; i++) {
   p = vm_page_alloc(object,
       ma[reqcount - 1]->pindex + i + 1, VM_ALLOC_NORMAL);
   if (p == ((void*)0))
    break;
   p->oflags |= VPO_SWAPINPROG;
  }
  *rahead = i;
 }
 if (rbehind != ((void*)0))
  count += *rbehind;
 if (rahead != ((void*)0))
  count += *rahead;

 vm_object_pip_add(object, count);

 pindex = bm->pindex;
 blk = swp_pager_meta_ctl(object, pindex, 0);
 KASSERT(blk != SWAPBLK_NONE,
     ("no swap blocking containing %p(%jx)", object, (uintmax_t)pindex));

 VM_OBJECT_WUNLOCK(object);
 bp = uma_zalloc(swrbuf_zone, M_WAITOK);

 for (i = 0, p = bm; i < count; i++, p = TAILQ_NEXT(p, listq)) {
  MPASS(p->pindex == bm->pindex + i);
  bp->b_pages[i] = p;
 }

 bp->b_flags |= B_PAGING;
 bp->b_iocmd = BIO_READ;
 bp->b_iodone = swp_pager_async_iodone;
 bp->b_rcred = crhold(thread0.td_ucred);
 bp->b_wcred = crhold(thread0.td_ucred);
 bp->b_blkno = blk;
 bp->b_bcount = PAGE_SIZE * count;
 bp->b_bufsize = PAGE_SIZE * count;
 bp->b_npages = count;
 bp->b_pgbefore = rbehind != ((void*)0) ? *rbehind : 0;
 bp->b_pgafter = rahead != ((void*)0) ? *rahead : 0;

 VM_CNT_INC(v_swapin);
 VM_CNT_ADD(v_swappgsin, count);
 BUF_KERNPROC(bp);
 swp_pager_strategy(bp);






 VM_OBJECT_WLOCK(object);
 while ((ma[0]->oflags & VPO_SWAPINPROG) != 0) {
  ma[0]->oflags |= VPO_SWAPSLEEP;
  VM_CNT_INC(v_intrans);
  if (VM_OBJECT_SLEEP(object, &object->handle, PSWP,
      "swread", hz * 20)) {
   printf(
"swap_pager: indefinite wait buffer: bufobj: %p, blkno: %jd, size: %ld\n",
       bp->b_bufobj, (intmax_t)bp->b_blkno, bp->b_bcount);
  }
 }




 for (i = 0; i < reqcount; i++)
  if (ma[i]->valid != VM_PAGE_BITS_ALL)
   return (VM_PAGER_ERROR);

 return (VM_PAGER_OK);







}
