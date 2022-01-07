
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ usb_timeout_t ;
typedef scalar_t__ uint8_t ;
struct usb_xfer_root {int memory_base; int cv_drain; int dma_parent_tag; struct usb_page_cache* xfer_page_cache_end; struct usb_page_cache* xfer_page_cache_start; struct usb_page_cache* dma_page_cache_end; struct usb_page_cache* dma_page_cache_start; TYPE_1__* bus; int * done_m; int done_p; int udev; } ;
struct usb_page_cache {int dummy; } ;
struct TYPE_3__ {int bus_mtx; } ;


 int MA_OWNED ;
 int M_USB ;
 int USB_BUS_LOCK_ASSERT (TYPE_1__*,int ) ;
 int USB_BUS_UNLOCK (TYPE_1__*) ;
 int USB_MS_TO_TICKS (scalar_t__) ;
 int cv_destroy (int *) ;
 int free (int ,int ) ;
 int usb_dma_tag_unsetup (int *) ;
 int usb_pause_mtx (int *,int ) ;
 int usb_pc_dmamap_destroy (struct usb_page_cache*) ;
 int usb_pc_free_mem (struct usb_page_cache*) ;
 int usb_proc_mwait (int ,int *,int *) ;
 scalar_t__ usbd_get_dma_delay (int ) ;

__attribute__((used)) static void
usbd_transfer_unsetup_sub(struct usb_xfer_root *info, uint8_t needs_delay)
{




 USB_BUS_LOCK_ASSERT(info->bus, MA_OWNED);



 if (needs_delay) {
  usb_timeout_t temp;
  temp = usbd_get_dma_delay(info->udev);
  if (temp != 0) {
   usb_pause_mtx(&info->bus->bus_mtx,
       USB_MS_TO_TICKS(temp));
  }
 }


 usb_proc_mwait(info->done_p, &info->done_m[0], &info->done_m[1]);

 USB_BUS_UNLOCK(info->bus);
 cv_destroy(&info->cv_drain);





 free(info->memory_base, M_USB);
}
