
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ usb_error_t ;
typedef uintptr_t uint64_t ;
typedef int uint32_t ;
typedef size_t uint16_t ;
struct TYPE_9__ {int parent; } ;
struct TYPE_6__ {int root_pc; int * scratch_pc; int ctx_pc; } ;
struct xhci_softc {int sc_event_ccs; int sc_command_ccs; int sc_noslot; size_t sc_noscratch; int sc_imod_default; TYPE_4__ sc_bus; int (* sc_port_route ) (int ,int ,int ) ;TYPE_1__ sc_hw; int sc_erst_max; scalar_t__ sc_command_idx; scalar_t__ sc_event_idx; } ;
struct xhci_hw_root {TYPE_3__* hwr_commands; TYPE_2__* hwr_ring_seg; int * hwr_events; void** qwSpBufPtr; void** qwBaaDevCtxAddr; } ;
struct xhci_dev_ctx_addr {TYPE_3__* hwr_commands; TYPE_2__* hwr_ring_seg; int * hwr_events; void** qwSpBufPtr; void** qwBaaDevCtxAddr; } ;
struct usb_page_search {uintptr_t physaddr; struct xhci_hw_root* buffer; } ;
struct TYPE_8__ {void* qwTrb0; } ;
struct TYPE_7__ {int dwEvrsTableSize; void* qwEvrsTablePtr; } ;


 int DPRINTF (char*,...) ;
 scalar_t__ USB_ERR_IOERROR ;
 int XHCI_CMD_HSEE ;
 int XHCI_CMD_INTE ;
 int XHCI_CMD_RS ;
 int XHCI_CONFIG ;
 int XHCI_CRCR_HI ;
 int XHCI_CRCR_LO ;
 int XHCI_CRCR_LO_RCS ;
 int XHCI_DCBAAP_HI ;
 int XHCI_DCBAAP_LO ;
 int XHCI_DNCTRL ;
 int XHCI_ERDP_HI (int ) ;
 int XHCI_ERDP_LO (int ) ;
 int XHCI_ERSTBA_HI (int ) ;
 int XHCI_ERSTBA_LO (int ) ;
 int XHCI_ERSTSZ (int ) ;
 int XHCI_ERSTS_SET (int ) ;
 int XHCI_IMAN (int ) ;
 int XHCI_IMAN_INTR_ENA ;
 int XHCI_IMOD (int ) ;
 int XHCI_MAX_COMMANDS ;
 int XHCI_MAX_EVENTS ;
 int XHCI_STS_HCH ;
 int XHCI_USBCMD ;
 int XHCI_USBSTS ;
 int XREAD4 (struct xhci_softc*,int ,int ) ;
 int XWRITE4 (struct xhci_softc*,int ,int ,int) ;
 int device_printf (int ,char*) ;
 int htole32 (int ) ;
 void* htole64 (uintptr_t) ;
 int hz ;
 int memset (struct xhci_hw_root*,int ,int) ;
 int oper ;
 int runt ;
 int stub1 (int ,int ,int ) ;
 int usb_bus_mem_flush_all (TYPE_4__*,int *) ;
 int usb_pause_mtx (int *,int) ;
 int usbd_get_page (int *,int ,struct usb_page_search*) ;
 int xhci_do_poll (TYPE_4__*) ;
 int xhci_iterate_hw_softc ;
 scalar_t__ xhci_reset_controller (struct xhci_softc*) ;
 int xhciroute ;

usb_error_t
xhci_start_controller(struct xhci_softc *sc)
{
 struct usb_page_search buf_res;
 struct xhci_hw_root *phwr;
 struct xhci_dev_ctx_addr *pdctxa;
 usb_error_t err;
 uint64_t addr;
 uint32_t temp;
 uint16_t i;

 DPRINTF("\n");

 sc->sc_event_ccs = 1;
 sc->sc_event_idx = 0;
 sc->sc_command_ccs = 1;
 sc->sc_command_idx = 0;

 err = xhci_reset_controller(sc);
 if (err)
  return (err);


 DPRINTF("CONFIG=0x%08x -> 0x%08x\n",
     XREAD4(sc, oper, XHCI_CONFIG), sc->sc_noslot);

 XWRITE4(sc, oper, XHCI_CONFIG, sc->sc_noslot);

 temp = XREAD4(sc, oper, XHCI_USBSTS);


 XWRITE4(sc, oper, XHCI_USBSTS, temp);

 XWRITE4(sc, oper, XHCI_DNCTRL, 0);


 usbd_get_page(&sc->sc_hw.ctx_pc, 0, &buf_res);
 pdctxa = buf_res.buffer;
 memset(pdctxa, 0, sizeof(*pdctxa));

 addr = buf_res.physaddr;
 addr += (uintptr_t)&((struct xhci_dev_ctx_addr *)0)->qwSpBufPtr[0];


 pdctxa->qwBaaDevCtxAddr[0] = htole64(addr);

 for (i = 0; i != sc->sc_noscratch; i++) {
  struct usb_page_search buf_scp;
  usbd_get_page(&sc->sc_hw.scratch_pc[i], 0, &buf_scp);
  pdctxa->qwSpBufPtr[i] = htole64((uint64_t)buf_scp.physaddr);
 }

 addr = buf_res.physaddr;

 XWRITE4(sc, oper, XHCI_DCBAAP_LO, (uint32_t)addr);
 XWRITE4(sc, oper, XHCI_DCBAAP_HI, (uint32_t)(addr >> 32));
 XWRITE4(sc, oper, XHCI_DCBAAP_LO, (uint32_t)addr);
 XWRITE4(sc, oper, XHCI_DCBAAP_HI, (uint32_t)(addr >> 32));


 DPRINTF("ERSTSZ=0x%08x -> 0x%08x\n",
     XREAD4(sc, runt, XHCI_ERSTSZ(0)), sc->sc_erst_max);

 XWRITE4(sc, runt, XHCI_ERSTSZ(0), XHCI_ERSTS_SET(sc->sc_erst_max));


 XWRITE4(sc, runt, XHCI_IMOD(0), sc->sc_imod_default);

 usbd_get_page(&sc->sc_hw.root_pc, 0, &buf_res);

 phwr = buf_res.buffer;
 addr = buf_res.physaddr;
 addr += (uintptr_t)&((struct xhci_hw_root *)0)->hwr_events[0];


 memset(phwr, 0, sizeof(*phwr));

 phwr->hwr_ring_seg[0].qwEvrsTablePtr = htole64(addr);
 phwr->hwr_ring_seg[0].dwEvrsTableSize = htole32(XHCI_MAX_EVENTS);

 DPRINTF("ERDP(0)=0x%016llx\n", (unsigned long long)addr);

 XWRITE4(sc, runt, XHCI_ERDP_LO(0), (uint32_t)addr);
 XWRITE4(sc, runt, XHCI_ERDP_HI(0), (uint32_t)(addr >> 32));

 addr = buf_res.physaddr;

 DPRINTF("ERSTBA(0)=0x%016llx\n", (unsigned long long)addr);

 XWRITE4(sc, runt, XHCI_ERSTBA_LO(0), (uint32_t)addr);
 XWRITE4(sc, runt, XHCI_ERSTBA_HI(0), (uint32_t)(addr >> 32));


 temp = XREAD4(sc, runt, XHCI_IMAN(0));
 temp |= XHCI_IMAN_INTR_ENA;
 XWRITE4(sc, runt, XHCI_IMAN(0), temp);


 addr = buf_res.physaddr;
 addr += (uintptr_t)&((struct xhci_hw_root *)0)->hwr_commands[0];

 DPRINTF("CRCR=0x%016llx\n", (unsigned long long)addr);

 XWRITE4(sc, oper, XHCI_CRCR_LO, ((uint32_t)addr) | XHCI_CRCR_LO_RCS);
 XWRITE4(sc, oper, XHCI_CRCR_HI, (uint32_t)(addr >> 32));

 phwr->hwr_commands[XHCI_MAX_COMMANDS - 1].qwTrb0 = htole64(addr);

 usb_bus_mem_flush_all(&sc->sc_bus, &xhci_iterate_hw_softc);


 XWRITE4(sc, oper, XHCI_USBCMD, XHCI_CMD_RS |
     XHCI_CMD_INTE | XHCI_CMD_HSEE);

 for (i = 0; i != 100; i++) {
  usb_pause_mtx(((void*)0), hz / 100);
  temp = XREAD4(sc, oper, XHCI_USBSTS) & XHCI_STS_HCH;
  if (!temp)
   break;
 }
 if (temp) {
  XWRITE4(sc, oper, XHCI_USBCMD, 0);
  device_printf(sc->sc_bus.parent, "Run timeout.\n");
  return (USB_ERR_IOERROR);
 }


 xhci_do_poll(&sc->sc_bus);

 if (sc->sc_port_route != ((void*)0)) {

  sc->sc_port_route(sc->sc_bus.parent,
      ~xhciroute, xhciroute);
 }
 return (0);
}
