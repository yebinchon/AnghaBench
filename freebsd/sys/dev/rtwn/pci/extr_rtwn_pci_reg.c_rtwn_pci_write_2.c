
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct rtwn_softc {int dummy; } ;
struct rtwn_pci_softc {int pc_sh; int pc_st; } ;


 struct rtwn_pci_softc* RTWN_PCI_SOFTC (struct rtwn_softc*) ;
 int bus_space_write_2 (int ,int ,int ,int ) ;
 int htole16 (int ) ;

int
rtwn_pci_write_2(struct rtwn_softc *sc, uint16_t addr, uint16_t val)
{
 struct rtwn_pci_softc *pc = RTWN_PCI_SOFTC(sc);

 val = htole16(val);
 bus_space_write_2(pc->pc_st, pc->pc_sh, addr, val);

 return (0);
}
