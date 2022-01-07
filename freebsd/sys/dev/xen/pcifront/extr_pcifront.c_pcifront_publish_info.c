
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct xenbus_transaction {int dummy; } ;
struct pcifront_device {int gnt_ref; TYPE_1__* xdev; int evtchn; int sh_info; } ;
struct TYPE_5__ {int nodename; } ;


 int EAGAIN ;
 scalar_t__ IS_ERR (struct xenbus_transaction*) ;
 int WPRINTF (char*) ;
 int XEN_PCI_MAGIC ;
 int XenbusStateInitialised ;
 int virt_to_mfn (int ) ;
 int xenbus_alloc_evtchn (TYPE_1__*,int *) ;
 int xenbus_dev_fatal (TYPE_1__*,int,char*) ;
 int xenbus_grant_ring (TYPE_1__*,int ) ;
 int xenbus_printf (struct xenbus_transaction*,int ,char*,char*,...) ;
 int xenbus_switch_state (TYPE_1__*,struct xenbus_transaction*,int ) ;
 int xenbus_transaction_end (struct xenbus_transaction*,int) ;
 struct xenbus_transaction* xenbus_transaction_start () ;

__attribute__((used)) static int
pcifront_publish_info(struct pcifront_device *pdev)
{
 int err = 0;
 struct xenbus_transaction *trans;

 err = xenbus_grant_ring(pdev->xdev, virt_to_mfn(pdev->sh_info));
 if (err < 0) {
  WPRINTF("error granting access to ring page\n");
  goto out;
 }

 pdev->gnt_ref = err;

 err = xenbus_alloc_evtchn(pdev->xdev, &pdev->evtchn);
 if (err)
  goto out;

 do_publish:
 trans = xenbus_transaction_start();
 if (IS_ERR(trans)) {
  xenbus_dev_fatal(pdev->xdev, err,
       "Error writing configuration for backend "
       "(start transaction)");
  goto out;
 }

 err = xenbus_printf(trans, pdev->xdev->nodename,
      "pci-op-ref", "%u", pdev->gnt_ref);
 if (!err)
  err = xenbus_printf(trans, pdev->xdev->nodename,
       "event-channel", "%u", pdev->evtchn);
 if (!err)
  err = xenbus_printf(trans, pdev->xdev->nodename,
       "magic", XEN_PCI_MAGIC);
 if (!err)
  err = xenbus_switch_state(pdev->xdev, trans,
          XenbusStateInitialised);

 if (err) {
  xenbus_transaction_end(trans, 1);
  xenbus_dev_fatal(pdev->xdev, err,
       "Error writing configuration for backend");
  goto out;
 } else {
  err = xenbus_transaction_end(trans, 0);
  if (err == -EAGAIN)
   goto do_publish;
  else if (err) {
   xenbus_dev_fatal(pdev->xdev, err,
        "Error completing transaction for backend");
   goto out;
  }
 }

 out:
 return err;
}
