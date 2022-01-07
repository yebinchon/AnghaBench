
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_hpcib_softc {int ap_prt; } ;
typedef int device_t ;


 int acpi_pcib_route_interrupt (int ,int ,int,int *) ;
 struct acpi_hpcib_softc* device_get_softc (int ) ;

__attribute__((used)) static int
acpi_pcib_acpi_route_interrupt(device_t pcib, device_t dev, int pin)
{
    struct acpi_hpcib_softc *sc = device_get_softc(pcib);

    return (acpi_pcib_route_interrupt(pcib, dev, pin, &sc->ap_prt));
}
