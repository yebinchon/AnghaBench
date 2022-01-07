
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_hpcib_softc {uintptr_t ap_segment; uintptr_t ap_bus; int ap_flags; int ap_handle; } ;
typedef int device_t ;




 int ENOENT ;


 struct acpi_hpcib_softc* device_get_softc (int ) ;

__attribute__((used)) static int
acpi_pcib_read_ivar(device_t dev, device_t child, int which, uintptr_t *result)
{
    struct acpi_hpcib_softc *sc = device_get_softc(dev);

    switch (which) {
    case 128:
 *result = sc->ap_segment;
 return (0);
    case 129:
 *result = sc->ap_bus;
 return (0);
    case 130:
 *result = (uintptr_t)sc->ap_handle;
 return (0);
    case 131:
 *result = (uintptr_t)sc->ap_flags;
 return (0);
    }
    return (ENOENT);
}
