
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct bhnd_pcihb_softc {int quirks; int pci_dev; } ;
typedef scalar_t__ bhnd_pci_war_state ;


 int BHND_PCIE_ASPMTIMER_EXTEND ;
 int BHND_PCIE_DLLP_PMTHRESHREG ;
 int BHND_PCIE_QUIRK_ASPM_OVR ;
 int BHND_PCIE_QUIRK_L1_TIMER_PERF ;
 int BHND_PCI_PROTO_READ_4 (struct bhnd_pcihb_softc*,int ) ;
 int BHND_PCI_PROTO_WRITE_4 (struct bhnd_pcihb_softc*,int ,int ) ;
 scalar_t__ BHND_PCI_WAR_SUSPEND ;
 int PCIEM_LINK_CTL_ASPMC_L1 ;
 int PCIEM_LINK_CTL_ECPM ;
 int PCIER_LINK_CTL ;
 int pcie_read_config (int ,int ,int) ;
 int pcie_write_config (int ,int ,int ,int) ;

__attribute__((used)) static int
bhnd_pci_wars_hwdown(struct bhnd_pcihb_softc *sc, bhnd_pci_war_state state)
{



 if (sc->quirks & BHND_PCIE_QUIRK_L1_TIMER_PERF) {
  uint32_t pmt;
  pmt = BHND_PCI_PROTO_READ_4(sc, BHND_PCIE_DLLP_PMTHRESHREG);
  pmt &= ~BHND_PCIE_ASPMTIMER_EXTEND;
  BHND_PCI_PROTO_WRITE_4(sc, BHND_PCIE_DLLP_PMTHRESHREG, pmt);
 }


 if (sc->quirks & BHND_PCIE_QUIRK_ASPM_OVR) {
  uint16_t lcreg;

  lcreg = pcie_read_config(sc->pci_dev, PCIER_LINK_CTL, 2);

  lcreg |= PCIEM_LINK_CTL_ECPM;
  if (state == BHND_PCI_WAR_SUSPEND)
   lcreg &= ~PCIEM_LINK_CTL_ASPMC_L1;

  pcie_write_config(sc->pci_dev, PCIER_LINK_CTL, lcreg, 2);
 }

 return (0);
}
