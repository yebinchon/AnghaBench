
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {int usbsts; int dnctrl; int crcr; int dcbaap; int config; void* dcbaa_p; void* cr_p; int usbcmd; } ;
struct pci_xhci_softc {TYPE_1__ opregs; } ;


 int DPRINTF (char*) ;
 int MASK_64_HI (int) ;
 int MASK_64_LO (int) ;
 scalar_t__ XHCI_CAPLEN ;



 int XHCI_CRCR_LO_CA ;
 int XHCI_CRCR_LO_CRR ;
 int XHCI_CRCR_LO_CS ;
 int XHCI_CRCR_LO_RCS ;



 void* XHCI_GADDR (struct pci_xhci_softc*,int) ;

 int XHCI_STS_CNR ;
 int XHCI_STS_EINT ;
 int XHCI_STS_HSE ;
 int XHCI_STS_PCD ;
 int XHCI_STS_RSS ;
 int XHCI_STS_SRE ;
 int XHCI_STS_SSS ;


 int pci_xhci_portregs_write (struct pci_xhci_softc*,int,int) ;
 int pci_xhci_usbcmd_write (struct pci_xhci_softc*,int) ;

__attribute__((used)) static void
pci_xhci_hostop_write(struct pci_xhci_softc *sc, uint64_t offset,
    uint64_t value)
{
 offset -= XHCI_CAPLEN;

 if (offset < 0x400)
  DPRINTF(("pci_xhci: hostop write offset 0x%lx: 0x%lx\r\n",
           offset, value));

 switch (offset) {
 case 129:
  sc->opregs.usbcmd = pci_xhci_usbcmd_write(sc, value & 0x3F0F);
  break;

 case 128:

  sc->opregs.usbsts &= ~(value &
        (XHCI_STS_HSE|XHCI_STS_EINT|XHCI_STS_PCD|XHCI_STS_SSS|
         XHCI_STS_RSS|XHCI_STS_SRE|XHCI_STS_CNR));
  break;

 case 130:

  break;

 case 131:
  sc->opregs.dnctrl = value & 0xFFFF;
  break;

 case 134:
  if (sc->opregs.crcr & XHCI_CRCR_LO_CRR) {
   sc->opregs.crcr &= ~(XHCI_CRCR_LO_CS|XHCI_CRCR_LO_CA);
   sc->opregs.crcr |= value &
                      (XHCI_CRCR_LO_CS|XHCI_CRCR_LO_CA);
  } else {
   sc->opregs.crcr = MASK_64_HI(sc->opregs.crcr) |
              (value & (0xFFFFFFC0 | XHCI_CRCR_LO_RCS));
  }
  break;

 case 135:
  if (!(sc->opregs.crcr & XHCI_CRCR_LO_CRR)) {
   sc->opregs.crcr = MASK_64_LO(sc->opregs.crcr) |
                     (value << 32);

   sc->opregs.cr_p = XHCI_GADDR(sc,
                     sc->opregs.crcr & ~0xF);
  }

  if (sc->opregs.crcr & XHCI_CRCR_LO_CS) {

  }

  if (sc->opregs.crcr & XHCI_CRCR_LO_CA) {

  }

  break;

 case 132:
  sc->opregs.dcbaap = MASK_64_HI(sc->opregs.dcbaap) |
                      (value & 0xFFFFFFC0);
  break;

 case 133:
  sc->opregs.dcbaap = MASK_64_LO(sc->opregs.dcbaap) |
                       (value << 32);
  sc->opregs.dcbaa_p = XHCI_GADDR(sc, sc->opregs.dcbaap & ~0x3FUL);

  DPRINTF(("pci_xhci: opregs dcbaap = 0x%lx (vaddr 0x%lx)\r\n",
      sc->opregs.dcbaap, (uint64_t)sc->opregs.dcbaa_p));
  break;

 case 136:
  sc->opregs.config = value & 0x03FF;
  break;

 default:
  if (offset >= 0x400)
   pci_xhci_portregs_write(sc, offset, value);

  break;
 }
}
