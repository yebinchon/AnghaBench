
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_pci_softc {int pc_rx_buf; int pc_sc; } ;


 int rtwn_handle_c2h_report (int *,int ,int) ;

__attribute__((used)) static void
rtwn_pci_c2h_report(struct rtwn_pci_softc *pc, int len)
{
 rtwn_handle_c2h_report(&pc->pc_sc, pc->pc_rx_buf, len);
}
