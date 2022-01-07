
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct generic_pcie_acpi_softc {int ap_prt; } ;
typedef int device_t ;


 int acpi_pcib_route_interrupt (int ,int ,int,int *) ;
 struct generic_pcie_acpi_softc* device_get_softc (int ) ;

__attribute__((used)) static int
generic_pcie_acpi_route_interrupt(device_t bus, device_t dev, int pin)
{
 struct generic_pcie_acpi_softc *sc;

 sc = device_get_softc(bus);
 return (acpi_pcib_route_interrupt(bus, dev, pin, &sc->ap_prt));
}
