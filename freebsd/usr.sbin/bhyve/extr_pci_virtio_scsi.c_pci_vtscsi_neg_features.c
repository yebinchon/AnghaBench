
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct pci_vtscsi_softc {int vss_features; } ;



__attribute__((used)) static void
pci_vtscsi_neg_features(void *vsc, uint64_t negotiated_features)
{
 struct pci_vtscsi_softc *sc = vsc;

 sc->vss_features = negotiated_features;
}
