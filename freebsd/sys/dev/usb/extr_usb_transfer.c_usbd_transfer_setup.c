
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_9__ ;
typedef struct TYPE_26__ TYPE_8__ ;
typedef struct TYPE_25__ TYPE_7__ ;
typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_11__ ;
typedef struct TYPE_17__ TYPE_10__ ;


typedef int xfer ;
typedef scalar_t__ usb_frlength_t ;
typedef void* usb_error_t ;
typedef scalar_t__ uint8_t ;
typedef int uint16_t ;
struct TYPE_21__ {int * command; int head; } ;
struct TYPE_20__ {int * command; int head; } ;
struct usb_xfer_root {int memory_size; scalar_t__ setup_refcount; TYPE_11__* bus; int done_p; TYPE_5__* done_m; TYPE_3__ dma_q; TYPE_2__ done_q; struct usb_device* udev; int dma_parent_tag; struct mtx* xfer_mtx; int cv_drain; void* xfer_page_cache_end; void* xfer_page_cache_start; void* dma_page_cache_end; void* dma_page_cache_start; void* memory_base; } ;
struct usb_xfer {scalar_t__ speed; int hc_max_packet_count; scalar_t__ err; int* size; scalar_t__ stream_id; void* xfer_length_ptr; void* xfer_page_cache_ptr; void* dma_page_cache_ptr; void* dma_page_ptr; void* dma_tag_p; scalar_t__ dma_tag_max; struct usb_endpoint* endpoint; struct usb_xfer* curr_xfer; int * methods; int timeout_handle; struct usb_xfer_root* xroot; void* priv_sc; int address; struct usb_config const* curr_setup; void* buf; struct usb_device* udev; } ;
struct usb_setup_params {scalar_t__ speed; int hc_max_packet_count; scalar_t__ err; int* size; scalar_t__ stream_id; void* xfer_length_ptr; void* xfer_page_cache_ptr; void* dma_page_cache_ptr; void* dma_page_ptr; void* dma_tag_p; scalar_t__ dma_tag_max; struct usb_endpoint* endpoint; struct usb_setup_params* curr_xfer; int * methods; int timeout_handle; struct usb_xfer_root* xroot; void* priv_sc; int address; struct usb_config const* curr_setup; void* buf; struct usb_device* udev; } ;
struct usb_endpoint {scalar_t__ ep_mode; scalar_t__ refcount_alloc; int * methods; } ;
struct TYPE_27__ {TYPE_8__* xfer_setup; } ;
struct TYPE_25__ {scalar_t__ usb_mode; } ;
struct usb_device {TYPE_11__* bus; TYPE_9__ scratch; int address; TYPE_7__ flags; } ;
struct TYPE_24__ {scalar_t__ no_pipe_ok; } ;
struct usb_config {scalar_t__ bufsize; size_t if_index; scalar_t__ stream_id; scalar_t__ usb_mode; TYPE_6__ flags; int * callback; } ;
struct mtx {int dummy; } ;
typedef int info ;
struct TYPE_26__ {struct usb_xfer dummy; struct usb_xfer parm; } ;
struct TYPE_22__ {int * pm_callback; } ;
struct TYPE_23__ {struct usb_xfer_root* xroot; TYPE_4__ hdr; } ;
struct TYPE_19__ {int tag; } ;
struct TYPE_18__ {TYPE_10__* methods; int bus_mtx; int dma_bits; TYPE_1__* dma_parent_tag; } ;
struct TYPE_17__ {int (* xfer_setup ) (struct usb_xfer*) ;} ;


 int DPRINTF (char*) ;
 int DPRINTFN (int,char*,...) ;
 struct mtx Giant ;
 int MIN (int,int ) ;
 int M_USB ;
 int M_WAITOK ;
 int M_ZERO ;
 int TAILQ_INIT (int *) ;
 void* USB_ADD_BYTES (void*,int) ;
 int USB_BUS_CONTROL_XFER_PROC (TYPE_11__*) ;
 int USB_BUS_GIANT_PROC (TYPE_11__*) ;
 int USB_BUS_LOCK (TYPE_11__*) ;
 int USB_BUS_NON_GIANT_BULK_PROC (TYPE_11__*) ;
 int USB_BUS_NON_GIANT_ISOC_PROC (TYPE_11__*) ;
 int USB_BUS_UNLOCK (TYPE_11__*) ;
 int USB_EP_MAX ;
 scalar_t__ USB_EP_MODE_DEFAULT ;
 scalar_t__ USB_EP_MODE_STREAMS ;
 scalar_t__ USB_EP_REF_MAX ;
 void* USB_ERR_BAD_BUFSIZE ;
 void* USB_ERR_INVAL ;
 scalar_t__ USB_ERR_NOMEM ;
 void* USB_ERR_NO_CALLBACK ;
 scalar_t__ USB_ERR_NO_PIPE ;
 int USB_HOST_ALIGN ;
 scalar_t__ USB_MAX_EP_STREAMS ;
 scalar_t__ USB_MODE_DUAL ;
 scalar_t__ USB_SPEED_MAX ;
 int WARN_GIANTOK ;
 int WARN_SLEEPOK ;
 int WITNESS_WARN (int,int *,char*) ;
 int cv_init (int *,char*) ;
 void* malloc (int,int ,int) ;
 int memset (struct usb_xfer*,int ,int) ;
 int panic (char*) ;
 int stub1 (struct usb_xfer*) ;
 int usb_bdma_done_event ;
 int usb_bdma_work_loop ;
 int usb_callback_proc ;
 int usb_callout_init_mtx (int *,int *,int ) ;
 struct usb_config const* usb_control_ep_cfg ;
 struct usb_config const* usb_control_ep_quirk_cfg ;
 int usb_dma_tag_setup (int *,void*,int ,struct mtx*,int *,int ,scalar_t__) ;
 int usbd_callback_wrapper ;
 scalar_t__ usbd_ctrl_lock (struct usb_device*) ;
 int usbd_ctrl_unlock (struct usb_device*) ;
 struct usb_endpoint* usbd_get_endpoint (struct usb_device*,scalar_t__ const,struct usb_config const*) ;
 scalar_t__ usbd_get_speed (struct usb_device*) ;
 scalar_t__ usbd_transfer_setup_has_bulk (struct usb_config const*,int) ;
 int usbd_transfer_unsetup (struct usb_xfer**,int) ;
 int usbd_transfer_unsetup_sub (struct usb_xfer_root*,int ) ;

usb_error_t
usbd_transfer_setup(struct usb_device *udev,
    const uint8_t *ifaces, struct usb_xfer **ppxfer,
    const struct usb_config *setup_start, uint16_t n_setup,
    void *priv_sc, struct mtx *xfer_mtx)
{
 const struct usb_config *setup_end = setup_start + n_setup;
 const struct usb_config *setup;
 struct usb_setup_params *parm;
 struct usb_endpoint *ep;
 struct usb_xfer_root *info;
 struct usb_xfer *xfer;
 void *buf = ((void*)0);
 usb_error_t error = 0;
 uint16_t n;
 uint16_t refcount;
 uint8_t do_unlock;

 WITNESS_WARN(WARN_GIANTOK | WARN_SLEEPOK, ((void*)0),
     "usbd_transfer_setup can sleep!");



 if (n_setup == 0) {
  DPRINTFN(6, "setup array has zero length!\n");
  return (USB_ERR_INVAL);
 }
 if (ifaces == ((void*)0)) {
  DPRINTFN(6, "ifaces array is NULL!\n");
  return (USB_ERR_INVAL);
 }
 if (xfer_mtx == ((void*)0)) {
  DPRINTFN(6, "using global lock\n");
  xfer_mtx = &Giant;
 }



 for (setup = setup_start, n = 0;
     setup != setup_end; setup++, n++) {
  if (setup->bufsize == (usb_frlength_t)-1) {
   error = USB_ERR_BAD_BUFSIZE;
   DPRINTF("invalid bufsize\n");
  }
  if (setup->callback == ((void*)0)) {
   error = USB_ERR_NO_CALLBACK;
   DPRINTF("no callback\n");
  }
  ppxfer[n] = ((void*)0);
 }

 if (error)
  return (error);


 do_unlock = usbd_ctrl_lock(udev);

 refcount = 0;
 info = ((void*)0);

 parm = &udev->scratch.xfer_setup[0].parm;
 memset(parm, 0, sizeof(*parm));

 parm->udev = udev;
 parm->speed = usbd_get_speed(udev);
 parm->hc_max_packet_count = 1;

 if (parm->speed >= USB_SPEED_MAX) {
  parm->err = USB_ERR_INVAL;
  goto done;
 }


 while (1) {

  if (buf) {




   info = USB_ADD_BYTES(buf, 0);

   info->memory_base = buf;
   info->memory_size = parm->size[0];





   info->xfer_page_cache_start = USB_ADD_BYTES(buf, parm->size[5]);
   info->xfer_page_cache_end = USB_ADD_BYTES(buf, parm->size[2]);

   cv_init(&info->cv_drain, "WDRAIN");

   info->xfer_mtx = xfer_mtx;







   info->bus = udev->bus;
   info->udev = udev;

   TAILQ_INIT(&info->done_q.head);
   info->done_q.command = &usbd_callback_wrapper;




   info->done_m[0].hdr.pm_callback = &usb_callback_proc;
   info->done_m[0].xroot = info;
   info->done_m[1].hdr.pm_callback = &usb_callback_proc;
   info->done_m[1].xroot = info;







   if (setup_start == usb_control_ep_cfg ||
       setup_start == usb_control_ep_quirk_cfg)
    info->done_p =
        USB_BUS_CONTROL_XFER_PROC(udev->bus);
   else if (xfer_mtx == &Giant)
    info->done_p =
        USB_BUS_GIANT_PROC(udev->bus);
   else if (usbd_transfer_setup_has_bulk(setup_start, n_setup))
    info->done_p =
        USB_BUS_NON_GIANT_BULK_PROC(udev->bus);
   else
    info->done_p =
        USB_BUS_NON_GIANT_ISOC_PROC(udev->bus);
  }


  parm->size[0] = 0;
  parm->buf = buf;
  parm->size[0] += sizeof(info[0]);

  for (setup = setup_start, n = 0;
      setup != setup_end; setup++, n++) {


   if (setup->callback == ((void*)0)) {
    continue;
   }

   ep = usbd_get_endpoint(udev,
       ifaces[setup->if_index], setup);
   if ((ep == ((void*)0)) || (ep->methods == ((void*)0)) ||
       ((ep->ep_mode != USB_EP_MODE_STREAMS) &&
       (ep->ep_mode != USB_EP_MODE_DEFAULT)) ||
       (setup->stream_id != 0 &&
       (setup->stream_id >= USB_MAX_EP_STREAMS ||
       (ep->ep_mode != USB_EP_MODE_STREAMS)))) {
    if (setup->flags.no_pipe_ok)
     continue;
    if ((setup->usb_mode != USB_MODE_DUAL) &&
        (setup->usb_mode != udev->flags.usb_mode))
     continue;
    parm->err = USB_ERR_NO_PIPE;
    goto done;
   }


   parm->size[0] += ((-parm->size[0]) & (USB_HOST_ALIGN - 1));


   parm->curr_setup = setup;

   if (buf) {




    xfer = USB_ADD_BYTES(buf, parm->size[0]);
    xfer->address = udev->address;
    xfer->priv_sc = priv_sc;
    xfer->xroot = info;

    usb_callout_init_mtx(&xfer->timeout_handle,
        &udev->bus->bus_mtx, 0);
   } else {







    xfer = &udev->scratch.xfer_setup[0].dummy;
    memset(xfer, 0, sizeof(*xfer));
    refcount++;
   }


   xfer->endpoint = ep;


   xfer->stream_id = setup->stream_id;

   parm->size[0] += sizeof(xfer[0]);
   parm->methods = xfer->endpoint->methods;
   parm->curr_xfer = xfer;





   (udev->bus->methods->xfer_setup) (parm);


   if (parm->err)
    goto done;

   if (buf) {
    USB_BUS_LOCK(info->bus);
    if (xfer->endpoint->refcount_alloc >= USB_EP_REF_MAX)
     parm->err = USB_ERR_INVAL;

    xfer->endpoint->refcount_alloc++;

    if (xfer->endpoint->refcount_alloc == 0)
     panic("usbd_transfer_setup(): Refcount wrapped to zero\n");
    USB_BUS_UNLOCK(info->bus);






    info->setup_refcount++;





    ppxfer[n] = xfer;
   }


   if (parm->err)
    goto done;
  }

  if (buf != ((void*)0) || parm->err != 0)
   goto done;


  if (refcount == 0)
   goto done;


  parm->size[0] += ((-parm->size[0]) & (USB_HOST_ALIGN - 1));


  parm->size[1] = parm->size[0];
  parm->dma_tag_max += 3 * MIN(n_setup, USB_EP_MAX);




  parm->dma_tag_max += 8;

  parm->dma_tag_p += parm->dma_tag_max;

  parm->size[0] += ((uint8_t *)parm->dma_tag_p) -
      ((uint8_t *)0);


  parm->size[0] += ((-parm->size[0]) & (USB_HOST_ALIGN - 1));


  parm->size[3] = parm->size[0];

  parm->size[0] += ((uint8_t *)parm->dma_page_ptr) -
      ((uint8_t *)0);


  parm->size[0] += ((-parm->size[0]) & (USB_HOST_ALIGN - 1));


  parm->size[4] = parm->size[0];

  parm->size[0] += ((uint8_t *)parm->dma_page_cache_ptr) -
      ((uint8_t *)0);


  parm->size[5] = parm->size[0];

  parm->size[0] += ((uint8_t *)parm->xfer_page_cache_ptr) -
      ((uint8_t *)0);



  parm->size[2] = parm->size[0];


  parm->size[0] += ((-parm->size[0]) & (USB_HOST_ALIGN - 1));

  parm->size[6] = parm->size[0];

  parm->size[0] += ((uint8_t *)parm->xfer_length_ptr) -
      ((uint8_t *)0);


  parm->size[0] += ((-parm->size[0]) & (USB_HOST_ALIGN - 1));


  buf = malloc(parm->size[0], M_USB, M_WAITOK | M_ZERO);

  if (buf == ((void*)0)) {
   parm->err = USB_ERR_NOMEM;
   DPRINTFN(0, "cannot allocate memory block for "
       "configuration (%d bytes)\n",
       parm->size[0]);
   goto done;
  }
  parm->dma_tag_p = USB_ADD_BYTES(buf, parm->size[1]);
  parm->dma_page_ptr = USB_ADD_BYTES(buf, parm->size[3]);
  parm->dma_page_cache_ptr = USB_ADD_BYTES(buf, parm->size[4]);
  parm->xfer_page_cache_ptr = USB_ADD_BYTES(buf, parm->size[5]);
  parm->xfer_length_ptr = USB_ADD_BYTES(buf, parm->size[6]);
 }

done:
 if (buf) {
  if (info->setup_refcount == 0) {




   USB_BUS_LOCK(info->bus);


   usbd_transfer_unsetup_sub(info, 0);
  }
 }


 if (parm->err)
  usbd_transfer_unsetup(ppxfer, n_setup);

 error = parm->err;

 if (do_unlock)
  usbd_ctrl_unlock(udev);

 return (error);
}
