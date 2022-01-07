
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int device_t ;


 int ENXIO ;
 int SPR_SVR ;


 int SVR_VER (int ) ;
 int device_set_desc (int ,char*) ;
 int mfspr (int ) ;
 int ofw_bus_is_compatible (int ,char*) ;
 int ofw_bus_status_okay (int ) ;

__attribute__((used)) static int
mpc85xx_gpio_probe(device_t dev)
{
 uint32_t svr;

 if (!ofw_bus_status_okay(dev))
  return (ENXIO);

 if (!ofw_bus_is_compatible(dev, "gpio"))
  return (ENXIO);

 svr = mfspr(SPR_SVR);
 switch (SVR_VER(svr)) {
 case 129:
 case 128:
  break;
 default:
  return (ENXIO);
 }

 device_set_desc(dev, "MPC85xx GPIO driver");
 return (0);
}
