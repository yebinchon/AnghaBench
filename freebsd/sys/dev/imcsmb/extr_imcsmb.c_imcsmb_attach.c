
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imcsmb_softc {int * smbus; int regs; int imcsmb_pci; int dev; } ;
typedef int device_t ;


 int ENXIO ;
 int bus_generic_attach (int ) ;
 int * device_add_child (int ,char*,int) ;
 int device_get_ivars (int ) ;
 int device_get_parent (int ) ;
 struct imcsmb_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;

__attribute__((used)) static int
imcsmb_attach(device_t dev)
{
 struct imcsmb_softc *sc;
 int rc;


 sc = device_get_softc(dev);
 sc->dev = dev;
 sc->imcsmb_pci = device_get_parent(dev);
 sc->regs = device_get_ivars(dev);


 sc->smbus = device_add_child(dev, "smbus", -1);
 if (sc->smbus == ((void*)0)) {

  device_printf(dev, "Child smbus not added\n");
  rc = ENXIO;
  goto out;
 }


 if ((rc = bus_generic_attach(dev)) != 0) {
  device_printf(dev, "Failed to attach smbus: %d\n", rc);
 }

out:
 return (rc);
}
