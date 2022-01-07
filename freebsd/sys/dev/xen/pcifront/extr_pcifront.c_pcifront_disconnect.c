
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcifront_device {TYPE_1__* xdev; } ;
typedef scalar_t__ XenbusState ;
struct TYPE_2__ {int nodename; } ;


 scalar_t__ XenbusStateClosing ;
 scalar_t__ XenbusStateConnected ;
 scalar_t__ xenbus_read_driver_state (int ) ;
 int xenbus_switch_state (TYPE_1__*,int *,scalar_t__) ;

__attribute__((used)) static int
pcifront_disconnect(struct pcifront_device *pdev)
{
 int err = 0;
 XenbusState prev_state;

 prev_state = xenbus_read_driver_state(pdev->xdev->nodename);

 if (prev_state < XenbusStateClosing) {
  err = xenbus_switch_state(pdev->xdev, ((void*)0), XenbusStateClosing);
  if (!err && prev_state == XenbusStateConnected) {

  }
 }

 return err;
}
