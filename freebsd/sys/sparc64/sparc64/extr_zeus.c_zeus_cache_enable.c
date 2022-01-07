
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int u_int ;


 int ASI_LSU_CTL_REG ;
 int KERNBASE ;
 int LSU_DC ;
 int LSU_IC ;
 int flush (int ) ;
 int ldxa (int ,int ) ;
 int stxa (int ,int ,int) ;

void
zeus_cache_enable(u_int cpu_impl)
{
 u_long lsu;

 lsu = ldxa(0, ASI_LSU_CTL_REG);
 stxa(0, ASI_LSU_CTL_REG, lsu | LSU_IC | LSU_DC);
 flush(KERNBASE);
}
