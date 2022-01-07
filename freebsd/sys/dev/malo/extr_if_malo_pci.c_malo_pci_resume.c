
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct malo_pci_softc {int malo_sc; } ;
typedef int device_t ;


 struct malo_pci_softc* device_get_softc (int ) ;
 int malo_resume (int *) ;

__attribute__((used)) static int
malo_pci_resume(device_t dev)
{
 struct malo_pci_softc *psc = device_get_softc(dev);

 malo_resume(&psc->malo_sc);

 return (0);
}
