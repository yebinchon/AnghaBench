
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long vm_paddr_t ;
typedef unsigned long u_long ;


 int AA_DMMU_PWPR ;
 int ASI_DMMU ;
 int ASI_LSU_CTL_REG ;
 unsigned long LSU_PM_MASK ;
 unsigned long LSU_PM_SHIFT ;
 unsigned long LSU_PW ;
 unsigned long ldxa (int ,int ) ;
 int stxa_sync (int ,int ,unsigned long) ;

int
watch_phys_set_mask(vm_paddr_t pa, u_long mask)
{
 u_long lsucr;

 stxa_sync(AA_DMMU_PWPR, ASI_DMMU, pa & (((2UL << 38) - 1) << 3));
 lsucr = ldxa(0, ASI_LSU_CTL_REG);
 lsucr = ((lsucr | LSU_PW) & ~LSU_PM_MASK) |
     (mask << LSU_PM_SHIFT);
 stxa_sync(0, ASI_LSU_CTL_REG, lsucr);
 return (0);
}
