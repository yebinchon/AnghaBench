
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
struct xen_memory_reservation {unsigned long nr_extents; int extent_start; int domid; int extent_order; int address_bits; } ;
struct TYPE_10__ {unsigned long current_pages; int balloon_low; } ;
struct TYPE_9__ {int q; } ;
struct TYPE_8__ {int flags; } ;


 int DOMID_SELF ;
 int HYPERVISOR_memory_op (int ,struct xen_memory_reservation*) ;
 int KASSERT (int,char*) ;
 int MA_OWNED ;
 int PAGE_SHIFT ;
 int PG_ZERO ;
 int TAILQ_INSERT_HEAD (int *,TYPE_1__*,int ) ;
 int VM_ALLOC_NOOBJ ;
 int VM_ALLOC_NORMAL ;
 int VM_ALLOC_ZERO ;
 int VM_PAGE_TO_PHYS (TYPE_1__*) ;
 int XENMEM_decrease_reservation ;
 int balloon_mutex ;
 int ballooned_pages ;
 TYPE_5__ bs ;
 int* frame_list ;
 int mtx_assert (int *,int ) ;
 unsigned long nitems (int*) ;
 TYPE_4__ plinks ;
 int pmap_zero_page (TYPE_1__*) ;
 int set_xen_guest_handle (int ,int*) ;
 TYPE_1__* vm_page_alloc (int *,int ,int) ;

__attribute__((used)) static int
decrease_reservation(unsigned long nr_pages)
{
 unsigned long i;
 vm_page_t page;
 int need_sleep = 0;
 int ret;
 struct xen_memory_reservation reservation = {
  .address_bits = 0,
  .extent_order = 0,
  .domid = DOMID_SELF
 };

 mtx_assert(&balloon_mutex, MA_OWNED);

 if (nr_pages > nitems(frame_list))
  nr_pages = nitems(frame_list);

 for (i = 0; i < nr_pages; i++) {
  if ((page = vm_page_alloc(((void*)0), 0,
       VM_ALLOC_NORMAL | VM_ALLOC_NOOBJ |
       VM_ALLOC_ZERO)) == ((void*)0)) {
   nr_pages = i;
   need_sleep = 1;
   break;
  }

  if ((page->flags & PG_ZERO) == 0) {







   pmap_zero_page(page);
  }

  frame_list[i] = (VM_PAGE_TO_PHYS(page) >> PAGE_SHIFT);

  TAILQ_INSERT_HEAD(&ballooned_pages, page, plinks.q);
  bs.balloon_low++;
 }

 set_xen_guest_handle(reservation.extent_start, frame_list);
 reservation.nr_extents = nr_pages;
 ret = HYPERVISOR_memory_op(XENMEM_decrease_reservation, &reservation);
 KASSERT(ret == nr_pages, ("HYPERVISOR_memory_op failed"));

 bs.current_pages -= nr_pages;

 return (need_sleep);
}
