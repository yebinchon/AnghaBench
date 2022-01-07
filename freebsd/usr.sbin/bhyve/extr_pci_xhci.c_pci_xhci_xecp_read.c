
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct pci_xhci_softc {int usb2_port_start; int usb3_port_start; scalar_t__ regsend; } ;


 int DPRINTF (char*) ;
 int XHCI_ID_PROTOCOLS ;
 int XHCI_MAX_DEVS ;

__attribute__((used)) static uint64_t
pci_xhci_xecp_read(struct pci_xhci_softc *sc, uint64_t offset)
{
 uint32_t value;

 offset -= sc->regsend;
 value = 0;

 switch (offset) {
 case 0:

  value = (0x02 << 24) | (4 << 8) | XHCI_ID_PROTOCOLS;
  break;
 case 4:

  value = 0x20425355;
  break;
 case 8:

  value = ((XHCI_MAX_DEVS/2) << 8) | sc->usb2_port_start;
  break;
 case 12:
  break;
 case 16:

  value = (0x03 << 24) | XHCI_ID_PROTOCOLS;
  break;
 case 20:

  value = 0x20425355;
  break;
 case 24:

  value = ((XHCI_MAX_DEVS/2) << 8) | sc->usb3_port_start;
  break;
 case 28:
  break;
 default:
  DPRINTF(("pci_xhci: xecp invalid offset 0x%lx\r\n", offset));
  break;
 }

 DPRINTF(("pci_xhci: xecp read offset 0x%lx -> 0x%x\r\n",
         offset, value));

 return (value);
}
