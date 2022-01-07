
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef scalar_t__ u_int ;


 int ASI_LSU_CTL_REG ;
 scalar_t__ CPU_IMPL_ULTRASPARCIII ;
 int KERNBASE ;
 int LSU_DC ;
 int LSU_IC ;
 int LSU_PE ;
 int flush (int ) ;
 int ldxa (int ,int ) ;
 int stxa (int ,int ,int) ;

void
cheetah_cache_enable(u_int cpu_impl)
{
 u_long lsu;

 lsu = ldxa(0, ASI_LSU_CTL_REG);
 if (cpu_impl == CPU_IMPL_ULTRASPARCIII) {

  lsu &= ~LSU_PE;
 }
 stxa(0, ASI_LSU_CTL_REG, lsu | LSU_IC | LSU_DC);
 flush(KERNBASE);
}
