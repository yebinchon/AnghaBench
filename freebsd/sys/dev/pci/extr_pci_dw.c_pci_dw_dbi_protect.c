
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pci_dw_softc {int dummy; } ;


 int DBI_RD4 (struct pci_dw_softc*,int ) ;
 int DBI_RO_WR_EN ;
 int DBI_WR4 (struct pci_dw_softc*,int ,int ) ;
 int DW_MISC_CONTROL_1 ;

__attribute__((used)) static void
pci_dw_dbi_protect(struct pci_dw_softc *sc, bool protect)
{
 uint32_t reg;

 reg = DBI_RD4(sc, DW_MISC_CONTROL_1);
 if (protect)
  reg &= ~DBI_RO_WR_EN;
 else
  reg |= DBI_RO_WR_EN;
 DBI_WR4(sc, DW_MISC_CONTROL_1, reg);
}
