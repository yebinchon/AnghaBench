
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct acpi_hpcib_softc {int dummy; } ;
typedef enum pci_feature { ____Placeholder_pci_feature } pci_feature ;
typedef int device_t ;


 int EINVAL ;
 int PCIM_OSC_CTL_PCIE_AER ;
 int PCIM_OSC_CTL_PCIE_HP ;


 int acpi_pcib_osc (struct acpi_hpcib_softc*,int ) ;
 struct acpi_hpcib_softc* device_get_softc (int ) ;

__attribute__((used)) static int
acpi_pcib_request_feature(device_t pcib, device_t dev, enum pci_feature feature)
{
 uint32_t osc_ctl;
 struct acpi_hpcib_softc *sc;

 sc = device_get_softc(pcib);

 switch (feature) {
 case 128:
  osc_ctl = PCIM_OSC_CTL_PCIE_HP;
  break;
 case 129:
  osc_ctl = PCIM_OSC_CTL_PCIE_AER;
  break;
 default:
  return (EINVAL);
 }

 return (acpi_pcib_osc(sc, osc_ctl));
}
