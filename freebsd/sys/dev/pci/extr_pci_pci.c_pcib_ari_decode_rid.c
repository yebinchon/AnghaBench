
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct pcib_softc {int flags; } ;
typedef int device_t ;


 int PCIB_ENABLE_ARI ;
 int PCIE_ARI_RID2FUNC (int ) ;
 int PCIE_ARI_RID2SLOT (int ) ;
 int PCI_RID2BUS (int ) ;
 int PCI_RID2FUNC (int ) ;
 int PCI_RID2SLOT (int ) ;
 struct pcib_softc* device_get_softc (int ) ;

__attribute__((used)) static void
pcib_ari_decode_rid(device_t pcib, uint16_t rid, int *bus, int *slot,
    int *func)
{
 struct pcib_softc *sc;

 sc = device_get_softc(pcib);

 *bus = PCI_RID2BUS(rid);
 if (sc->flags & PCIB_ENABLE_ARI) {
  *slot = PCIE_ARI_RID2SLOT(rid);
  *func = PCIE_ARI_RID2FUNC(rid);
 } else {
  *slot = PCI_RID2SLOT(rid);
  *func = PCI_RID2FUNC(rid);
 }
}
