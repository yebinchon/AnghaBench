
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenbus_device {int nodename; struct pcifront_device* data; } ;
struct pcifront_device {int dummy; } ;
typedef int XenbusState ;


 int DPRINTF (char*,int ) ;



 int pcifront_connect (struct pcifront_device*) ;
 int pcifront_disconnect (struct pcifront_device*) ;

__attribute__((used)) static void
pcifront_backend_changed(struct xenbus_device *xdev,
       XenbusState be_state)
{
 struct pcifront_device *pdev = xdev->data;

 switch (be_state) {
 case 129:
  DPRINTF("backend closing (%s)\n", xdev->nodename);
  pcifront_disconnect(pdev);
  break;

 case 130:
  DPRINTF("backend closed (%s)\n", xdev->nodename);
  pcifront_disconnect(pdev);
  break;

 case 128:
  DPRINTF("backend connected (%s)\n", xdev->nodename);
  pcifront_connect(pdev);
  break;

 default:
  break;
 }
}
