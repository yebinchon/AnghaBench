
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef int device_t ;
struct TYPE_2__ {int model; int subvendor; char* desc; } ;


 int BUS_PROBE_DEFAULT ;
 int BUS_PROBE_GENERIC ;
 int ENXIO ;
 scalar_t__ PCIC_BASEPERIPH ;
 scalar_t__ PCIS_BASEPERIPH_SDHC ;
 int device_set_desc (int ,char*) ;
 scalar_t__ pci_get_class (int ) ;
 scalar_t__ pci_get_device (int ) ;
 scalar_t__ pci_get_subclass (int ) ;
 int pci_get_subvendor (int ) ;
 scalar_t__ pci_get_vendor (int ) ;
 TYPE_1__* sdhci_devices ;

__attribute__((used)) static int
sdhci_pci_probe(device_t dev)
{
 uint32_t model;
 uint16_t subvendor;
 uint8_t class, subclass;
 int i, result;

 model = (uint32_t)pci_get_device(dev) << 16;
 model |= (uint32_t)pci_get_vendor(dev) & 0x0000ffff;
 subvendor = pci_get_subvendor(dev);
 class = pci_get_class(dev);
 subclass = pci_get_subclass(dev);

 result = ENXIO;
 for (i = 0; sdhci_devices[i].model != 0; i++) {
  if (sdhci_devices[i].model == model &&
      (sdhci_devices[i].subvendor == 0xffff ||
      sdhci_devices[i].subvendor == subvendor)) {
   device_set_desc(dev, sdhci_devices[i].desc);
   result = BUS_PROBE_DEFAULT;
   break;
  }
 }
 if (result == ENXIO && class == PCIC_BASEPERIPH &&
     subclass == PCIS_BASEPERIPH_SDHC) {
  device_set_desc(dev, "Generic SD HCI");
  result = BUS_PROBE_GENERIC;
 }

 return (result);
}
