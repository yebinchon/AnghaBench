
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;
typedef int vm_offset_t ;
typedef int u_long ;
struct tte {int tte_data; } ;
typedef int pmap_t ;


 int PHYS_TO_VM_PAGE (int ) ;
 int TD_CV ;
 int TD_FAKE ;
 int TD_PV ;
 int TD_REF ;
 int TD_SW ;
 int TD_W ;
 int TS_8K ;
 int TTE_GET_PA (struct tte*) ;
 int tsb_tte_enter (int ,int ,int ,int ,int) ;
 int * tsb_tte_lookup (int ,int ) ;

__attribute__((used)) static int
pmap_copy_tte(pmap_t src_pmap, pmap_t dst_pmap, struct tte *tp,
    vm_offset_t va)
{
 vm_page_t m;
 u_long data;

 if ((tp->tte_data & TD_FAKE) != 0)
  return (1);
 if (tsb_tte_lookup(dst_pmap, va) == ((void*)0)) {
  data = tp->tte_data &
      ~(TD_PV | TD_REF | TD_SW | TD_CV | TD_W);
  m = PHYS_TO_VM_PAGE(TTE_GET_PA(tp));
  tsb_tte_enter(dst_pmap, m, va, TS_8K, data);
 }
 return (1);
}
