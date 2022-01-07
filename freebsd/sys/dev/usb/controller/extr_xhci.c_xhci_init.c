
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int usb_error_t ;
typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
struct TYPE_6__ {int dma_bits; int control_ep_quirk; int parent; void* devices_max; int devices; int * methods; int usbrev; } ;
struct xhci_softc {int sc_event_ccs; int sc_command_ccs; int sc_oper_off; int sc_runt_off; int sc_door_off; int sc_ctx_is_64_byte; int sc_noslot; int sc_noscratch; unsigned int sc_erst_max; scalar_t__ sc_imod_default; TYPE_3__ sc_bus; TYPE_2__* sc_config_msg; int sc_cmd_sx; int sc_cmd_cv; scalar_t__ sc_exit_lat_max; int sc_noport; scalar_t__ sc_capa_off; int sc_devices; } ;
typedef int device_t ;
struct TYPE_4__ {int * pm_callback; } ;
struct TYPE_5__ {TYPE_3__* bus; TYPE_1__ hdr; } ;


 int DPRINTF (char*,...) ;
 int ENOMEM ;
 int ENXIO ;
 int USB_GET_DMA_TAG (int ) ;
 int USB_REV_3_0 ;
 int XHCI_CAPLENGTH ;
 int XHCI_DBOFF ;
 int XHCI_HCIVERSION ;
 scalar_t__ XHCI_HCS0_AC64 (int) ;
 scalar_t__ XHCI_HCS0_CSZ (int) ;
 int XHCI_HCS1_DEVSLOT_MAX (int) ;
 int XHCI_HCS1_N_PORTS (int) ;
 unsigned int XHCI_HCS2_ERST_MAX (int) ;
 int XHCI_HCS2_SPB_MAX (int) ;
 scalar_t__ XHCI_HCS3_U1_DEL (int) ;
 scalar_t__ XHCI_HCS3_U2_DEL (int) ;
 int XHCI_HCSPARAMS0 ;
 int XHCI_HCSPARAMS1 ;
 int XHCI_HCSPARAMS2 ;
 int XHCI_HCSPARAMS3 ;
 scalar_t__ XHCI_IMOD_DEFAULT ;
 void* XHCI_MAX_DEVICES ;
 unsigned int XHCI_MAX_RSEG ;
 int XHCI_MAX_SCRATCHPADS ;
 int XHCI_PAGESIZE ;
 int XHCI_PAGESIZE_4K ;
 int XHCI_RTSOFF ;
 int XREAD1 (struct xhci_softc*,int ,int ) ;
 int XREAD2 (struct xhci_softc*,int ,int ) ;
 int XREAD4 (struct xhci_softc*,int ,int ) ;
 int capa ;
 int cv_init (int *,char*) ;
 int device_printf (int ,char*,...) ;
 int oper ;
 int sx_init (int *,char*) ;
 scalar_t__ usb_bus_mem_alloc_all (TYPE_3__*,int ,int *) ;
 int xhci_bus_methods ;
 int xhci_configure_msg ;
 int xhci_iterate_hw_softc ;
 scalar_t__ xhcictlquirk ;
 scalar_t__ xhcidma32 ;

usb_error_t
xhci_init(struct xhci_softc *sc, device_t self, uint8_t dma32)
{
 uint32_t temp;

 DPRINTF("\n");


 sc->sc_bus.parent = self;


 sc->sc_bus.usbrev = USB_REV_3_0;


 sc->sc_bus.methods = &xhci_bus_methods;


 sc->sc_bus.devices = sc->sc_devices;
 sc->sc_bus.devices_max = XHCI_MAX_DEVICES;


 sc->sc_event_ccs = 1;
 sc->sc_command_ccs = 1;


 sc->sc_capa_off = 0;
 sc->sc_oper_off = XREAD1(sc, capa, XHCI_CAPLENGTH);
 sc->sc_runt_off = XREAD4(sc, capa, XHCI_RTSOFF) & ~0x1F;
 sc->sc_door_off = XREAD4(sc, capa, XHCI_DBOFF) & ~0x3;

 DPRINTF("CAPLENGTH=0x%x\n", sc->sc_oper_off);
 DPRINTF("RUNTIMEOFFSET=0x%x\n", sc->sc_runt_off);
 DPRINTF("DOOROFFSET=0x%x\n", sc->sc_door_off);

 DPRINTF("xHCI version = 0x%04x\n", XREAD2(sc, capa, XHCI_HCIVERSION));

 if (!(XREAD4(sc, oper, XHCI_PAGESIZE) & XHCI_PAGESIZE_4K)) {
  device_printf(sc->sc_bus.parent, "Controller does "
      "not support 4K page size.\n");
  return (ENXIO);
 }

 temp = XREAD4(sc, capa, XHCI_HCSPARAMS0);

 DPRINTF("HCS0 = 0x%08x\n", temp);


 if (XHCI_HCS0_CSZ(temp)) {
  sc->sc_ctx_is_64_byte = 1;
 } else {
  sc->sc_ctx_is_64_byte = 0;
 }


 sc->sc_bus.dma_bits = (XHCI_HCS0_AC64(temp) &&
     xhcidma32 == 0 && dma32 == 0) ? 64 : 32;

 device_printf(self, "%d bytes context size, %d-bit DMA\n",
     sc->sc_ctx_is_64_byte ? 64 : 32, (int)sc->sc_bus.dma_bits);


 sc->sc_bus.control_ep_quirk = (xhcictlquirk ? 1 : 0);

 temp = XREAD4(sc, capa, XHCI_HCSPARAMS1);


 sc->sc_noport = XHCI_HCS1_N_PORTS(temp);

 if (sc->sc_noport == 0) {
  device_printf(sc->sc_bus.parent, "Invalid number "
      "of ports: %u\n", sc->sc_noport);
  return (ENXIO);
 }

 sc->sc_noport = sc->sc_noport;
 sc->sc_noslot = XHCI_HCS1_DEVSLOT_MAX(temp);

 DPRINTF("Max slots: %u\n", sc->sc_noslot);

 if (sc->sc_noslot > XHCI_MAX_DEVICES)
  sc->sc_noslot = XHCI_MAX_DEVICES;

 temp = XREAD4(sc, capa, XHCI_HCSPARAMS2);

 DPRINTF("HCS2=0x%08x\n", temp);


 sc->sc_noscratch = XHCI_HCS2_SPB_MAX(temp);

 if (sc->sc_noscratch > XHCI_MAX_SCRATCHPADS) {
  device_printf(sc->sc_bus.parent, "XHCI request "
      "too many scratchpads\n");
  return (ENOMEM);
 }

 DPRINTF("Max scratch: %u\n", sc->sc_noscratch);


 sc->sc_erst_max = 1U << XHCI_HCS2_ERST_MAX(temp);
 if (sc->sc_erst_max > XHCI_MAX_RSEG)
  sc->sc_erst_max = XHCI_MAX_RSEG;

 temp = XREAD4(sc, capa, XHCI_HCSPARAMS3);


 sc->sc_exit_lat_max = XHCI_HCS3_U1_DEL(temp) +
     XHCI_HCS3_U2_DEL(temp) + 250 ;


 if (sc->sc_imod_default == 0)
  sc->sc_imod_default = XHCI_IMOD_DEFAULT;


 if (usb_bus_mem_alloc_all(&sc->sc_bus,
     USB_GET_DMA_TAG(self), &xhci_iterate_hw_softc)) {
  return (ENOMEM);
 }


 cv_init(&sc->sc_cmd_cv, "CMDQ");
 sx_init(&sc->sc_cmd_sx, "CMDQ lock");

 sc->sc_config_msg[0].hdr.pm_callback = &xhci_configure_msg;
 sc->sc_config_msg[0].bus = &sc->sc_bus;
 sc->sc_config_msg[1].hdr.pm_callback = &xhci_configure_msg;
 sc->sc_config_msg[1].bus = &sc->sc_bus;

 return (0);
}
