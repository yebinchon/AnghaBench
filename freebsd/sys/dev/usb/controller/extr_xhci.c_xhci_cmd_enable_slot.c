
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ usb_error_t ;
typedef int uint8_t ;
typedef int uint32_t ;
struct xhci_trb {int dwTrb3; scalar_t__ dwTrb2; scalar_t__ qwTrb0; } ;
struct xhci_softc {int dummy; } ;


 int DPRINTF (char*) ;
 int XHCI_TRB_3_SLOT_GET (int ) ;
 int XHCI_TRB_3_TYPE_SET (int ) ;
 int XHCI_TRB_TYPE_ENABLE_SLOT ;
 int htole32 (int ) ;
 int le32toh (int ) ;
 scalar_t__ xhci_do_command (struct xhci_softc*,struct xhci_trb*,int) ;

__attribute__((used)) static usb_error_t
xhci_cmd_enable_slot(struct xhci_softc *sc, uint8_t *pslot)
{
 struct xhci_trb trb;
 uint32_t temp;
 usb_error_t err;

 DPRINTF("\n");

 trb.qwTrb0 = 0;
 trb.dwTrb2 = 0;
 trb.dwTrb3 = htole32(XHCI_TRB_3_TYPE_SET(XHCI_TRB_TYPE_ENABLE_SLOT));

 err = xhci_do_command(sc, &trb, 100 );
 if (err)
  goto done;

 temp = le32toh(trb.dwTrb3);

 *pslot = XHCI_TRB_3_SLOT_GET(temp);

done:
 return (err);
}
