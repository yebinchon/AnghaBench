
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_error_t ;
typedef scalar_t__ uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
struct xhci_trb {int dwTrb3; scalar_t__ dwTrb2; int qwTrb0; } ;
struct xhci_softc {int dummy; } ;


 int DPRINTF (char*) ;
 int XHCI_TRB_3_BSR_BIT ;
 int XHCI_TRB_3_SLOT_SET (scalar_t__) ;
 int XHCI_TRB_3_TYPE_SET (int ) ;
 int XHCI_TRB_TYPE_ADDRESS_DEVICE ;
 int htole32 (int) ;
 int htole64 (int ) ;
 int xhci_do_command (struct xhci_softc*,struct xhci_trb*,int) ;

__attribute__((used)) static usb_error_t
xhci_cmd_set_address(struct xhci_softc *sc, uint64_t input_ctx,
    uint8_t bsr, uint8_t slot_id)
{
 struct xhci_trb trb;
 uint32_t temp;

 DPRINTF("\n");

 trb.qwTrb0 = htole64(input_ctx);
 trb.dwTrb2 = 0;
 temp = XHCI_TRB_3_TYPE_SET(XHCI_TRB_TYPE_ADDRESS_DEVICE) |
     XHCI_TRB_3_SLOT_SET(slot_id);

 if (bsr)
  temp |= XHCI_TRB_3_BSR_BIT;

 trb.dwTrb3 = htole32(temp);

 return (xhci_do_command(sc, &trb, 500 ));
}
