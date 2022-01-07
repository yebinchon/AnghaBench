
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_softc {int dummy; } ;
struct rtwn_pci_softc {struct rtwn_softc pc_sc; } ;


 int R88E_HIMR ;
 int R88E_HIMRE ;
 int R88E_INT_ENABLE ;
 int R88E_INT_ENABLE_EX ;
 int rtwn_write_4 (struct rtwn_softc*,int ,int ) ;

void
r88ee_enable_intr(struct rtwn_pci_softc *pc)
{
 struct rtwn_softc *sc = &pc->pc_sc;


 rtwn_write_4(sc, R88E_HIMR, R88E_INT_ENABLE);
 rtwn_write_4(sc, R88E_HIMRE, R88E_INT_ENABLE_EX);
}
