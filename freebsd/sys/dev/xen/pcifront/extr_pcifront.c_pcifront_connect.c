
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcifront_device {int ndev; TYPE_1__* xdev; int unit; } ;
typedef int device_t ;
typedef int devclass_t ;
struct TYPE_2__ {char* nodename; } ;


 int BUS_ADD_CHILD (int ,int ,char*,int ) ;
 int EFAULT ;
 int Giant ;
 int WPRINTF (char*,...) ;
 int XenbusStateConnected ;
 int devclass_find (char*) ;
 int devclass_get_device (int ,int ) ;
 int device_probe_and_attach (int ) ;
 int device_set_ivars (int ,struct pcifront_device*) ;
 int get_pdev (struct pcifront_device*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int printf (char*,char*) ;
 int xenbus_switch_state (TYPE_1__*,int *,int ) ;

__attribute__((used)) static int
pcifront_connect(struct pcifront_device *pdev)
{
 device_t nexus;
 devclass_t nexus_devclass;


 if (!(nexus_devclass = devclass_find("nexus")) ||
  !(nexus = devclass_get_device(nexus_devclass, 0))) {
  WPRINTF("could not find nexus0!\n");
  return -1;
 }


 pdev->ndev = BUS_ADD_CHILD(nexus, 0, "xpcife", pdev->unit);
 if (!pdev->ndev) {
  WPRINTF("could not create xpcife%d!\n", pdev->unit);
  return -EFAULT;
 }
 get_pdev(pdev);
 device_set_ivars(pdev->ndev, pdev);


 xenbus_switch_state(pdev->xdev, ((void*)0), XenbusStateConnected);

 printf("pcifront: connected to %s\n", pdev->xdev->nodename);

 mtx_lock(&Giant);
 device_probe_and_attach(pdev->ndev);
 mtx_unlock(&Giant);

 return 0;
}
