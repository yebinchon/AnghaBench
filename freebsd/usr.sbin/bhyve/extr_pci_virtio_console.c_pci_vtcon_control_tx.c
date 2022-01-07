
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_vtcon_softc {int vsc_ready; size_t vsc_nports; struct pci_vtcon_port* vsc_ports; } ;
struct pci_vtcon_port {int vsp_console; int vsp_open; int vsp_enabled; struct pci_vtcon_softc* vsp_sc; } ;
struct pci_vtcon_control {int event; size_t id; int value; } ;
struct iovec {scalar_t__ iov_base; } ;


 int VTCON_CONSOLE_PORT ;

 int VTCON_MAXPORTS ;

 int WPRINTF (char*) ;
 int assert (int) ;
 int pci_vtcon_announce_port (struct pci_vtcon_port*) ;
 int pci_vtcon_control_send (struct pci_vtcon_softc*,struct pci_vtcon_control*,int *,int ) ;
 int pci_vtcon_open_port (struct pci_vtcon_port*,int) ;

__attribute__((used)) static void
pci_vtcon_control_tx(struct pci_vtcon_port *port, void *arg, struct iovec *iov,
    int niov)
{
 struct pci_vtcon_softc *sc;
 struct pci_vtcon_port *tmp;
 struct pci_vtcon_control resp, *ctrl;
 int i;

 assert(niov == 1);

 sc = port->vsp_sc;
 ctrl = (struct pci_vtcon_control *)iov->iov_base;

 switch (ctrl->event) {
 case 129:
  sc->vsc_ready = 1;

  for (i = 0; i < VTCON_MAXPORTS; i++) {
   tmp = &sc->vsc_ports[i];
   if (tmp->vsp_enabled)
    pci_vtcon_announce_port(tmp);

   if (tmp->vsp_open)
    pci_vtcon_open_port(tmp, 1);
  }
  break;

 case 128:
  if (ctrl->id >= sc->vsc_nports) {
   WPRINTF(("VTCON_PORT_READY event for unknown port %d\n",
       ctrl->id));
   return;
  }

  tmp = &sc->vsc_ports[ctrl->id];
  if (tmp->vsp_console) {
   resp.event = VTCON_CONSOLE_PORT;
   resp.id = ctrl->id;
   resp.value = 1;
   pci_vtcon_control_send(sc, &resp, ((void*)0), 0);
  }
  break;
 }
}
