
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int AR9130_DEVID ;
 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 int VENDOR_ATHEROS ;
 char* ath_hal_probe (int,int) ;
 int device_get_name (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*,int,int) ;
 int device_set_desc (int ,char const*) ;
 scalar_t__ resource_int_value (int ,int ,char*,int*) ;

__attribute__((used)) static int
ath_ahb_probe(device_t dev)
{
 int vendor_id, device_id;
 const char* devname;




 if (resource_int_value(device_get_name(dev), device_get_unit(dev),
     "vendor_id", &vendor_id) != 0) {
  vendor_id = VENDOR_ATHEROS;
 }

 if (resource_int_value(device_get_name(dev), device_get_unit(dev),
     "device_id", &device_id) != 0) {
  device_id = AR9130_DEVID;
 }

 device_printf(dev, "Vendor=0x%04x, Device=0x%04x\n",
     vendor_id & 0xffff,
     device_id & 0xffff);


 devname = ath_hal_probe(vendor_id, device_id);

 if (devname != ((void*)0)) {
  device_set_desc(dev, devname);
  return BUS_PROBE_DEFAULT;
 }
 return ENXIO;
}
