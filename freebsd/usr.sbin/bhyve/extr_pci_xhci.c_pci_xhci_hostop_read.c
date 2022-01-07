
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {int usbcmd; int usbsts; int pgsz; int dnctrl; int crcr; int dcbaap; int config; } ;
struct pci_xhci_softc {TYPE_1__ opregs; } ;


 int DPRINTF (char*) ;
 int XHCI_CAPLEN ;



 int XHCI_CRCR_LO_CRR ;






 int pci_xhci_portregs_read (struct pci_xhci_softc*,int) ;

__attribute__((used)) static uint64_t
pci_xhci_hostop_read(struct pci_xhci_softc *sc, uint64_t offset)
{
 uint64_t value;

 offset = (offset - XHCI_CAPLEN);

 switch (offset) {
 case 129:
  value = sc->opregs.usbcmd;
  break;

 case 128:
  value = sc->opregs.usbsts;
  break;

 case 130:
  value = sc->opregs.pgsz;
  break;

 case 131:
  value = sc->opregs.dnctrl;
  break;

 case 134:
  value = sc->opregs.crcr & XHCI_CRCR_LO_CRR;
  break;

 case 135:
  value = 0;
  break;

 case 132:
  value = sc->opregs.dcbaap & 0xFFFFFFFF;
  break;

 case 133:
  value = (sc->opregs.dcbaap >> 32) & 0xFFFFFFFF;
  break;

 case 136:
  value = sc->opregs.config;
  break;

 default:
  if (offset >= 0x400)
   value = pci_xhci_portregs_read(sc, offset);
  else
   value = 0;

  break;
 }

 if (offset < 0x400)
  DPRINTF(("pci_xhci: hostop read offset 0x%lx -> 0x%lx\r\n",
          offset, value));

 return (value);
}
