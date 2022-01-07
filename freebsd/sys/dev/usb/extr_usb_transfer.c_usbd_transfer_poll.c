
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_9__ ;
typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_11__ ;
typedef struct TYPE_12__ TYPE_10__ ;


typedef size_t uint16_t ;
struct usb_xfer_root {int * xfer_mtx; int bus; TYPE_6__* done_m; struct usb_device* udev; } ;
struct usb_xfer {struct usb_xfer_root* xroot; } ;
struct usb_proc_msg {int (* pm_callback ) (struct usb_proc_msg*) ;} ;
struct usb_device {TYPE_5__** ctrl_xfer; TYPE_2__* cs_msg; struct usb_bus* bus; } ;
struct usb_bus {int bus_spin_lock; int bus_mtx; TYPE_1__* methods; } ;
struct TYPE_22__ {scalar_t__ up_msleep; } ;
struct TYPE_21__ {scalar_t__ up_msleep; } ;
struct TYPE_20__ {scalar_t__ up_msleep; } ;
struct TYPE_19__ {struct usb_proc_msg hdr; } ;
struct TYPE_18__ {TYPE_4__* xroot; } ;
struct TYPE_17__ {TYPE_3__* done_m; } ;
struct TYPE_16__ {struct usb_proc_msg hdr; } ;
struct TYPE_15__ {struct usb_proc_msg hdr; } ;
struct TYPE_14__ {int (* xfer_poll ) (struct usb_bus*) ;} ;
struct TYPE_13__ {scalar_t__ up_msleep; } ;
struct TYPE_12__ {scalar_t__ up_msleep; } ;


 TYPE_11__* USB_BUS_CONTROL_XFER_PROC (struct usb_bus*) ;
 TYPE_10__* USB_BUS_EXPLORE_PROC (struct usb_bus*) ;
 TYPE_9__* USB_BUS_GIANT_PROC (struct usb_bus*) ;
 int USB_BUS_LOCK (int ) ;
 TYPE_8__* USB_BUS_NON_GIANT_BULK_PROC (struct usb_bus*) ;
 TYPE_7__* USB_BUS_NON_GIANT_ISOC_PROC (struct usb_bus*) ;
 int USB_BUS_UNLOCK (int ) ;
 scalar_t__ USB_IN_POLLING_MODE_FUNC () ;
 int mtx_lock (int *) ;
 int mtx_lock_spin (int *) ;
 scalar_t__ mtx_owned (int *) ;
 int mtx_unlock (int *) ;
 int mtx_unlock_spin (int *) ;
 int stub1 (struct usb_bus*) ;
 int stub2 (struct usb_proc_msg*) ;
 int stub3 (struct usb_proc_msg*) ;
 int stub4 (struct usb_proc_msg*) ;

void
usbd_transfer_poll(struct usb_xfer **ppxfer, uint16_t max)
{
 struct usb_xfer *xfer;
 struct usb_xfer_root *xroot;
 struct usb_device *udev;
 struct usb_proc_msg *pm;
 struct usb_bus *bus;
 uint16_t n;
 uint16_t drop_bus_spin;
 uint16_t drop_bus;
 uint16_t drop_xfer;

 for (n = 0; n != max; n++) {

  xfer = ppxfer[n];
  if (xfer == ((void*)0))
   continue;
  xroot = xfer->xroot;
  if (xroot == ((void*)0))
   continue;
  udev = xroot->udev;
  if (udev == ((void*)0))
   continue;
  bus = udev->bus;
  if (bus == ((void*)0))
   continue;
  if (bus->methods == ((void*)0))
   continue;
  if (bus->methods->xfer_poll == ((void*)0))
   continue;

  drop_bus_spin = 0;
  drop_bus = 0;
  drop_xfer = 0;

  if (USB_IN_POLLING_MODE_FUNC() == 0) {

   while (mtx_owned(&bus->bus_spin_lock)) {
    mtx_unlock_spin(&bus->bus_spin_lock);
    drop_bus_spin++;
   }


   while (mtx_owned(&bus->bus_mtx)) {
    mtx_unlock(&bus->bus_mtx);
    drop_bus++;
   }


   while (mtx_owned(xroot->xfer_mtx)) {
    mtx_unlock(xroot->xfer_mtx);
    drop_xfer++;
   }
  }


  USB_BUS_CONTROL_XFER_PROC(bus)->up_msleep = 0;
  USB_BUS_EXPLORE_PROC(bus)->up_msleep = 0;
  USB_BUS_GIANT_PROC(bus)->up_msleep = 0;
  USB_BUS_NON_GIANT_ISOC_PROC(bus)->up_msleep = 0;
  USB_BUS_NON_GIANT_BULK_PROC(bus)->up_msleep = 0;


  (bus->methods->xfer_poll) (bus);

  USB_BUS_LOCK(xroot->bus);


  if (udev->ctrl_xfer[1] != ((void*)0)) {


   pm = &udev->cs_msg[0].hdr;
   (pm->pm_callback) (pm);

   pm = &udev->ctrl_xfer[1]->
       xroot->done_m[0].hdr;
   (pm->pm_callback) (pm);
  }


  pm = &xroot->done_m[0].hdr;
  (pm->pm_callback) (pm);

  USB_BUS_UNLOCK(xroot->bus);


  while (drop_xfer--)
   mtx_lock(xroot->xfer_mtx);


  while (drop_bus--)
   mtx_lock(&bus->bus_mtx);


  while (drop_bus_spin--)
   mtx_lock_spin(&bus->bus_spin_lock);
 }
}
