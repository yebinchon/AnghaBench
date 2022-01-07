
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_softc {int dummy; } ;
struct rtwn_pci_softc {struct rtwn_softc pc_sc; } ;


 int R92C_HIMR ;
 int R92C_INT_ENABLE ;
 int rtwn_write_4 (struct rtwn_softc*,int ,int ) ;

void
r92ce_enable_intr(struct rtwn_pci_softc *pc)
{
 struct rtwn_softc *sc = &pc->pc_sc;


 rtwn_write_4(sc, R92C_HIMR, R92C_INT_ENABLE);
}
