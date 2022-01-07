
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int device_t ;
struct TYPE_2__ {int bootloader_config_flags; } ;


 int CVMX_BOOTINFO_CFG_FLAG_PCI_HOST ;
 int ENXIO ;
 int OCTEON_FEATURE_PCIE ;
 TYPE_1__* cvmx_sysinfo_get () ;
 scalar_t__ device_get_unit (int ) ;
 int device_set_desc (int ,char*) ;
 scalar_t__ octeon_has_feature (int ) ;

__attribute__((used)) static int
octopci_probe(device_t dev)
{
 if (octeon_has_feature(OCTEON_FEATURE_PCIE)) {
  device_set_desc(dev, "Cavium Octeon PCIe bridge");
  return (0);
 }


 if ((cvmx_sysinfo_get()->bootloader_config_flags & CVMX_BOOTINFO_CFG_FLAG_PCI_HOST) == 0)
  return (ENXIO);

 if (device_get_unit(dev) != 0)
  return (ENXIO);

 device_set_desc(dev, "Cavium Octeon PCI bridge");
 return (0);
}
