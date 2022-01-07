
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_vtcon_softc {int vsc_nports; struct pci_vtcon_port* vsc_ports; } ;
struct pci_vtcon_port {int vsp_id; char const* vsp_name; int vsp_txq; int vsp_rxq; int vsp_enabled; void* vsp_arg; int * vsp_cb; struct pci_vtcon_softc* vsp_sc; } ;
typedef int pci_vtcon_cb_t ;


 int EBUSY ;
 int VTCON_MAXPORTS ;
 int errno ;

__attribute__((used)) static struct pci_vtcon_port *
pci_vtcon_port_add(struct pci_vtcon_softc *sc, const char *name,
    pci_vtcon_cb_t *cb, void *arg)
{
 struct pci_vtcon_port *port;

 if (sc->vsc_nports == VTCON_MAXPORTS) {
  errno = EBUSY;
  return (((void*)0));
 }

 port = &sc->vsc_ports[sc->vsc_nports++];
 port->vsp_id = sc->vsc_nports - 1;
 port->vsp_sc = sc;
 port->vsp_name = name;
 port->vsp_cb = cb;
 port->vsp_arg = arg;

 if (port->vsp_id == 0) {

  port->vsp_txq = 0;
  port->vsp_rxq = 1;
 } else {
  port->vsp_txq = sc->vsc_nports * 2;
  port->vsp_rxq = port->vsp_txq + 1;
 }

 port->vsp_enabled = 1;
 return (port);
}
