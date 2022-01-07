
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
typedef int vm_offset_t ;
typedef TYPE_2__* vm_object_t ;
struct buf {int b_ioflags; scalar_t__ b_error; scalar_t__ b_iocmd; int b_npages; int b_pgbefore; int b_pgafter; int b_flags; int * b_bufobj; int * b_vp; TYPE_1__** b_pages; scalar_t__ b_kvabase; scalar_t__ b_data; scalar_t__ b_bcount; scalar_t__ b_blkno; } ;
struct TYPE_18__ {int handle; } ;
struct TYPE_17__ {int oflags; scalar_t__ dirty; TYPE_2__* object; } ;


 int BIO_ERROR ;
 scalar_t__ BIO_READ ;
 int B_ASYNC ;
 scalar_t__ ENOMEM ;
 int KASSERT (int,char*) ;
 int MPASS (int) ;
 int VM_OBJECT_WLOCK (TYPE_2__*) ;
 int VM_OBJECT_WUNLOCK (TYPE_2__*) ;
 scalar_t__ VM_PAGE_BITS_ALL ;
 int VPO_SWAPINPROG ;
 int VPO_SWAPSLEEP ;
 scalar_t__ buf_mapped (struct buf*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int nsw_wcount_async ;
 int pmap_page_is_mapped (TYPE_1__*) ;
 int pmap_page_is_write_mapped (TYPE_1__*) ;
 int pmap_qremove (int ,int) ;
 int printf (char*,char*,long,long,scalar_t__) ;
 int swbuf_mtx ;
 int swrbuf_zone ;
 int swwbuf_zone ;
 int uma_zfree (int ,struct buf*) ;
 int vm_object_pip_wakeupn (TYPE_2__*,int) ;
 int vm_page_activate (TYPE_1__*) ;
 int vm_page_deactivate_noreuse (TYPE_1__*) ;
 int vm_page_invalid (TYPE_1__*) ;
 int vm_page_lock (TYPE_1__*) ;
 int vm_page_readahead_finish (TYPE_1__*) ;
 int vm_page_sunbusy (TYPE_1__*) ;
 int vm_page_undirty (TYPE_1__*) ;
 int vm_page_unlock (TYPE_1__*) ;
 int vm_page_valid (TYPE_1__*) ;
 int wakeup (int*) ;

__attribute__((used)) static void
swp_pager_async_iodone(struct buf *bp)
{
 int i;
 vm_object_t object = ((void*)0);





 if (bp->b_ioflags & BIO_ERROR && bp->b_error != ENOMEM) {
  printf(
      "swap_pager: I/O error - %s failed; blkno %ld,"
   "size %ld, error %d\n",
      ((bp->b_iocmd == BIO_READ) ? "pagein" : "pageout"),
      (long)bp->b_blkno,
      (long)bp->b_bcount,
      bp->b_error
  );
 }




 if (buf_mapped(bp))
  pmap_qremove((vm_offset_t)bp->b_data, bp->b_npages);
 else
  bp->b_data = bp->b_kvabase;

 if (bp->b_npages) {
  object = bp->b_pages[0]->object;
  VM_OBJECT_WLOCK(object);
 }
 for (i = 0; i < bp->b_npages; ++i) {
  vm_page_t m = bp->b_pages[i];

  m->oflags &= ~VPO_SWAPINPROG;
  if (m->oflags & VPO_SWAPSLEEP) {
   m->oflags &= ~VPO_SWAPSLEEP;
   wakeup(&object->handle);
  }

  if (bp->b_ioflags & BIO_ERROR) {






   if (bp->b_iocmd == BIO_READ) {





    vm_page_invalid(m);
   } else {





    MPASS(m->dirty == VM_PAGE_BITS_ALL);
    vm_page_lock(m);
    vm_page_activate(m);
    vm_page_unlock(m);
    vm_page_sunbusy(m);
   }
  } else if (bp->b_iocmd == BIO_READ) {
   KASSERT(!pmap_page_is_mapped(m),
       ("swp_pager_async_iodone: page %p is mapped", m));
   KASSERT(m->dirty == 0,
       ("swp_pager_async_iodone: page %p is dirty", m));

   vm_page_valid(m);
   if (i < bp->b_pgbefore ||
       i >= bp->b_npages - bp->b_pgafter)
    vm_page_readahead_finish(m);
  } else {
   KASSERT(!pmap_page_is_write_mapped(m),
       ("swp_pager_async_iodone: page %p is not write"
       " protected", m));
   vm_page_undirty(m);
   vm_page_lock(m);
   vm_page_deactivate_noreuse(m);
   vm_page_unlock(m);
   vm_page_sunbusy(m);
  }
 }





 if (object != ((void*)0)) {
  vm_object_pip_wakeupn(object, bp->b_npages);
  VM_OBJECT_WUNLOCK(object);
 }






 if (bp->b_vp) {
      bp->b_vp = ((void*)0);
      bp->b_bufobj = ((void*)0);
 }



 if (bp->b_flags & B_ASYNC) {
  mtx_lock(&swbuf_mtx);
  if (++nsw_wcount_async == 1)
   wakeup(&nsw_wcount_async);
  mtx_unlock(&swbuf_mtx);
 }
 uma_zfree((bp->b_iocmd == BIO_READ) ? swrbuf_zone : swwbuf_zone, bp);
}
