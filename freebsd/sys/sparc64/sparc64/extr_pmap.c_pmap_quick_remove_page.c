
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
struct tte {scalar_t__ tte_data; } ;


 int ASI_DMMU_DEMAP ;
 int ASI_IMMU_DEMAP ;
 int DCACHE_COLORS ;
 int KASSERT (int,char*) ;
 int KERNBASE ;
 int PAGE_SIZE ;
 scalar_t__ PCPU_GET (int ) ;
 int TLB_DEMAP_NUCLEUS ;
 int TLB_DEMAP_PAGE ;
 int TLB_DEMAP_VA (scalar_t__) ;
 int TTE_ZERO (struct tte*) ;
 scalar_t__ VM_MIN_DIRECT_ADDRESS ;
 int critical_exit () ;
 int flush (int ) ;
 int qmap_addr ;
 int stxa (int,int ,int ) ;
 struct tte* tsb_kvtotte (scalar_t__) ;

void
pmap_quick_remove_page(vm_offset_t addr)
{
 vm_offset_t qaddr;
 struct tte *tp;

 if (addr >= VM_MIN_DIRECT_ADDRESS)
  return;

 tp = tsb_kvtotte(addr);
 qaddr = PCPU_GET(qmap_addr);

 KASSERT((addr >= qaddr) && (addr < (qaddr + (PAGE_SIZE * DCACHE_COLORS))),
     ("pmap_quick_remove_page: invalid address"));
 KASSERT(tp->tte_data != 0, ("pmap_quick_remove_page: PTE not in use"));

 stxa(TLB_DEMAP_VA(addr) | TLB_DEMAP_NUCLEUS | TLB_DEMAP_PAGE, ASI_DMMU_DEMAP, 0);
 stxa(TLB_DEMAP_VA(addr) | TLB_DEMAP_NUCLEUS | TLB_DEMAP_PAGE, ASI_IMMU_DEMAP, 0);
 flush(KERNBASE);
 TTE_ZERO(tp);
 critical_exit();
}
