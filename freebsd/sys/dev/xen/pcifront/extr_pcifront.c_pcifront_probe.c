
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenbus_device_id {int dummy; } ;
struct xenbus_device {int dummy; } ;
struct pcifront_device {int dummy; } ;


 int DPRINTF (char*) ;
 struct pcifront_device* alloc_pdev (struct xenbus_device*) ;
 int pcifront_publish_info (struct pcifront_device*) ;
 int put_pdev (struct pcifront_device*) ;

__attribute__((used)) static int
pcifront_probe(struct xenbus_device *xdev,
      const struct xenbus_device_id *id)
{
 int err = 0;
 struct pcifront_device *pdev;

 DPRINTF("xenbus probing\n");

 if ((pdev = alloc_pdev(xdev)) == ((void*)0))
  goto out;

 err = pcifront_publish_info(pdev);

 out:
 if (err)
  put_pdev(pdev);
 return err;
}
