
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int pd_entry_t ;


 int PG_PS ;
 int invlpg (int ) ;
 int invltlb () ;

__attribute__((used)) static void
pmap_update_pde_invalidate(vm_offset_t va, pd_entry_t newpde)
{

 if ((newpde & PG_PS) == 0)

  invlpg(va);
 else




  invltlb();
}
