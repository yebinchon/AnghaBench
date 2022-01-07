
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct xhci_trb {int dwTrb3; int dwTrb2; int qwTrb0; } ;


 int DPRINTF (char*) ;
 size_t XHCI_TRB_3_TYPE_GET (int ) ;
 size_t XHCI_TRB_TYPE_NOOP_CMD ;

__attribute__((used)) static void
pci_xhci_dump_trb(struct xhci_trb *trb)
{
 static const char *trbtypes[] = {
  "RESERVED",
  "NORMAL",
  "SETUP_STAGE",
  "DATA_STAGE",
  "STATUS_STAGE",
  "ISOCH",
  "LINK",
  "EVENT_DATA",
  "NOOP",
  "ENABLE_SLOT",
  "DISABLE_SLOT",
  "ADDRESS_DEVICE",
  "CONFIGURE_EP",
  "EVALUATE_CTX",
  "RESET_EP",
  "STOP_EP",
  "SET_TR_DEQUEUE",
  "RESET_DEVICE",
  "FORCE_EVENT",
  "NEGOTIATE_BW",
  "SET_LATENCY_TOL",
  "GET_PORT_BW",
  "FORCE_HEADER",
  "NOOP_CMD"
 };
 uint32_t type;

 type = XHCI_TRB_3_TYPE_GET(trb->dwTrb3);
 DPRINTF(("pci_xhci: trb[@%p] type x%02x %s 0:x%016lx 2:x%08x 3:x%08x\r\n",
          trb, type,
          type <= XHCI_TRB_TYPE_NOOP_CMD ? trbtypes[type] : "INVALID",
          trb->qwTrb0, trb->dwTrb2, trb->dwTrb3));
}
