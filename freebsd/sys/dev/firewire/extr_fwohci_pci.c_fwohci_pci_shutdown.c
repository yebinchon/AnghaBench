
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fwohci_softc_t ;
typedef int device_t ;


 int bus_generic_shutdown (int ) ;
 int * device_get_softc (int ) ;
 int fwohci_stop (int *,int ) ;

__attribute__((used)) static int
fwohci_pci_shutdown(device_t dev)
{
 fwohci_softc_t *sc = device_get_softc(dev);

 bus_generic_shutdown(dev);
 fwohci_stop(sc, dev);
 return 0;
}
