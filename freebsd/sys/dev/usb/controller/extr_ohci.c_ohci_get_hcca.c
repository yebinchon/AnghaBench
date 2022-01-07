
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ohci_hcca {int dummy; } ;
struct TYPE_4__ {int hcca_pc; } ;
struct TYPE_5__ {struct ohci_hcca* sc_hcca_p; TYPE_1__ sc_hw; } ;
typedef TYPE_2__ ohci_softc_t ;


 int usb_pc_cpu_invalidate (int *) ;

__attribute__((used)) static struct ohci_hcca *
ohci_get_hcca(ohci_softc_t *sc)
{
 usb_pc_cpu_invalidate(&sc->sc_hw.hcca_pc);
 return (sc->sc_hcca_p);
}
