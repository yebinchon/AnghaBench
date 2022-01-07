
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
typedef int uint16_t ;
struct bhndb_pci_softc {int pci_quirks; int dev; } ;
struct bhndb_pci_probe {int erom; int hostb_core; } ;
struct bhnd_core_match {int dummy; } ;
typedef scalar_t__ bus_size_t ;
typedef int bhnd_size_t ;
typedef int bhnd_addr_t ;


 int BHNDB_PCI_QUIRK_SRSH_WAR ;
 scalar_t__ BHND_PCI_SPROM_SHADOW ;
 int BHND_PCI_SRSH_PI_ADDR_MASK ;
 int BHND_PCI_SRSH_PI_ADDR_SHIFT ;
 int BHND_PCI_SRSH_PI_MASK ;
 scalar_t__ BHND_PCI_SRSH_PI_OFFSET ;
 int BHND_PCI_SRSH_PI_SHIFT ;
 int BHND_PORT_DEVICE ;
 struct bhnd_core_match bhnd_core_get_match_desc (int *) ;
 int bhnd_erom_lookup_core_addr (int ,struct bhnd_core_match*,int ,int ,int ,int *,int*,int *) ;
 int bhndb_pci_probe_read (struct bhndb_pci_probe*,int,scalar_t__,int) ;
 int bhndb_pci_probe_write (struct bhndb_pci_probe*,int,scalar_t__,int,int) ;
 int device_printf (int ,char*,int) ;

__attribute__((used)) static int
bhndb_pci_srsh_pi_war(struct bhndb_pci_softc *sc,
    struct bhndb_pci_probe *probe)
{
 struct bhnd_core_match md;
 bhnd_addr_t pci_addr;
 bhnd_size_t pci_size;
 bus_size_t srsh_offset;
 uint16_t srsh_val, pci_val;
 uint16_t val;
 int error;

 if ((sc->pci_quirks & BHNDB_PCI_QUIRK_SRSH_WAR) == 0)
  return (0);



 md = bhnd_core_get_match_desc(&probe->hostb_core);
 error = bhnd_erom_lookup_core_addr(probe->erom, &md, BHND_PORT_DEVICE,
     0, 0, ((void*)0), &pci_addr, &pci_size);
 if (error) {
  device_printf(sc->dev, "no base address found for the PCI host "
      "bridge core: %d\n", error);
  return (error);
 }


 srsh_offset = BHND_PCI_SPROM_SHADOW + BHND_PCI_SRSH_PI_OFFSET;
 val = bhndb_pci_probe_read(probe, pci_addr, srsh_offset, sizeof(val));
 srsh_val = (val & BHND_PCI_SRSH_PI_MASK) >> BHND_PCI_SRSH_PI_SHIFT;



 pci_val = (pci_addr & BHND_PCI_SRSH_PI_ADDR_MASK) >>
     BHND_PCI_SRSH_PI_ADDR_SHIFT;
 if (srsh_val != pci_val) {
  val &= ~BHND_PCI_SRSH_PI_MASK;
  val |= (pci_val << BHND_PCI_SRSH_PI_SHIFT);
  bhndb_pci_probe_write(probe, pci_addr, srsh_offset, val,
      sizeof(val));
 }

 return (0);
}
