
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int u_long ;
struct psycho_softc {scalar_t__ sc_half; int sc_dev; } ;


 int FILTER_HANDLED ;
 scalar_t__ PCICTL_READ8 (struct psycho_softc*,int ) ;
 int PCR_AFA ;
 int PCR_AFS ;
 int device_get_nameunit (int ) ;
 int panic (char*,int ,scalar_t__,int ,int ) ;

__attribute__((used)) static int
psycho_pci_bus(void *arg)
{
 struct psycho_softc *sc = arg;
 uint64_t afar, afsr;

 afar = PCICTL_READ8(sc, PCR_AFA);
 afsr = PCICTL_READ8(sc, PCR_AFS);
 panic("%s: PCI bus %c error AFAR %#lx AFSR %#lx",
     device_get_nameunit(sc->sc_dev), 'A' + sc->sc_half, (u_long)afar,
     (u_long)afsr);
 return (FILTER_HANDLED);
}
