
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_pci_softc {int pcie_link_status; } ;
typedef int device_t ;


 struct mtk_pci_softc* device_get_softc (int ) ;

__attribute__((used)) static inline int
mtk_pci_slot_has_link(device_t dev, int slot)
{
 struct mtk_pci_softc *sc = device_get_softc(dev);

 return !!(sc->pcie_link_status & (1<<slot));
}
