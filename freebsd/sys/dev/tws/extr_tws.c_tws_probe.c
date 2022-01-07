
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 scalar_t__ TWS_DEVICE_ID ;
 char* TWS_DRIVER_VERSION_STRING ;
 scalar_t__ TWS_VENDOR_ID ;
 int device_set_desc (int ,char*) ;
 scalar_t__ pci_get_device (int ) ;
 scalar_t__ pci_get_vendor (int ) ;
 int printf (char*,char*) ;

__attribute__((used)) static int
tws_probe(device_t dev)
{
    static u_int8_t first_ctlr = 1;

    if ((pci_get_vendor(dev) == TWS_VENDOR_ID) &&
        (pci_get_device(dev) == TWS_DEVICE_ID)) {
        device_set_desc(dev, "LSI 3ware SAS/SATA Storage Controller");
        if (first_ctlr) {
            printf("LSI 3ware device driver for SAS/SATA storage "
                    "controllers, version: %s\n", TWS_DRIVER_VERSION_STRING);
            first_ctlr = 0;
        }

        return(BUS_PROBE_DEFAULT);
    }
    return (ENXIO);
}
