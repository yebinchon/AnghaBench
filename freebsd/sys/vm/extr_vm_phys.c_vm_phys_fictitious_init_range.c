
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
typedef scalar_t__ vm_paddr_t ;
typedef int vm_memattr_t ;
struct TYPE_5__ {int busy_lock; int oflags; } ;


 long PAGE_SIZE ;
 int VPB_UNBUSIED ;
 int VPO_UNMANAGED ;
 int bzero (TYPE_1__*,long) ;
 int vm_page_initfake (TYPE_1__*,scalar_t__,int ) ;

__attribute__((used)) static inline void
vm_phys_fictitious_init_range(vm_page_t range, vm_paddr_t start,
    long page_count, vm_memattr_t memattr)
{
 long i;

 bzero(range, page_count * sizeof(*range));
 for (i = 0; i < page_count; i++) {
  vm_page_initfake(&range[i], start + PAGE_SIZE * i, memattr);
  range[i].oflags &= ~VPO_UNMANAGED;
  range[i].busy_lock = VPB_UNBUSIED;
 }
}
