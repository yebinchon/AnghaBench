
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
typedef int device_t ;
struct TYPE_3__ {scalar_t__ chip_id; } ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 scalar_t__ NCT_LDN_GPIO ;
 scalar_t__ SUPERIO_DEV_GPIO ;
 scalar_t__ SUPERIO_VENDOR_NUVOTON ;
 int device_set_desc (int ,char*) ;
 TYPE_1__* nct_devs ;
 int nitems (TYPE_1__*) ;
 scalar_t__ superio_devid (int ) ;
 scalar_t__ superio_get_ldn (int ) ;
 scalar_t__ superio_get_type (int ) ;
 scalar_t__ superio_vendor (int ) ;

__attribute__((used)) static int
nct_probe(device_t dev)
{
 int j;
 uint16_t chipid;

 if (superio_vendor(dev) != SUPERIO_VENDOR_NUVOTON)
  return (ENXIO);
 if (superio_get_type(dev) != SUPERIO_DEV_GPIO)
  return (ENXIO);





 if (superio_get_ldn(dev) != NCT_LDN_GPIO)
  return (ENXIO);

 chipid = superio_devid(dev);
 for (j = 0; j < nitems(nct_devs); j++) {
  if (chipid == nct_devs[j].chip_id) {
   device_set_desc(dev, "Nuvoton GPIO controller");
   return (BUS_PROBE_DEFAULT);
  }
 }
 return (ENXIO);
}
