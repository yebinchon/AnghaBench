
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct hub_result {int portno; } ;
struct TYPE_5__ {TYPE_3__* sc_udev; } ;
struct acpi_uhub_softc {int nports; TYPE_1__* port; TYPE_2__ usc; } ;
typedef int device_t ;
struct TYPE_6__ {int hub; } ;
struct TYPE_4__ {scalar_t__ handle; } ;
typedef scalar_t__ ACPI_HANDLE ;


 int ACPI_IVAR_HANDLE ;
 int ENXIO ;
 int Giant ;
 struct acpi_uhub_softc* device_get_softc (int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int uhub_find_iface_index (int ,int ,struct hub_result*) ;

__attribute__((used)) static int
acpi_uhub_read_ivar(device_t dev, device_t child, int idx, uintptr_t *res)
{
 struct hub_result hres;
 struct acpi_uhub_softc *sc = device_get_softc(dev);
 ACPI_HANDLE ah;

 mtx_lock(&Giant);
 uhub_find_iface_index(sc->usc.sc_udev->hub, child, &hres);
 mtx_unlock(&Giant);

 if ((idx == ACPI_IVAR_HANDLE) &&
     (hres.portno > 0) &&
     (hres.portno <= sc->nports) &&
     (ah = sc->port[hres.portno - 1].handle)) {
  *res = (uintptr_t)ah;
  return (0);
 }
 return (ENXIO);
}
