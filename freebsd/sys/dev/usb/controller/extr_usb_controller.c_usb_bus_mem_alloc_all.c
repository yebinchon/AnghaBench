
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int (* usb_bus_mem_cb_t ) (struct usb_bus*,int *) ;
typedef int uint8_t ;
struct TYPE_2__ {int head; } ;
struct usb_bus {int alloc_failed; scalar_t__ devices_max; int * devices; int dma_bits; int bus_mtx; int dma_tags; int dma_parent_tag; TYPE_1__ intr_q; int power_wdog; int parent; int bus_spin_lock; } ;
typedef int bus_dma_tag_t ;


 int DPRINTFN (int ,char*) ;
 int MTX_DEF ;
 int MTX_RECURSE ;
 int MTX_SPIN ;
 int TAILQ_INIT (int *) ;
 int USB_BUS_DMA_TAG_MAX ;
 scalar_t__ USB_MAX_DEVICES ;
 scalar_t__ USB_MIN_DEVICES ;
 int device_get_nameunit (int ) ;
 int mtx_init (int *,int ,char*,int) ;
 int usb_bus_mem_alloc_all_cb ;
 int usb_bus_mem_free_all (struct usb_bus*,int (*) (struct usb_bus*,int *)) ;
 int usb_callout_init_mtx (int *,int *,int ) ;
 int usb_dma_tag_setup (int ,int ,int ,int *,int *,int ,int ) ;

uint8_t
usb_bus_mem_alloc_all(struct usb_bus *bus, bus_dma_tag_t dmat,
    usb_bus_mem_cb_t *cb)
{
 bus->alloc_failed = 0;

 mtx_init(&bus->bus_mtx, device_get_nameunit(bus->parent),
     "usb_def_mtx", MTX_DEF | MTX_RECURSE);

 mtx_init(&bus->bus_spin_lock, device_get_nameunit(bus->parent),
     "usb_spin_mtx", MTX_SPIN | MTX_RECURSE);

 usb_callout_init_mtx(&bus->power_wdog,
     &bus->bus_mtx, 0);

 TAILQ_INIT(&bus->intr_q.head);





 if ((bus->devices_max > USB_MAX_DEVICES) ||
     (bus->devices_max < USB_MIN_DEVICES) ||
     (bus->devices == ((void*)0))) {
  DPRINTFN(0, "Devices field has not been "
      "initialised properly\n");
  bus->alloc_failed = 1;
 }





 if (bus->alloc_failed) {
  usb_bus_mem_free_all(bus, cb);
 }
 return (bus->alloc_failed);
}
