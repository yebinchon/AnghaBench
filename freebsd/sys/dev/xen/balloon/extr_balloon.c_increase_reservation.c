
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int * vm_page_t ;
struct xen_memory_reservation {unsigned long nr_extents; int extent_start; int domid; int extent_order; int address_bits; } ;
struct TYPE_4__ {scalar_t__ current_pages; int balloon_low; scalar_t__ driver_pages; scalar_t__ hard_limit; } ;
struct TYPE_3__ {int q; } ;


 int DOMID_SELF ;
 void* HYPERVISOR_memory_op (int ,struct xen_memory_reservation*) ;
 int KASSERT (int,char*) ;
 int MA_OWNED ;
 int PAGE_SHIFT ;
 int * TAILQ_FIRST (int *) ;
 int * TAILQ_NEXT (int *,int ) ;
 int TAILQ_REMOVE (int *,int *,int ) ;
 int VM_PAGE_TO_PHYS (int *) ;
 int XENFEAT_auto_translated_physmap ;
 int XENMEM_decrease_reservation ;
 int XENMEM_populate_physmap ;
 int balloon_mutex ;
 int ballooned_pages ;
 TYPE_2__ bs ;
 int* frame_list ;
 int mtx_assert (int *,int ) ;
 unsigned long nitems (int*) ;
 TYPE_1__ plinks ;
 int set_xen_guest_handle (int ,int*) ;
 int vm_page_free (int *) ;
 int xen_feature (int ) ;

__attribute__((used)) static int
increase_reservation(unsigned long nr_pages)
{
 unsigned long i;
 vm_page_t page;
 long rc;
 struct xen_memory_reservation reservation = {
  .address_bits = 0,
  .extent_order = 0,
  .domid = DOMID_SELF
 };

 mtx_assert(&balloon_mutex, MA_OWNED);

 if (nr_pages > nitems(frame_list))
  nr_pages = nitems(frame_list);

 for (page = TAILQ_FIRST(&ballooned_pages), i = 0;
     i < nr_pages; i++, page = TAILQ_NEXT(page, plinks.q)) {
  KASSERT(page != ((void*)0), ("ballooned_pages list corrupt"));
  frame_list[i] = (VM_PAGE_TO_PHYS(page) >> PAGE_SHIFT);
 }

 set_xen_guest_handle(reservation.extent_start, frame_list);
 reservation.nr_extents = nr_pages;
 rc = HYPERVISOR_memory_op(
  XENMEM_populate_physmap, &reservation);
 if (rc < nr_pages) {
  if (rc > 0) {
   int ret;


   reservation.nr_extents = rc;
   ret = HYPERVISOR_memory_op(XENMEM_decrease_reservation,
     &reservation);
   KASSERT(ret == rc, ("HYPERVISOR_memory_op failed"));
  }
  if (rc >= 0)
   bs.hard_limit = (bs.current_pages + rc -
      bs.driver_pages);
  goto out;
 }

 for (i = 0; i < nr_pages; i++) {
  page = TAILQ_FIRST(&ballooned_pages);
  KASSERT(page != ((void*)0), ("Unable to get ballooned page"));
  TAILQ_REMOVE(&ballooned_pages, page, plinks.q);
  bs.balloon_low--;

  KASSERT(xen_feature(XENFEAT_auto_translated_physmap),
      ("auto translated physmap but mapping is valid"));

  vm_page_free(page);
 }

 bs.current_pages += nr_pages;

 out:
 return (0);
}
