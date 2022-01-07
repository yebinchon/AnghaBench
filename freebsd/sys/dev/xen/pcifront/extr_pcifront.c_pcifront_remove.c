
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenbus_device {scalar_t__ data; int nodename; } ;


 int DPRINTF (char*,int ) ;
 int put_pdev (scalar_t__) ;

__attribute__((used)) static int
pcifront_remove(struct xenbus_device *xdev)
{
 DPRINTF("removing xenbus device node (%s)\n", xdev->nodename);
 if (xdev->data)
  put_pdev(xdev->data);
 return 0;
}
