
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_error_t ;
typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct xhci_trb {void* dwTrb3; void* dwTrb2; int qwTrb0; } ;
struct xhci_softc {int dummy; } ;


 int DPRINTF (char*) ;
 int XHCI_TRB_2_STREAM_SET (int ) ;
 int XHCI_TRB_3_EP_SET (int ) ;
 int XHCI_TRB_3_SLOT_SET (int ) ;
 int XHCI_TRB_3_TYPE_SET (int ) ;
 int XHCI_TRB_TYPE_SET_TR_DEQUEUE ;
 void* htole32 (int) ;
 int htole64 (int ) ;
 int xhci_do_command (struct xhci_softc*,struct xhci_trb*,int) ;

__attribute__((used)) static usb_error_t
xhci_cmd_set_tr_dequeue_ptr(struct xhci_softc *sc, uint64_t dequeue_ptr,
    uint16_t stream_id, uint8_t ep_id, uint8_t slot_id)
{
 struct xhci_trb trb;
 uint32_t temp;

 DPRINTF("\n");

 trb.qwTrb0 = htole64(dequeue_ptr);

 temp = XHCI_TRB_2_STREAM_SET(stream_id);
 trb.dwTrb2 = htole32(temp);

 temp = XHCI_TRB_3_TYPE_SET(XHCI_TRB_TYPE_SET_TR_DEQUEUE) |
     XHCI_TRB_3_SLOT_SET(slot_id) |
     XHCI_TRB_3_EP_SET(ep_id);
 trb.dwTrb3 = htole32(temp);

 return (xhci_do_command(sc, &trb, 100 ));
}
