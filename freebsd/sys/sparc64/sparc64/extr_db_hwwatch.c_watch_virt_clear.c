
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASI_LSU_CTL_REG ;
 int LSU_VW ;
 int ldxa (int ,int ) ;
 int stxa_sync (int ,int ,int) ;

void
watch_virt_clear()
{
 stxa_sync(0, ASI_LSU_CTL_REG,
     ldxa(0, ASI_LSU_CTL_REG) & ~LSU_VW);
}
