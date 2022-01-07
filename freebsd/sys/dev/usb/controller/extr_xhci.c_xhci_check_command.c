
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xhci_trb {scalar_t__ qwTrb0; int dwTrb3; int dwTrb2; } ;
struct xhci_softc {scalar_t__ sc_cmd_addr; int sc_cmd_cv; int * sc_cmd_result; } ;


 int DPRINTF (char*) ;
 int cv_signal (int *) ;

__attribute__((used)) static int
xhci_check_command(struct xhci_softc *sc, struct xhci_trb *trb)
{
 if (sc->sc_cmd_addr == trb->qwTrb0) {
  DPRINTF("Received command event\n");
  sc->sc_cmd_result[0] = trb->dwTrb2;
  sc->sc_cmd_result[1] = trb->dwTrb3;
  cv_signal(&sc->sc_cmd_cv);
  return (1);
 }
 return (0);
}
