
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef uintptr_t uint64_t ;
typedef int uint32_t ;
typedef size_t uint16_t ;
struct TYPE_4__ {int root_pc; } ;
struct xhci_softc {size_t sc_event_idx; int sc_event_ccs; TYPE_1__ sc_hw; } ;
struct xhci_hw_root {TYPE_2__* hwr_events; } ;
struct usb_page_search {uintptr_t physaddr; struct xhci_hw_root* buffer; } ;
struct TYPE_5__ {int dwTrb3; int dwTrb2; int qwTrb0; } ;


 int DPRINTF (char*,int) ;
 int DPRINTFN (int,char*,size_t,int,long long,long,long) ;
 int XHCI_ERDP_HI (int ) ;
 int XHCI_ERDP_LO (int ) ;
 uintptr_t XHCI_ERDP_LO_BUSY ;
 size_t XHCI_MAX_EVENTS ;
 int XHCI_TRB_3_CYCLE_BIT ;
 int XHCI_TRB_3_TYPE_GET (int) ;


 int XWRITE4 (struct xhci_softc*,int ,int ,int) ;
 int le32toh (int ) ;
 scalar_t__ le64toh (int ) ;
 int runt ;
 int usb_pc_cpu_invalidate (int *) ;
 int usbd_get_page (int *,int ,struct usb_page_search*) ;
 int xhci_check_command (struct xhci_softc*,TYPE_2__*) ;
 int xhci_check_transfer (struct xhci_softc*,TYPE_2__*) ;

__attribute__((used)) static int
xhci_interrupt_poll(struct xhci_softc *sc)
{
 struct usb_page_search buf_res;
 struct xhci_hw_root *phwr;
 uint64_t addr;
 uint32_t temp;
 int retval = 0;
 uint16_t i;
 uint8_t event;
 uint8_t j;
 uint8_t k;
 uint8_t t;

 usbd_get_page(&sc->sc_hw.root_pc, 0, &buf_res);

 phwr = buf_res.buffer;



 usb_pc_cpu_invalidate(&sc->sc_hw.root_pc);

 i = sc->sc_event_idx;
 j = sc->sc_event_ccs;
 t = 2;

 while (1) {

  temp = le32toh(phwr->hwr_events[i].dwTrb3);

  k = (temp & XHCI_TRB_3_CYCLE_BIT) ? 1 : 0;

  if (j != k)
   break;

  event = XHCI_TRB_3_TYPE_GET(temp);

  DPRINTFN(10, "event[%u] = %u (0x%016llx 0x%08lx 0x%08lx)\n",
      i, event, (long long)le64toh(phwr->hwr_events[i].qwTrb0),
      (long)le32toh(phwr->hwr_events[i].dwTrb2),
      (long)le32toh(phwr->hwr_events[i].dwTrb3));

  switch (event) {
  case 128:
   xhci_check_transfer(sc, &phwr->hwr_events[i]);
   break;
  case 129:
   retval |= xhci_check_command(sc, &phwr->hwr_events[i]);
   break;
  default:
   DPRINTF("Unhandled event = %u\n", event);
   break;
  }

  i++;

  if (i == XHCI_MAX_EVENTS) {
   i = 0;
   j ^= 1;


   if (!--t)
    break;
  }
 }

 sc->sc_event_idx = i;
 sc->sc_event_ccs = j;
 addr = buf_res.physaddr;
 addr += (uintptr_t)&((struct xhci_hw_root *)0)->hwr_events[i];


 addr |= XHCI_ERDP_LO_BUSY;

 XWRITE4(sc, runt, XHCI_ERDP_LO(0), (uint32_t)addr);
 XWRITE4(sc, runt, XHCI_ERDP_HI(0), (uint32_t)(addr >> 32));

 return (retval);
}
