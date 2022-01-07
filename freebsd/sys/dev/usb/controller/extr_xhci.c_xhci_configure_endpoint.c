
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int usb_error_t ;
typedef size_t uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct xhci_trb {int dummy; } ;
struct TYPE_5__ {TYPE_1__* devs; } ;
struct xhci_softc {TYPE_2__ sc_hw; } ;
struct xhci_input_dev_ctx {TYPE_3__* ctx_ep; } ;
struct xhci_endpoint_ext {int physaddr; size_t trb_ep_mode; int * page_cache; int trb_ep_maxp; } ;
struct usb_page_search {struct xhci_input_dev_ctx* buffer; } ;
struct usb_endpoint_descriptor {size_t bEndpointAddress; int bmAttributes; int * wMaxPacketSize; } ;
struct usb_device {size_t controller_slot_id; int speed; int bus; } ;
struct TYPE_6__ {int dwEpCtx4; int qwEpCtx2; int dwEpCtx1; int dwEpCtx0; } ;
struct TYPE_4__ {int input_pc; } ;


 int MIN (int,int ) ;


 size_t UE_DIR_IN ;


 int UE_XFERTYPE ;
 size_t USB_EP_MODE_STREAMS ;
 int USB_ERR_BAD_BUFSIZE ;
 int USB_ERR_NO_PIPE ;



 struct xhci_softc* XHCI_BUS2SC (int ) ;
 int XHCI_EPCTX_0_EPSTATE_SET (int ) ;
 int XHCI_EPCTX_0_IVAL_SET (size_t) ;
 int XHCI_EPCTX_0_LSA_SET (int) ;
 int XHCI_EPCTX_0_MAXP_STREAMS_SET (scalar_t__) ;
 int XHCI_EPCTX_0_MULT_SET (size_t) ;
 int XHCI_EPCTX_1_CERR_SET (int) ;
 int XHCI_EPCTX_1_EPTYPE_SET (int) ;
 int XHCI_EPCTX_1_HID_SET (int ) ;
 int XHCI_EPCTX_1_MAXB_SET (size_t) ;
 int XHCI_EPCTX_1_MAXP_SIZE_SET (int ) ;
 int XHCI_EPCTX_2_DCS_SET (int) ;
 int XHCI_EPCTX_4_AVG_TRB_LEN_SET (int) ;
 int XHCI_EPCTX_4_MAX_ESIT_PAYLOAD_SET (int ) ;
 size_t XHCI_EPNO2EPID (size_t) ;
 int XHCI_MAX_STREAMS ;
 scalar_t__ XHCI_MAX_STREAMS_LOG ;
 int XHCI_MAX_TRANSFERS ;
 int XHCI_PAGE_SIZE ;
 int usb_pc_cpu_flush (int *) ;
 int usbd_get_page (int *,int ,struct usb_page_search*) ;
 int xhci_ctx_set_le32 (struct xhci_softc*,int *,int) ;
 int xhci_ctx_set_le64 (struct xhci_softc*,int *,int) ;
 int xhci_dump_endpoint (struct xhci_softc*,TYPE_3__*) ;

__attribute__((used)) static usb_error_t
xhci_configure_endpoint(struct usb_device *udev,
    struct usb_endpoint_descriptor *edesc, struct xhci_endpoint_ext *pepext,
    uint16_t interval, uint8_t max_packet_count,
    uint8_t mult, uint8_t fps_shift, uint16_t max_packet_size,
    uint16_t max_frame_size, uint8_t ep_mode)
{
 struct usb_page_search buf_inp;
 struct xhci_softc *sc = XHCI_BUS2SC(udev->bus);
 struct xhci_input_dev_ctx *pinp;
 uint64_t ring_addr = pepext->physaddr;
 uint32_t temp;
 uint8_t index;
 uint8_t epno;
 uint8_t type;

 index = udev->controller_slot_id;

 usbd_get_page(&sc->sc_hw.devs[index].input_pc, 0, &buf_inp);

 pinp = buf_inp.buffer;

 epno = edesc->bEndpointAddress;
 type = edesc->bmAttributes & UE_XFERTYPE;

 if (type == 133)
  epno |= UE_DIR_IN;

 epno = XHCI_EPNO2EPID(epno);

  if (epno == 0)
  return (USB_ERR_NO_PIPE);

 if (max_packet_count == 0)
  return (USB_ERR_BAD_BUFSIZE);

 max_packet_count--;

 if (mult == 0)
  return (USB_ERR_BAD_BUFSIZE);


 pepext->trb_ep_mode = ep_mode;

 pepext->trb_ep_maxp = edesc->wMaxPacketSize[0];
 usb_pc_cpu_flush(pepext->page_cache);

 if (ep_mode == USB_EP_MODE_STREAMS) {
  temp = XHCI_EPCTX_0_EPSTATE_SET(0) |
      XHCI_EPCTX_0_MAXP_STREAMS_SET(XHCI_MAX_STREAMS_LOG - 1) |
      XHCI_EPCTX_0_LSA_SET(1);

  ring_addr += sizeof(struct xhci_trb) *
      XHCI_MAX_TRANSFERS * XHCI_MAX_STREAMS;
 } else {
  temp = XHCI_EPCTX_0_EPSTATE_SET(0) |
      XHCI_EPCTX_0_MAXP_STREAMS_SET(0) |
      XHCI_EPCTX_0_LSA_SET(0);

  ring_addr |= XHCI_EPCTX_2_DCS_SET(1);
 }

 switch (udev->speed) {
 case 130:
 case 129:

  fps_shift += 3;
  break;
 default:
  break;
 }

 switch (type) {
 case 132:
  if (fps_shift > 3)
   fps_shift--;
  temp |= XHCI_EPCTX_0_IVAL_SET(fps_shift);
  break;
 case 131:
  temp |= XHCI_EPCTX_0_IVAL_SET(fps_shift);

  switch (udev->speed) {
  case 128:
   if (mult > 3)
    mult = 3;
   temp |= XHCI_EPCTX_0_MULT_SET(mult - 1);
   max_packet_count /= mult;
   break;
  default:
   break;
  }
  break;
 default:
  break;
 }

 xhci_ctx_set_le32(sc, &pinp->ctx_ep[epno - 1].dwEpCtx0, temp);

 temp =
     XHCI_EPCTX_1_HID_SET(0) |
     XHCI_EPCTX_1_MAXB_SET(max_packet_count) |
     XHCI_EPCTX_1_MAXP_SIZE_SET(max_packet_size);







 if (type != 131)
  temp |= XHCI_EPCTX_1_CERR_SET(3);

 switch (type) {
 case 133:
  temp |= XHCI_EPCTX_1_EPTYPE_SET(4);
  break;
 case 131:
  temp |= XHCI_EPCTX_1_EPTYPE_SET(1);
  break;
 case 134:
  temp |= XHCI_EPCTX_1_EPTYPE_SET(2);
  break;
 default:
  temp |= XHCI_EPCTX_1_EPTYPE_SET(3);
  break;
 }


 if (epno & 1)
  temp |= XHCI_EPCTX_1_EPTYPE_SET(4);

 xhci_ctx_set_le32(sc, &pinp->ctx_ep[epno - 1].dwEpCtx1, temp);
 xhci_ctx_set_le64(sc, &pinp->ctx_ep[epno - 1].qwEpCtx2, ring_addr);

 switch (edesc->bmAttributes & UE_XFERTYPE) {
 case 132:
 case 131:
  temp = XHCI_EPCTX_4_MAX_ESIT_PAYLOAD_SET(max_frame_size) |
      XHCI_EPCTX_4_AVG_TRB_LEN_SET(MIN(XHCI_PAGE_SIZE,
      max_frame_size));
  break;
 case 133:
  temp = XHCI_EPCTX_4_AVG_TRB_LEN_SET(8);
  break;
 default:
  temp = XHCI_EPCTX_4_AVG_TRB_LEN_SET(XHCI_PAGE_SIZE);
  break;
 }

 xhci_ctx_set_le32(sc, &pinp->ctx_ep[epno - 1].dwEpCtx4, temp);




 usb_pc_cpu_flush(&sc->sc_hw.devs[index].input_pc);

 return (0);
}
