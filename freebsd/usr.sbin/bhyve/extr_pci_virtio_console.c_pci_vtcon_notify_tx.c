
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct vqueue_info {int dummy; } ;
struct pci_vtcon_softc {int dummy; } ;
struct pci_vtcon_port {int vsp_arg; int (* vsp_cb ) (struct pci_vtcon_port*,int ,struct iovec*,int) ;} ;
struct iovec {int dummy; } ;


 int assert (int) ;
 struct pci_vtcon_port* pci_vtcon_vq_to_port (struct pci_vtcon_softc*,struct vqueue_info*) ;
 int stub1 (struct pci_vtcon_port*,int ,struct iovec*,int) ;
 int vq_endchains (struct vqueue_info*,int) ;
 int vq_getchain (struct vqueue_info*,int*,struct iovec*,int,int*) ;
 scalar_t__ vq_has_descs (struct vqueue_info*) ;
 int vq_relchain (struct vqueue_info*,int,int ) ;

__attribute__((used)) static void
pci_vtcon_notify_tx(void *vsc, struct vqueue_info *vq)
{
 struct pci_vtcon_softc *sc;
 struct pci_vtcon_port *port;
 struct iovec iov[1];
 uint16_t idx, n;
 uint16_t flags[8];

 sc = vsc;
 port = pci_vtcon_vq_to_port(sc, vq);

 while (vq_has_descs(vq)) {
  n = vq_getchain(vq, &idx, iov, 1, flags);
  assert(n >= 1);
  if (port != ((void*)0))
   port->vsp_cb(port, port->vsp_arg, iov, 1);




  vq_relchain(vq, idx, 0);
 }
 vq_endchains(vq, 1);
}
