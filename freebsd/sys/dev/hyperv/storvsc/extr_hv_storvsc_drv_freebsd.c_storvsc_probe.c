
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int device_t ;
struct TYPE_2__ {int drv_desc; } ;


 int BUS_PROBE_DEFAULT ;


 int ENXIO ;
 int bootverbose ;
 int device_printf (int ,char*) ;
 int device_set_desc (int ,int ) ;
 TYPE_1__* g_drv_props_table ;
 int storvsc_get_storage_type (int ) ;

__attribute__((used)) static int
storvsc_probe(device_t dev)
{
 int ret = ENXIO;

 switch (storvsc_get_storage_type(dev)) {
 case 129:
  if(bootverbose)
   device_printf(dev,
       "Enlightened ATA/IDE detected\n");
  device_set_desc(dev, g_drv_props_table[129].drv_desc);
  ret = BUS_PROBE_DEFAULT;
  break;
 case 128:
  if(bootverbose)
   device_printf(dev, "Enlightened SCSI device detected\n");
  device_set_desc(dev, g_drv_props_table[128].drv_desc);
  ret = BUS_PROBE_DEFAULT;
  break;
 default:
  ret = ENXIO;
 }
 return (ret);
}
