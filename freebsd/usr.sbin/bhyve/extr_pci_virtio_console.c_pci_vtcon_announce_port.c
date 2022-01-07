
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_vtcon_port {int * vsp_name; int vsp_sc; int vsp_id; } ;
struct pci_vtcon_control {int value; int event; int id; } ;


 int VTCON_DEVICE_ADD ;
 int VTCON_PORT_NAME ;
 int pci_vtcon_control_send (int ,struct pci_vtcon_control*,int *,int ) ;
 int strlen (int *) ;

__attribute__((used)) static void
pci_vtcon_announce_port(struct pci_vtcon_port *port)
{
 struct pci_vtcon_control event;

 event.id = port->vsp_id;
 event.event = VTCON_DEVICE_ADD;
 event.value = 1;
 pci_vtcon_control_send(port->vsp_sc, &event, ((void*)0), 0);

 event.event = VTCON_PORT_NAME;
 pci_vtcon_control_send(port->vsp_sc, &event, port->vsp_name,
     strlen(port->vsp_name));
}
