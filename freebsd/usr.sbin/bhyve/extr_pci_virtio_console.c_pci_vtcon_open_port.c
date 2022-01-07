
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_vtcon_port {int vsp_open; TYPE_1__* vsp_sc; int vsp_id; } ;
struct pci_vtcon_control {int value; int event; int id; } ;
struct TYPE_2__ {int vsc_ready; } ;


 int VTCON_PORT_OPEN ;
 int pci_vtcon_control_send (TYPE_1__*,struct pci_vtcon_control*,int *,int ) ;

__attribute__((used)) static void
pci_vtcon_open_port(struct pci_vtcon_port *port, bool open)
{
 struct pci_vtcon_control event;

 if (!port->vsp_sc->vsc_ready) {
  port->vsp_open = 1;
  return;
 }

 event.id = port->vsp_id;
 event.event = VTCON_PORT_OPEN;
 event.value = (int)open;
 pci_vtcon_control_send(port->vsp_sc, &event, ((void*)0), 0);
}
