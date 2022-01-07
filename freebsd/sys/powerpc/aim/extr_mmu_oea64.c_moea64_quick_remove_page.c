
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ vm_offset_t ;
typedef int mmu_t ;
struct TYPE_2__ {int qmap_lock; } ;


 int KASSERT (int,char*) ;
 int MA_OWNED ;
 scalar_t__ PCPU_GET (int ) ;
 int PCPU_PTR (int ) ;
 TYPE_1__ aim ;
 scalar_t__ hw_direct_map ;
 int mtx_assert (int ,int ) ;
 int mtx_unlock (int ) ;
 int qmap_addr ;
 int sched_unpin () ;

void
moea64_quick_remove_page(mmu_t mmu, vm_offset_t addr)
{
 if (hw_direct_map)
  return;

 mtx_assert(PCPU_PTR(aim.qmap_lock), MA_OWNED);
 KASSERT(PCPU_GET(qmap_addr) == addr,
     ("moea64_quick_remove_page: invalid address"));
 mtx_unlock(PCPU_PTR(aim.qmap_lock));
 sched_unpin();
}
