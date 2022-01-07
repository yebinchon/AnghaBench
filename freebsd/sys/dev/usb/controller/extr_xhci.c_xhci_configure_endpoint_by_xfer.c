
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t usb_stream_t ;
typedef int usb_error_t ;
typedef scalar_t__ uint64_t ;
struct xhci_trb {int dummy; } ;
struct xhci_endpoint_ext {int page_cache; TYPE_1__* trb; scalar_t__ physaddr; } ;
struct usb_xfer {TYPE_3__* endpoint; int max_frame_size; int max_packet_size; int max_packet_count; int interval; TYPE_2__* xroot; } ;
struct usb_endpoint_ss_comp_descriptor {int bmAttributes; } ;
struct TYPE_6__ {int ep_mode; int edesc; struct usb_endpoint_ss_comp_descriptor* ecomp; } ;
struct TYPE_5__ {int udev; } ;
struct TYPE_4__ {scalar_t__ dwTrb3; scalar_t__ dwTrb2; int qwTrb0; } ;


 int UE_GET_SS_ISO_MULT (int ) ;
 size_t XHCI_MAX_STREAMS ;
 size_t XHCI_MAX_TRANSFERS ;
 scalar_t__ XHCI_SCTX_0_SCT_SEC_TR_RING ;
 int htole64 (scalar_t__) ;
 int usb_pc_cpu_flush (int ) ;
 int usbd_xfer_get_fps_shift (struct usb_xfer*) ;
 int xhci_configure_endpoint (int ,int ,struct xhci_endpoint_ext*,int ,int ,int,int ,int ,int ,int ) ;
 struct xhci_endpoint_ext* xhci_get_endpoint_ext (int ,int ) ;

__attribute__((used)) static usb_error_t
xhci_configure_endpoint_by_xfer(struct usb_xfer *xfer)
{
 struct xhci_endpoint_ext *pepext;
 struct usb_endpoint_ss_comp_descriptor *ecomp;
 usb_stream_t x;

 pepext = xhci_get_endpoint_ext(xfer->xroot->udev,
     xfer->endpoint->edesc);

 ecomp = xfer->endpoint->ecomp;

 for (x = 0; x != XHCI_MAX_STREAMS; x++) {
  uint64_t temp;


  pepext->trb[x * XHCI_MAX_TRANSFERS].dwTrb3 = 0;


  temp = pepext->physaddr +
      (x * XHCI_MAX_TRANSFERS * sizeof(struct xhci_trb)) +
      XHCI_SCTX_0_SCT_SEC_TR_RING;


  pepext->trb[(XHCI_MAX_TRANSFERS *
      XHCI_MAX_STREAMS) + x].qwTrb0 = htole64(temp);


  pepext->trb[(XHCI_MAX_TRANSFERS *
                    XHCI_MAX_STREAMS) + x].dwTrb2 = 0;
  pepext->trb[(XHCI_MAX_TRANSFERS *
      XHCI_MAX_STREAMS) + x].dwTrb3 = 0;
 }
 usb_pc_cpu_flush(pepext->page_cache);

 return (xhci_configure_endpoint(xfer->xroot->udev,
     xfer->endpoint->edesc, pepext,
     xfer->interval, xfer->max_packet_count,
     (ecomp != ((void*)0)) ? UE_GET_SS_ISO_MULT(ecomp->bmAttributes) + 1 : 1,
     usbd_xfer_get_fps_shift(xfer), xfer->max_packet_size,
     xfer->max_frame_size, xfer->endpoint->ep_mode));
}
