
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fwohci_softc_t ;
typedef int device_t ;


 int * device_get_softc (int ) ;
 int fwohci_pci_init (int ) ;
 int fwohci_resume (int *,int ) ;

__attribute__((used)) static int
fwohci_pci_resume(device_t dev)
{
 fwohci_softc_t *sc = device_get_softc(dev);

 fwohci_pci_init(dev);
 fwohci_resume(sc, dev);
 return 0;
}
