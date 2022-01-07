
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_hub {int nports; } ;
struct TYPE_4__ {TYPE_1__* sc_udev; } ;
struct acpi_uhub_softc {int nports; int ah; int port; TYPE_2__ usc; } ;
struct acpi_uhub_port {int dummy; } ;
typedef int device_t ;
struct TYPE_3__ {struct usb_hub* hub; } ;
typedef int ACPI_STATUS ;


 scalar_t__ ACPI_SUCCESS (int ) ;
 int ENXIO ;
 int M_USBDEV ;
 int M_WAITOK ;
 int M_ZERO ;
 int acpi_usb_hub_port_probe (int ,int ) ;
 struct acpi_uhub_softc* device_get_softc (int ) ;
 int malloc (int,int ,int) ;

__attribute__((used)) static int
acpi_uhub_attach_common(device_t dev)
{
 struct usb_hub *uh;
 struct acpi_uhub_softc *sc = device_get_softc(dev);
 ACPI_STATUS status;
 int ret = ENXIO;

 uh = sc->usc.sc_udev->hub;
 sc->nports = uh->nports;
 sc->port = malloc(sizeof(struct acpi_uhub_port) * uh->nports,
     M_USBDEV, M_WAITOK | M_ZERO);
 status = acpi_usb_hub_port_probe(dev, sc->ah);

 if (ACPI_SUCCESS(status)){
  ret = 0;
 }

 return (ret);
}
