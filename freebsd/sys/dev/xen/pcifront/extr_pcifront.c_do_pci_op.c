
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct xen_pci_op {int err; } ;
struct pcifront_device {int sh_info_lock; TYPE_1__* sh_info; int evtchn; } ;
typedef int evtchn_port_t ;
struct TYPE_2__ {int flags; struct xen_pci_op op; } ;


 int HYPERVISOR_poll (int *,int,int) ;
 int WPRINTF (char*) ;
 int XEN_PCI_ERR_dev_not_found ;
 int _XEN_PCIF_active ;
 int clear_bit (int ,unsigned long*) ;
 int clear_evtchn (int ) ;
 int hz ;
 int memcpy (struct xen_pci_op*,struct xen_pci_op*,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int notify_remote_via_evtchn (int ) ;
 int panic (char*,int) ;
 int set_bit (int ,unsigned long*) ;
 scalar_t__ test_bit (int ,unsigned long*) ;
 scalar_t__ time_uptime ;
 int wmb () ;

__attribute__((used)) static int
do_pci_op(struct pcifront_device *pdev, struct xen_pci_op *op)
{
 int err = 0;
 struct xen_pci_op *active_op = &pdev->sh_info->op;
 evtchn_port_t port = pdev->evtchn;
 time_t timeout;

 mtx_lock(&pdev->sh_info_lock);

 memcpy(active_op, op, sizeof(struct xen_pci_op));


 wmb();
 set_bit(_XEN_PCIF_active, (unsigned long *)&pdev->sh_info->flags);
 notify_remote_via_evtchn(port);

 timeout = time_uptime + 2;

 clear_evtchn(port);


 while (test_bit
        (_XEN_PCIF_active, (unsigned long *)&pdev->sh_info->flags)) {
  int err = HYPERVISOR_poll(&port, 1, 3 * hz);
  if (err)
   panic("Failed HYPERVISOR_poll: err=%d", err);
  clear_evtchn(port);
  if (time_uptime > timeout) {
   WPRINTF("pciback not responding!!!\n");
   clear_bit(_XEN_PCIF_active,
      (unsigned long *)&pdev->sh_info->flags);
   err = XEN_PCI_ERR_dev_not_found;
   goto out;
  }
 }

 memcpy(op, active_op, sizeof(struct xen_pci_op));

 err = op->err;
 out:
 mtx_unlock(&pdev->sh_info_lock);
 return err;
}
