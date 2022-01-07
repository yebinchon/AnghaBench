
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ral_pci_softc {TYPE_1__* sc_opns; } ;
typedef int device_t ;
struct TYPE_2__ {int (* shutdown ) (struct ral_pci_softc*) ;} ;


 struct ral_pci_softc* device_get_softc (int ) ;
 int stub1 (struct ral_pci_softc*) ;

__attribute__((used)) static int
ral_pci_shutdown(device_t dev)
{
 struct ral_pci_softc *psc = device_get_softc(dev);

 (*psc->sc_opns->shutdown)(psc);

 return 0;
}
