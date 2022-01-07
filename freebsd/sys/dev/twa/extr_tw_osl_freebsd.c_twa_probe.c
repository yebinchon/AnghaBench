
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;
typedef int TW_UINT8 ;
typedef int TW_INT32 ;


 int ENXIO ;
 int TW_OSLI_DEVICE_NAME ;
 char* TW_OSL_DRIVER_VERSION_STRING ;
 int device_set_desc (int ,int ) ;
 int pci_get_device (int ) ;
 int pci_get_vendor (int ) ;
 int printf (char*,char*) ;
 scalar_t__ tw_cl_ctlr_supported (int ,int ) ;
 int tw_osli_dbg_printf (int,char*) ;

__attribute__((used)) static TW_INT32
twa_probe(device_t dev)
{
 static TW_UINT8 first_ctlr = 1;

 tw_osli_dbg_printf(3, "entered");

 if (tw_cl_ctlr_supported(pci_get_vendor(dev), pci_get_device(dev))) {
  device_set_desc(dev, TW_OSLI_DEVICE_NAME);

  if (first_ctlr) {
   printf("3ware device driver for 9000 series storage "
    "controllers, version: %s\n",
    TW_OSL_DRIVER_VERSION_STRING);
   first_ctlr = 0;
  }
  return(0);
 }
 return(ENXIO);
}
