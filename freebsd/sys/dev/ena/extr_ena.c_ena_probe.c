
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_3__ {scalar_t__ vendor_id; scalar_t__ device_id; } ;
typedef TYPE_1__ ena_vendor_info_t ;
typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 char* DEVICE_DESC ;
 int ENA_DBG ;
 int ENXIO ;
 int device_set_desc_copy (int ,char*) ;
 int ena_trace (int ,char*,scalar_t__,scalar_t__) ;
 TYPE_1__* ena_vendor_info_array ;
 scalar_t__ pci_get_device (int ) ;
 scalar_t__ pci_get_vendor (int ) ;
 int sprintf (char*,char*) ;

__attribute__((used)) static int
ena_probe(device_t dev)
{
 ena_vendor_info_t *ent;
 char adapter_name[60];
 uint16_t pci_vendor_id = 0;
 uint16_t pci_device_id = 0;

 pci_vendor_id = pci_get_vendor(dev);
 pci_device_id = pci_get_device(dev);

 ent = ena_vendor_info_array;
 while (ent->vendor_id != 0) {
  if ((pci_vendor_id == ent->vendor_id) &&
      (pci_device_id == ent->device_id)) {
   ena_trace(ENA_DBG, "vendor=%x device=%x\n",
       pci_vendor_id, pci_device_id);

   sprintf(adapter_name, DEVICE_DESC);
   device_set_desc_copy(dev, adapter_name);
   return (BUS_PROBE_DEFAULT);
  }

  ent++;

 }

 return (ENXIO);
}
