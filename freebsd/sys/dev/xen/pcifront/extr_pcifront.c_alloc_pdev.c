
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenbus_device {struct pcifront_device* data; int nodename; } ;
struct xen_pci_sharedinfo {scalar_t__ flags; } ;
struct pcifront_device {int unit; int ref_cnt; int gnt_ref; int evtchn; int sh_info_lock; struct xen_pci_sharedinfo* sh_info; struct xenbus_device* xdev; } ;


 int DPRINTF (char*,struct pcifront_device*,int) ;
 int EINVAL ;
 int ENOMEM ;
 int INVALID_EVTCHN ;
 int INVALID_GRANT_REF ;
 int MTX_DEF ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int PAGE_SIZE ;
 int STAILQ_INSERT_TAIL (int *,struct pcifront_device*,int ) ;
 int free (struct pcifront_device*,int ) ;
 scalar_t__ malloc (int,int ,int ) ;
 int mtx_init (int *,char*,char*,int ) ;
 int next ;
 int pdev_list ;
 int sscanf (int ,char*,int*) ;
 int xenbus_dev_fatal (struct xenbus_device*,int,char*) ;

__attribute__((used)) static struct pcifront_device *
alloc_pdev(struct xenbus_device *xdev)
{
 struct pcifront_device *pdev = ((void*)0);
 int err, unit;

 err = sscanf(xdev->nodename, "device/pci/%d", &unit);
 if (err != 1) {
  if (err == 0)
   err = -EINVAL;
  xenbus_dev_fatal(pdev->xdev, err, "Error scanning pci device instance number");
  goto out;
 }

 pdev = (struct pcifront_device *)malloc(sizeof(struct pcifront_device), M_DEVBUF, M_NOWAIT);
 if (pdev == ((void*)0)) {
  err = -ENOMEM;
  xenbus_dev_fatal(xdev, err, "Error allocating pcifront_device struct");
  goto out;
 }
 pdev->unit = unit;
 pdev->xdev = xdev;
 pdev->ref_cnt = 1;

 pdev->sh_info = (struct xen_pci_sharedinfo *)malloc(PAGE_SIZE, M_DEVBUF, M_NOWAIT);
 if (pdev->sh_info == ((void*)0)) {
  free(pdev, M_DEVBUF);
  pdev = ((void*)0);
  err = -ENOMEM;
  xenbus_dev_fatal(xdev, err, "Error allocating sh_info struct");
  goto out;
 }
 pdev->sh_info->flags = 0;

 xdev->data = pdev;

 mtx_init(&pdev->sh_info_lock, "info_lock", "pci shared dev info lock", MTX_DEF);

 pdev->evtchn = INVALID_EVTCHN;
 pdev->gnt_ref = INVALID_GRANT_REF;

 STAILQ_INSERT_TAIL(&pdev_list, pdev, next);

 DPRINTF("Allocated pdev @ 0x%p (unit=%d)\n", pdev, unit);

 out:
 return pdev;
}
