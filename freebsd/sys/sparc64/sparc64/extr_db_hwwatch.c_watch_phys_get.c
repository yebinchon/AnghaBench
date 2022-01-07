
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* vm_paddr_t ;
typedef int u_long ;


 int AA_DMMU_PWPR ;
 int ASI_DMMU ;
 int ASI_LSU_CTL_REG ;
 int LSU_PM_MASK ;
 int LSU_PM_SHIFT ;
 void* ldxa (int ,int ) ;
 int watch_phys_active () ;

vm_paddr_t
watch_phys_get(int *bm)
{
 vm_paddr_t pa;
 u_long lsucr;

 if (!watch_phys_active())
  return (0);

 pa = ldxa(AA_DMMU_PWPR, ASI_DMMU);
 lsucr = ldxa(0, ASI_LSU_CTL_REG);
 *bm = (lsucr & LSU_PM_MASK) >> LSU_PM_SHIFT;

 return (pa);
}
