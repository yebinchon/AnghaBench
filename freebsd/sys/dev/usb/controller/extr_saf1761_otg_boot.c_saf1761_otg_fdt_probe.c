
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ENXIO ;
 scalar_t__ device_get_unit (int ) ;
 int device_set_desc (int ,char*) ;

__attribute__((used)) static int
saf1761_otg_fdt_probe(device_t dev)
{
 if (device_get_unit(dev) != 0)
  return (ENXIO);

 device_set_desc(dev, "ISP1761/SAF1761 DCI USB 2.0 Device Controller");

 return (0);
}
