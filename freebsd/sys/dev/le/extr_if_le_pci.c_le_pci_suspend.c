
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lsc; } ;
struct le_pci_softc {TYPE_1__ sc_am79900; } ;
typedef int device_t ;


 struct le_pci_softc* device_get_softc (int ) ;
 int lance_suspend (int *) ;

__attribute__((used)) static int
le_pci_suspend(device_t dev)
{
 struct le_pci_softc *lesc;

 lesc = device_get_softc(dev);

 lance_suspend(&lesc->sc_am79900.lsc);

 return (0);
}
