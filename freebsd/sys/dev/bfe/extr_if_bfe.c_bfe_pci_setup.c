
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct bfe_softc {int bfe_dev; } ;


 int BFE_BAR0_WIN ;
 int BFE_RC_MASK ;
 int BFE_REG_PCI ;
 int BFE_SBIDHIGH ;
 int BFE_SBINTVEC ;
 int BFE_SSB_PCI_BURST ;
 int BFE_SSB_PCI_PREF ;
 int BFE_SSB_PCI_TRANS_2 ;
 int CSR_READ_4 (struct bfe_softc*,int ) ;
 int CSR_WRITE_4 (struct bfe_softc*,int ,int) ;
 int pci_read_config (int ,int ,int) ;
 int pci_write_config (int ,int ,int,int) ;

__attribute__((used)) static void
bfe_pci_setup(struct bfe_softc *sc, u_int32_t cores)
{
 u_int32_t bar_orig, pci_rev, val;

 bar_orig = pci_read_config(sc->bfe_dev, BFE_BAR0_WIN, 4);
 pci_write_config(sc->bfe_dev, BFE_BAR0_WIN, BFE_REG_PCI, 4);
 pci_rev = CSR_READ_4(sc, BFE_SBIDHIGH) & BFE_RC_MASK;

 val = CSR_READ_4(sc, BFE_SBINTVEC);
 val |= cores;
 CSR_WRITE_4(sc, BFE_SBINTVEC, val);

 val = CSR_READ_4(sc, BFE_SSB_PCI_TRANS_2);
 val |= BFE_SSB_PCI_PREF | BFE_SSB_PCI_BURST;
 CSR_WRITE_4(sc, BFE_SSB_PCI_TRANS_2, val);

 pci_write_config(sc->bfe_dev, BFE_BAR0_WIN, bar_orig, 4);
}
