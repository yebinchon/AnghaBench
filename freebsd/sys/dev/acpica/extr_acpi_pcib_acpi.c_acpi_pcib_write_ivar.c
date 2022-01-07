
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_hpcib_softc {uintptr_t ap_bus; int ap_flags; int ap_handle; } ;
typedef int device_t ;
typedef int ACPI_HANDLE ;




 int EINVAL ;
 int ENOENT ;


 struct acpi_hpcib_softc* device_get_softc (int ) ;

__attribute__((used)) static int
acpi_pcib_write_ivar(device_t dev, device_t child, int which, uintptr_t value)
{
    struct acpi_hpcib_softc *sc = device_get_softc(dev);

    switch (which) {
    case 128:
 return (EINVAL);
    case 129:
 sc->ap_bus = value;
 return (0);
    case 130:
 sc->ap_handle = (ACPI_HANDLE)value;
 return (0);
    case 131:
 sc->ap_flags = (int)value;
 return (0);
    }
    return (ENOENT);
}
