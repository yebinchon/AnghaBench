
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_hpcib_softc {int ap_dma_tag; } ;
typedef int device_t ;
typedef int bus_dma_tag_t ;


 struct acpi_hpcib_softc* device_get_softc (int ) ;

__attribute__((used)) static bus_dma_tag_t
acpi_pcib_get_dma_tag(device_t bus, device_t child)
{
 struct acpi_hpcib_softc *sc;

 sc = device_get_softc(bus);

 return (sc->ap_dma_tag);
}
