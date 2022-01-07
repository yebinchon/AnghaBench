
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ENXIO ;
 scalar_t__ device_get_unit (int ) ;
 int device_printf (int ,char*) ;
 int fdt_clock_register_provider (int ) ;

__attribute__((used)) static int
mtk_clock_attach(device_t dev)
{

 if (device_get_unit(dev) != 0) {
  device_printf(dev, "Only one clock control allowed\n");
  return (ENXIO);
 }

 fdt_clock_register_provider(dev);

 return (0);
}
