
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vqueue_info {int dummy; } ;
struct pci_vtcon_softc {int dummy; } ;
struct pci_vtcon_port {int vsp_rx_ready; } ;


 struct pci_vtcon_port* pci_vtcon_vq_to_port (struct pci_vtcon_softc*,struct vqueue_info*) ;
 int vq_kick_disable (struct vqueue_info*) ;

__attribute__((used)) static void
pci_vtcon_notify_rx(void *vsc, struct vqueue_info *vq)
{
 struct pci_vtcon_softc *sc;
 struct pci_vtcon_port *port;

 sc = vsc;
 port = pci_vtcon_vq_to_port(sc, vq);

 if (!port->vsp_rx_ready) {
  port->vsp_rx_ready = 1;
  vq_kick_disable(vq);
 }
}
