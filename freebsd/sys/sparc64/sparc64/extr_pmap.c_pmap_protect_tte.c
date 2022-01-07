
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;
typedef int vm_offset_t ;
typedef int u_long ;
struct tte {int tte_data; } ;
struct pmap {int dummy; } ;


 int MA_OWNED ;
 int PHYS_TO_VM_PAGE (int ) ;
 int PMAP_LOCK_ASSERT (struct pmap*,int ) ;
 int TD_PA (int) ;
 int TD_PV ;
 int TD_SW ;
 int TD_W ;
 int atomic_clear_long (int *,int) ;
 int vm_page_dirty (int ) ;

__attribute__((used)) static int
pmap_protect_tte(struct pmap *pm, struct pmap *pm2, struct tte *tp,
    vm_offset_t va)
{
 u_long data;
 vm_page_t m;

 PMAP_LOCK_ASSERT(pm, MA_OWNED);
 data = atomic_clear_long(&tp->tte_data, TD_SW | TD_W);
 if ((data & (TD_PV | TD_W)) == (TD_PV | TD_W)) {
  m = PHYS_TO_VM_PAGE(TD_PA(data));
  vm_page_dirty(m);
 }
 return (1);
}
