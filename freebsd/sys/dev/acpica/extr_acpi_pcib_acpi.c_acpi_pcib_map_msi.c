
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct acpi_hpcib_softc {int ap_addr; int ap_segment; } ;
typedef int * device_t ;


 int ACPI_ADR_PCI_FUNC (int) ;
 int ACPI_ADR_PCI_SLOT (int) ;
 int PCIB_MAP_MSI (int *,int *,int,int *,int *) ;
 int * device_get_parent (int *) ;
 struct acpi_hpcib_softc* device_get_softc (int *) ;
 int * pci_find_dbsf (int ,int ,int ,int ) ;
 int pci_ht_map_msi (int *,int ) ;

__attribute__((used)) static int
acpi_pcib_map_msi(device_t pcib, device_t dev, int irq, uint64_t *addr,
    uint32_t *data)
{
 struct acpi_hpcib_softc *sc;
 device_t bus, hostb;
 int error;

 bus = device_get_parent(pcib);
 error = PCIB_MAP_MSI(device_get_parent(bus), dev, irq, addr, data);
 if (error)
  return (error);

 sc = device_get_softc(pcib);
 if (sc->ap_addr == -1)
  return (0);

 hostb = pci_find_dbsf(sc->ap_segment, 0, ACPI_ADR_PCI_SLOT(sc->ap_addr),
     ACPI_ADR_PCI_FUNC(sc->ap_addr));
 if (hostb != ((void*)0))
  pci_ht_map_msi(hostb, *addr);
 return (0);
}
