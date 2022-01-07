
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASI_LSU_CTL_REG ;
 int LSU_PW ;
 int ldxa (int ,int ) ;

int
watch_phys_active()
{

 return (ldxa(0, ASI_LSU_CTL_REG) & LSU_PW);
}
