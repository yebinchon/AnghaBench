
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct bcma_devinfo {int * res_agent; } ;
typedef int device_t ;


 int BCMA_DMP_RESETCTRL ;
 int DELAY (int) ;
 int ENODEV ;
 int bcma_dmp_wait_reset (int ,struct bcma_devinfo*) ;
 scalar_t__ bhnd_bus_read_4 (int *,int ) ;
 int bhnd_bus_write_4 (int *,int ,scalar_t__) ;

int
bcma_dmp_write_reset(device_t child, struct bcma_devinfo *dinfo, uint32_t value)
{
 uint32_t rst;

 if (dinfo->res_agent == ((void*)0))
  return (ENODEV);


 rst = bhnd_bus_read_4(dinfo->res_agent, BCMA_DMP_RESETCTRL);
 if (rst == value)
  return (0);

 bhnd_bus_write_4(dinfo->res_agent, BCMA_DMP_RESETCTRL, value);
 bhnd_bus_read_4(dinfo->res_agent, BCMA_DMP_RESETCTRL);
 DELAY(10);

 return (bcma_dmp_wait_reset(child, dinfo));
}
