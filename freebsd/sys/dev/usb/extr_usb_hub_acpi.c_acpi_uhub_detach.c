
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_uhub_softc {int port; } ;
typedef int device_t ;


 int M_USBDEV ;
 struct acpi_uhub_softc* device_get_softc (int ) ;
 int free (int ,int ) ;
 int uhub_detach (int ) ;

__attribute__((used)) static int
acpi_uhub_detach(device_t dev)
{
 struct acpi_uhub_softc *sc = device_get_softc(dev);

 free(sc->port, M_USBDEV);

 return (uhub_detach(dev));
}
