
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vqueue_info {int dummy; } ;
struct pci_vtcon_port {int vsp_txq; int vsp_rxq; TYPE_1__* vsp_sc; } ;
struct TYPE_2__ {struct vqueue_info* vsc_queues; } ;



__attribute__((used)) static inline struct vqueue_info *
pci_vtcon_port_to_vq(struct pci_vtcon_port *port, bool tx_queue)
{
 int qnum;

 qnum = tx_queue ? port->vsp_txq : port->vsp_rxq;
 return (&port->vsp_sc->vsc_queues[qnum]);
}
