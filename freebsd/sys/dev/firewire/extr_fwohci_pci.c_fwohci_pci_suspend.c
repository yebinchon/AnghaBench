
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fwohci_softc_t ;
typedef int device_t ;


 int bus_generic_suspend (int ) ;
 int * device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int fwohci_stop (int *,int ) ;

__attribute__((used)) static int
fwohci_pci_suspend(device_t dev)
{
 fwohci_softc_t *sc = device_get_softc(dev);
 int err;

 device_printf(dev, "fwohci_pci_suspend\n");
 err = bus_generic_suspend(dev);
 if (err)
  return err;
 fwohci_stop(sc, dev);
 return 0;
}
