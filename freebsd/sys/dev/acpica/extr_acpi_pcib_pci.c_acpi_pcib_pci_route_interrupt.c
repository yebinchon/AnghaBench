
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * Pointer; } ;
struct acpi_pcib_softc {TYPE_1__ ap_prt; } ;
typedef int device_t ;


 int acpi_pcib_route_interrupt (int ,int ,int,TYPE_1__*) ;
 struct acpi_pcib_softc* device_get_softc (int ) ;
 int pcib_route_interrupt (int ,int ,int) ;

__attribute__((used)) static int
acpi_pcib_pci_route_interrupt(device_t pcib, device_t dev, int pin)
{
    struct acpi_pcib_softc *sc;

    sc = device_get_softc(pcib);





    if (sc->ap_prt.Pointer == ((void*)0))
 return (pcib_route_interrupt(pcib, dev, pin));
    else
 return (acpi_pcib_route_interrupt(pcib, dev, pin, &sc->ap_prt));
}
