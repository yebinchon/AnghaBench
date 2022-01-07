
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imcsmb_pci_softc {scalar_t__ semaphore; int * dev; } ;
typedef int * device_t ;


 int ENXIO ;
 int bus_generic_attach (int *) ;
 int * device_add_child (int *,char*,int) ;
 struct imcsmb_pci_softc* device_get_softc (int *) ;
 int device_printf (int *,char*,...) ;
 int device_set_ivars (int *,int *) ;
 int * imcsmb_regs ;

__attribute__((used)) static int
imcsmb_pci_attach(device_t dev)
{
 struct imcsmb_pci_softc *sc;
 device_t child;
 int rc;
 int unit;


 sc = device_get_softc(dev);
 sc->dev = dev;
 sc->semaphore = 0;


 for (unit = 0; unit < 2; unit++) {
  child = device_add_child(dev, "imcsmb", -1);
  if (child == ((void*)0)) {

   device_printf(dev, "Child imcsmb not added\n");
   rc = ENXIO;
   goto out;
  }



  device_set_ivars(child, &imcsmb_regs[unit]);
 }


 if ((rc = bus_generic_attach(dev)) != 0) {
  device_printf(dev, "failed to attach children: %d\n", rc);
  goto out;
 }

out:
 return (rc);
}
