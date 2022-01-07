
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct pci_vtcon_softc {int vsc_features; } ;



__attribute__((used)) static void
pci_vtcon_neg_features(void *vsc, uint64_t negotiated_features)
{
 struct pci_vtcon_softc *sc = vsc;

 sc->vsc_features = negotiated_features;
}
