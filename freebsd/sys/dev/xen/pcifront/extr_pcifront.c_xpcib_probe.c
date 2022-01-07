
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xpcib_softc {struct pcifront_device* pdev; int bus; int domain; } ;
struct pcifront_device {TYPE_1__* xdev; } ;
typedef int device_t ;
struct TYPE_2__ {int otherend_id; } ;


 int DPRINTF (char*,int ) ;
 scalar_t__ device_get_ivars (int ) ;
 int device_get_parent (int ) ;
 scalar_t__ device_get_softc (int ) ;
 int device_get_unit (int ) ;

__attribute__((used)) static int
xpcib_probe(device_t dev)
{
 struct xpcib_softc *sc = (struct xpcib_softc *)device_get_softc(dev);
 struct pcifront_device *pdev = (struct pcifront_device *)device_get_ivars(device_get_parent(dev));

 DPRINTF("xpcib probe (bus=%d)\n", device_get_unit(dev));

 sc->domain = pdev->xdev->otherend_id;
 sc->bus = device_get_unit(dev);
 sc->pdev = pdev;

 return 0;
}
