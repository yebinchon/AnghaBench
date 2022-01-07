
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_pcib_softc {int ap_handle; } ;
typedef int device_t ;



 struct acpi_pcib_softc* device_get_softc (int ) ;
 int pcib_read_ivar (int ,int ,int,uintptr_t*) ;

__attribute__((used)) static int
acpi_pcib_read_ivar(device_t dev, device_t child, int which, uintptr_t *result)
{
    struct acpi_pcib_softc *sc = device_get_softc(dev);

    switch (which) {
    case 128:
 *result = (uintptr_t)sc->ap_handle;
 return (0);
    }
    return (pcib_read_ivar(dev, child, which, result));
}
