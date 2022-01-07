
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_1__ ;


typedef int vm_pindex_t ;
typedef TYPE_1__* vm_page_t ;
typedef int u_char ;
struct md_s {int object; } ;
struct bio {int bio_cmd; int bio_flags; int bio_ma_offset; int bio_offset; int bio_length; TYPE_1__** bio_ma; int * bio_data; } ;
typedef int bus_dma_segment_t ;
struct TYPE_20__ {scalar_t__ dirty; } ;




 int BIO_UNMAPPED ;
 int BIO_VLIST ;

 int ENOSPC ;
 int EOPNOTSUPP ;
 int PAGE_SIZE ;
 int VM_ALLOC_SYSTEM ;
 int VM_OBJECT_WLOCK (int ) ;
 int VM_OBJECT_WUNLOCK (int ) ;
 int VM_PAGER_ERROR ;
 int VM_PAGER_FAIL ;
 int VM_PAGER_OK ;
 scalar_t__ VM_PAGE_BITS_ALL ;
 scalar_t__ VM_PAGE_TO_PHYS (TYPE_1__*) ;
 int cpu_flush_dcache (int *,int) ;
 int md_swap_page_free (TYPE_1__*) ;
 int physcopyin (int *,scalar_t__,int) ;
 int physcopyin_vlist (int *,int,scalar_t__,int) ;
 int physcopyout (scalar_t__,int *,int) ;
 int physcopyout_vlist (scalar_t__,int *,int,int) ;
 int pmap_copy_pages (TYPE_1__**,int,TYPE_1__**,int,int) ;
 int pmap_zero_page (TYPE_1__*) ;
 int pmap_zero_page_area (TYPE_1__*,int,int) ;
 int vm_object_pip_add (int ,int) ;
 int vm_object_pip_wakeup (int ) ;
 int vm_page_activate (TYPE_1__*) ;
 scalar_t__ vm_page_active (TYPE_1__*) ;
 scalar_t__ vm_page_all_valid (TYPE_1__*) ;
 int vm_page_dirty (TYPE_1__*) ;
 TYPE_1__* vm_page_grab (int ,int,int ) ;
 int vm_page_lock (TYPE_1__*) ;
 int vm_page_reference (TYPE_1__*) ;
 int vm_page_unlock (TYPE_1__*) ;
 int vm_page_valid (TYPE_1__*) ;
 int vm_page_xunbusy (TYPE_1__*) ;
 int vm_pager_get_pages (int ,TYPE_1__**,int,int *,int *) ;
 int vm_pager_page_unswapped (TYPE_1__*) ;

__attribute__((used)) static int
mdstart_swap(struct md_s *sc, struct bio *bp)
{
 vm_page_t m;
 u_char *p;
 vm_pindex_t i, lastp;
 bus_dma_segment_t *vlist;
 int rv, ma_offs, offs, len, lastend;

 switch (bp->bio_cmd) {
 case 129:
 case 128:
 case 130:
  break;
 default:
  return (EOPNOTSUPP);
 }

 p = bp->bio_data;
 ma_offs = (bp->bio_flags & (BIO_UNMAPPED|BIO_VLIST)) != 0 ?
     bp->bio_ma_offset : 0;
 vlist = (bp->bio_flags & BIO_VLIST) != 0 ?
     (bus_dma_segment_t *)bp->bio_data : ((void*)0);
 offs = bp->bio_offset % PAGE_SIZE;
 lastp = (bp->bio_offset + bp->bio_length - 1) / PAGE_SIZE;
 lastend = (bp->bio_offset + bp->bio_length - 1) % PAGE_SIZE + 1;

 rv = VM_PAGER_OK;
 VM_OBJECT_WLOCK(sc->object);
 vm_object_pip_add(sc->object, 1);
 for (i = bp->bio_offset / PAGE_SIZE; i <= lastp; i++) {
  len = ((i == lastp) ? lastend : PAGE_SIZE) - offs;
  m = vm_page_grab(sc->object, i, VM_ALLOC_SYSTEM);
  if (bp->bio_cmd == 129) {
   if (vm_page_all_valid(m))
    rv = VM_PAGER_OK;
   else
    rv = vm_pager_get_pages(sc->object, &m, 1,
        ((void*)0), ((void*)0));
   if (rv == VM_PAGER_ERROR) {
    md_swap_page_free(m);
    break;
   } else if (rv == VM_PAGER_FAIL) {






    pmap_zero_page(m);
    vm_page_valid(m);
   }
   if ((bp->bio_flags & BIO_UNMAPPED) != 0) {
    pmap_copy_pages(&m, offs, bp->bio_ma,
        ma_offs, len);
   } else if ((bp->bio_flags & BIO_VLIST) != 0) {
    physcopyout_vlist(VM_PAGE_TO_PHYS(m) + offs,
        vlist, ma_offs, len);
    cpu_flush_dcache(p, len);
   } else {
    physcopyout(VM_PAGE_TO_PHYS(m) + offs, p, len);
    cpu_flush_dcache(p, len);
   }
  } else if (bp->bio_cmd == 128) {
   if (len == PAGE_SIZE || vm_page_all_valid(m))
    rv = VM_PAGER_OK;
   else
    rv = vm_pager_get_pages(sc->object, &m, 1,
        ((void*)0), ((void*)0));
   if (rv == VM_PAGER_ERROR) {
    md_swap_page_free(m);
    break;
   } else if (rv == VM_PAGER_FAIL)
    pmap_zero_page(m);

   if ((bp->bio_flags & BIO_UNMAPPED) != 0) {
    pmap_copy_pages(bp->bio_ma, ma_offs, &m,
        offs, len);
   } else if ((bp->bio_flags & BIO_VLIST) != 0) {
    physcopyin_vlist(vlist, ma_offs,
        VM_PAGE_TO_PHYS(m) + offs, len);
   } else {
    physcopyin(p, VM_PAGE_TO_PHYS(m) + offs, len);
   }

   vm_page_valid(m);
   if (m->dirty != VM_PAGE_BITS_ALL) {
    vm_page_dirty(m);
    vm_pager_page_unswapped(m);
   }
  } else if (bp->bio_cmd == 130) {
   if (len == PAGE_SIZE || vm_page_all_valid(m))
    rv = VM_PAGER_OK;
   else
    rv = vm_pager_get_pages(sc->object, &m, 1,
        ((void*)0), ((void*)0));
   if (rv == VM_PAGER_ERROR) {
    md_swap_page_free(m);
    break;
   } else if (rv == VM_PAGER_FAIL) {
    md_swap_page_free(m);
    m = ((void*)0);
   } else {

    if (len != PAGE_SIZE) {
     pmap_zero_page_area(m, offs, len);
     if (m->dirty != VM_PAGE_BITS_ALL) {
      vm_page_dirty(m);
      vm_pager_page_unswapped(m);
     }
    } else {
     vm_pager_page_unswapped(m);
     md_swap_page_free(m);
     m = ((void*)0);
    }
   }
  }
  if (m != ((void*)0)) {
   vm_page_xunbusy(m);
   vm_page_lock(m);
   if (vm_page_active(m))
    vm_page_reference(m);
   else
    vm_page_activate(m);
   vm_page_unlock(m);
  }


  p += PAGE_SIZE - offs;
  offs = 0;
  ma_offs += len;
 }
 vm_object_pip_wakeup(sc->object);
 VM_OBJECT_WUNLOCK(sc->object);
 return (rv != VM_PAGER_ERROR ? 0 : ENOSPC);
}
