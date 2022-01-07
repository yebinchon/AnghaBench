
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_3__ {int dev; } ;
typedef TYPE_1__ mxge_softc_t ;
typedef int device_t ;


 int PCIY_VENDOR ;
 int device_printf (int ,char*) ;
 scalar_t__ pci_find_cap (int ,int ,scalar_t__*) ;
 scalar_t__ pci_read_config (int ,scalar_t__,int) ;
 int pci_write_config (int ,scalar_t__,int,int) ;

__attribute__((used)) static uint32_t
mxge_read_reboot(mxge_softc_t *sc)
{
 device_t dev = sc->dev;
 uint32_t vs;


 if (pci_find_cap(dev, PCIY_VENDOR, &vs) != 0) {
  device_printf(sc->dev,
         "could not find vendor specific offset\n");
  return (uint32_t)-1;
 }

 pci_write_config(dev, vs + 0x10, 0x3, 1);

 pci_write_config(dev, vs + 0x18, 0xfffffff0, 4);
 return (pci_read_config(dev, vs + 0x14, 4));
}
