
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmctx {int dummy; } ;
struct TYPE_2__ {int pgsz; int usbsts; } ;
struct pci_xhci_softc {int usb2_port_start; int usb3_port_start; int caplength; int hcsparams1; int hcsparams2; int hccparams1; int hccparams2; int dboff; int rtsoff; int regsend; int mtx; TYPE_1__ opregs; scalar_t__ hcsparams3; struct pci_devinst* xsc_pi; } ;
struct pci_xhci_portregs {int dummy; } ;
struct pci_devinst {struct pci_xhci_softc* pi_arg; } ;


 int DPRINTF (char*) ;
 int PCIBAR_MEM32 ;
 int PCIC_SERIALBUS ;
 int PCIP_SERIALBUS_USB_XHCI ;
 int PCIR_CLASS ;
 int PCIR_DEVICE ;
 int PCIR_PROGIF ;
 int PCIR_SUBCLASS ;
 int PCIR_VENDOR ;
 int PCIS_SERIALBUS_USB ;
 int PCI_USBREV ;
 int PCI_USB_REV_3_0 ;
 int WPRINTF (char*) ;
 scalar_t__ XHCI_CAPLEN ;
 int XHCI_ERST_MAX ;
 int XHCI_MAX_DEVS ;
 int XHCI_MAX_SLOTS ;
 int XHCI_PAGESIZE_4K ;
 scalar_t__ XHCI_PORTREGS_START ;
 int XHCI_SET_CAPLEN (scalar_t__) ;
 int XHCI_SET_DOORBELL (scalar_t__) ;
 int XHCI_SET_HCCP1_MAXPSA (int ) ;
 int XHCI_SET_HCCP1_NSS (int) ;
 int XHCI_SET_HCCP1_SPC (int) ;
 int XHCI_SET_HCCP1_XECP (int) ;
 int XHCI_SET_HCCP2_LEC (int) ;
 int XHCI_SET_HCCP2_U3C (int) ;
 int XHCI_SET_HCIVERSION (int) ;
 int XHCI_SET_HCSP1_MAXINTR (int) ;
 int XHCI_SET_HCSP1_MAXPORTS (int) ;
 int XHCI_SET_HCSP1_MAXSLOTS (int) ;
 int XHCI_SET_HCSP2_ERSTMAX (int ) ;
 int XHCI_SET_HCSP2_IST (int) ;
 int XHCI_SET_RTSOFFSET (int) ;
 int XHCI_STREAMS_MAX ;
 int XHCI_STS_HCH ;
 struct pci_xhci_softc* calloc (int,int) ;
 int free (struct pci_xhci_softc*) ;
 int pci_emul_add_msicap (struct pci_devinst*,int) ;
 int pci_emul_alloc_bar (struct pci_devinst*,int ,int ,int) ;
 int pci_lintr_request (struct pci_devinst*) ;
 int pci_set_cfgdata16 (struct pci_devinst*,int ,int) ;
 int pci_set_cfgdata8 (struct pci_devinst*,int ,int ) ;
 int pci_xhci_parse_opts (struct pci_xhci_softc*,char*) ;
 int pci_xhci_reset (struct pci_xhci_softc*) ;
 int pthread_mutex_init (int *,int *) ;
 int xhci_in_use ;

__attribute__((used)) static int
pci_xhci_init(struct vmctx *ctx, struct pci_devinst *pi, char *opts)
{
 struct pci_xhci_softc *sc;
 int error;

 if (xhci_in_use) {
  WPRINTF(("pci_xhci controller already defined\r\n"));
  return (-1);
 }
 xhci_in_use = 1;

 sc = calloc(1, sizeof(struct pci_xhci_softc));
 pi->pi_arg = sc;
 sc->xsc_pi = pi;

 sc->usb2_port_start = (XHCI_MAX_DEVS/2) + 1;
 sc->usb3_port_start = 1;


 error = pci_xhci_parse_opts(sc, opts);
 if (error < 0)
  goto done;
 else
  error = 0;

 sc->caplength = XHCI_SET_CAPLEN(XHCI_CAPLEN) |
                 XHCI_SET_HCIVERSION(0x0100);
 sc->hcsparams1 = XHCI_SET_HCSP1_MAXPORTS(XHCI_MAX_DEVS) |
                  XHCI_SET_HCSP1_MAXINTR(1) |
                  XHCI_SET_HCSP1_MAXSLOTS(XHCI_MAX_SLOTS);
 sc->hcsparams2 = XHCI_SET_HCSP2_ERSTMAX(XHCI_ERST_MAX) |
                  XHCI_SET_HCSP2_IST(0x04);
 sc->hcsparams3 = 0;
 sc->hccparams1 = XHCI_SET_HCCP1_NSS(1) |
                  XHCI_SET_HCCP1_SPC(1) |
                  XHCI_SET_HCCP1_MAXPSA(XHCI_STREAMS_MAX);
 sc->hccparams2 = XHCI_SET_HCCP2_LEC(1) |
                  XHCI_SET_HCCP2_U3C(1);
 sc->dboff = XHCI_SET_DOORBELL(XHCI_CAPLEN + XHCI_PORTREGS_START +
             XHCI_MAX_DEVS * sizeof(struct pci_xhci_portregs));


 if (sc->dboff & 0x3)
  sc->dboff = (sc->dboff + 0x3) & ~0x3;


 sc->rtsoff = XHCI_SET_RTSOFFSET(sc->dboff + (XHCI_MAX_SLOTS+1) * 32);
 if (sc->rtsoff & 0x1F)
  sc->rtsoff = (sc->rtsoff + 0x1F) & ~0x1F;

 DPRINTF(("pci_xhci dboff: 0x%x, rtsoff: 0x%x\r\n", sc->dboff,
         sc->rtsoff));

 sc->opregs.usbsts = XHCI_STS_HCH;
 sc->opregs.pgsz = XHCI_PAGESIZE_4K;

 pci_xhci_reset(sc);

 sc->regsend = sc->rtsoff + 0x20 + 32;





 sc->hccparams1 |= XHCI_SET_HCCP1_XECP(sc->regsend/4);

 pci_set_cfgdata16(pi, PCIR_DEVICE, 0x1E31);
 pci_set_cfgdata16(pi, PCIR_VENDOR, 0x8086);
 pci_set_cfgdata8(pi, PCIR_CLASS, PCIC_SERIALBUS);
 pci_set_cfgdata8(pi, PCIR_SUBCLASS, PCIS_SERIALBUS_USB);
 pci_set_cfgdata8(pi, PCIR_PROGIF,PCIP_SERIALBUS_USB_XHCI);
 pci_set_cfgdata8(pi, PCI_USBREV, PCI_USB_REV_3_0);

 pci_emul_add_msicap(pi, 1);


 pci_emul_alloc_bar(pi, 0, PCIBAR_MEM32, sc->regsend + 4*32);
 DPRINTF(("pci_xhci pci_emu_alloc: %d\r\n", sc->regsend + 4*32));


 pci_lintr_request(pi);

 pthread_mutex_init(&sc->mtx, ((void*)0));

done:
 if (error) {
  free(sc);
 }

 return (error);
}
