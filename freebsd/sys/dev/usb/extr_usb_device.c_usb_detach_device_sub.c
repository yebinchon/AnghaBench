
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {scalar_t__ peer_suspended; } ;
struct usb_device {int parent_dev; TYPE_1__ flags; int address; int port_no; } ;
typedef int * device_t ;


 int DEVICE_RESUME (int *) ;
 int M_USBDEV ;
 scalar_t__ device_delete_child (int ,int *) ;
 int device_get_nameunit (int ) ;
 scalar_t__ device_is_attached (int *) ;
 int device_printf (int *,char*,...) ;
 int free (char*,int ) ;
 int panic (char*) ;
 int rebooting ;

__attribute__((used)) static void
usb_detach_device_sub(struct usb_device *udev, device_t *ppdev,
    char **ppnpinfo, uint8_t flag)
{
 device_t dev;
 char *pnpinfo;
 int err;

 dev = *ppdev;
 if (dev) {





  *ppdev = ((void*)0);

  if (!rebooting) {
   device_printf(dev, "at %s, port %d, addr %d "
       "(disconnected)\n",
       device_get_nameunit(udev->parent_dev),
       udev->port_no, udev->address);
  }

  if (device_is_attached(dev)) {
   if (udev->flags.peer_suspended) {
    err = DEVICE_RESUME(dev);
    if (err) {
     device_printf(dev, "Resume failed\n");
    }
   }
  }

  if (device_delete_child(udev->parent_dev, dev)) {
   goto error;
  }
 }

 pnpinfo = *ppnpinfo;
 if (pnpinfo != ((void*)0)) {
  *ppnpinfo = ((void*)0);
  free(pnpinfo, M_USBDEV);
 }
 return;

error:

 panic("usb_detach_device_sub: A USB driver would not detach\n");
}
