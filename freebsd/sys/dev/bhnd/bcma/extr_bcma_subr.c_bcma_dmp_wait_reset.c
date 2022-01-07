
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct bcma_devinfo {int * res_agent; } ;
typedef int device_t ;


 int BCMA_DMP_RESETSTATUS ;
 int DELAY (int) ;
 int ENODEV ;
 int ETIMEDOUT ;
 scalar_t__ bhnd_bus_read_4 (int *,int ) ;
 int device_printf (int ,char*) ;

int
bcma_dmp_wait_reset(device_t child, struct bcma_devinfo *dinfo)
{
 uint32_t rst;

 if (dinfo->res_agent == ((void*)0))
  return (ENODEV);




 for (int i = 0; i < 10000; i += 10) {
  rst = bhnd_bus_read_4(dinfo->res_agent, BCMA_DMP_RESETSTATUS);
  if (rst == 0)
   return (0);

  DELAY(10);
 }

 device_printf(child, "BCMA_DMP_RESETSTATUS timeout\n");
 return (ETIMEDOUT);
}
