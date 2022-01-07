
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bhnd_pci_softc {int dummy; } ;


 int BHND_PCIE_ASSERT (struct bhnd_pci_softc*) ;
 int BHND_PCIE_IND_ADDR ;
 int BHND_PCIE_IND_DATA ;
 int BHND_PCI_LOCK (struct bhnd_pci_softc*) ;
 int BHND_PCI_READ_4 (struct bhnd_pci_softc*,int ) ;
 int BHND_PCI_UNLOCK (struct bhnd_pci_softc*) ;
 int BHND_PCI_WRITE_4 (struct bhnd_pci_softc*,int ,int ) ;

uint32_t
bhnd_pcie_read_proto_reg(struct bhnd_pci_softc *sc, uint32_t addr)
{
 uint32_t val;

 BHND_PCIE_ASSERT(sc);

 BHND_PCI_LOCK(sc);
 BHND_PCI_WRITE_4(sc, BHND_PCIE_IND_ADDR, addr);
 val = BHND_PCI_READ_4(sc, BHND_PCIE_IND_DATA);
 BHND_PCI_UNLOCK(sc);

 return (val);
}
