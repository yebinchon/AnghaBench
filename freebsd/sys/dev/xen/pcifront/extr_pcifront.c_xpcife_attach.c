
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcifront_device {TYPE_1__* xdev; int unit; } ;
typedef int str ;
typedef int device_t ;
struct TYPE_2__ {unsigned int otherend_id; int otherend; } ;


 int DPRINTF (char*,int ) ;
 int EINVAL ;
 int ENOMEM ;
 int bus_generic_attach (int ) ;
 int device_add_child (int ,char*,unsigned int) ;
 scalar_t__ device_get_ivars (int ) ;
 int snprintf (char*,int,char*,int) ;
 scalar_t__ unlikely (int) ;
 int xenbus_dev_fatal (TYPE_1__*,int,char*,...) ;
 int xenbus_scanf (int *,int ,char*,char*,...) ;

__attribute__((used)) static int
xpcife_attach(device_t dev)
{
 struct pcifront_device *pdev = (struct pcifront_device *)device_get_ivars(dev);
 int i, num_roots, len, err;
 char str[64];
 unsigned int domain, bus;

 DPRINTF("xpcife attach (unit=%d)\n", pdev->unit);

 err = xenbus_scanf(((void*)0), pdev->xdev->otherend,
        "root_num", "%d", &num_roots);
 if (err != 1) {
  if (err == 0)
   err = -EINVAL;
  xenbus_dev_fatal(pdev->xdev, err,
       "Error reading number of PCI roots");
  goto out;
 }


 for (i = 0; i < num_roots; i++) {
  device_t child;

  len = snprintf(str, sizeof(str), "root-%d", i);
  if (unlikely(len >= (sizeof(str) - 1))) {
   err = -ENOMEM;
   goto out;
  }

  err = xenbus_scanf(((void*)0), pdev->xdev->otherend, str,
         "%x:%x", &domain, &bus);
  if (err != 2) {
   if (err >= 0)
    err = -EINVAL;
   xenbus_dev_fatal(pdev->xdev, err,
        "Error reading PCI root %d", i);
   goto out;
  }
  err = 0;
  if (domain != pdev->xdev->otherend_id) {
   err = -EINVAL;
   xenbus_dev_fatal(pdev->xdev, err,
        "Domain mismatch %d != %d", domain, pdev->xdev->otherend_id);
   goto out;
  }

  child = device_add_child(dev, "pcib", bus);
  if (!child) {
   err = -ENOMEM;
   xenbus_dev_fatal(pdev->xdev, err,
        "Unable to create pcib%d", bus);
   goto out;
  }
 }

 out:
 return bus_generic_attach(dev);
}
