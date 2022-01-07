
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long vm_offset_t ;
typedef unsigned long u_long ;


 int AA_DMMU_VWPR ;
 int ASI_DMMU ;
 int ASI_LSU_CTL_REG ;
 unsigned long LSU_VM_MASK ;
 unsigned long LSU_VM_SHIFT ;
 unsigned long LSU_VW ;
 unsigned long ldxa (int ,int ) ;
 int stxa_sync (int ,int ,unsigned long) ;

int
watch_virt_set_mask(vm_offset_t va, u_long mask)
{
 u_long lsucr;

 stxa_sync(AA_DMMU_VWPR, ASI_DMMU, va & (((2UL << 41) - 1) << 3));
 lsucr = ldxa(0, ASI_LSU_CTL_REG);
 lsucr = ((lsucr | LSU_VW) & ~LSU_VM_MASK) |
     (mask << LSU_VM_SHIFT);
 stxa_sync(0, ASI_LSU_CTL_REG, lsucr);
 return (0);
}
