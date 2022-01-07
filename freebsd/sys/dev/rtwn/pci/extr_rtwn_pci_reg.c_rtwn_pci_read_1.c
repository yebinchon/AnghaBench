
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct rtwn_softc {int dummy; } ;
struct rtwn_pci_softc {int pc_sh; int pc_st; } ;


 struct rtwn_pci_softc* RTWN_PCI_SOFTC (struct rtwn_softc*) ;
 int bus_space_read_1 (int ,int ,int ) ;

uint8_t
rtwn_pci_read_1(struct rtwn_softc *sc, uint16_t addr)
{
 struct rtwn_pci_softc *pc = RTWN_PCI_SOFTC(sc);

 return (bus_space_read_1(pc->pc_st, pc->pc_sh, addr));
}
