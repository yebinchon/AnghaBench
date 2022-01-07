
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct xhci_trb {int dwTrb3; int qwTrb0; int dwTrb2; } ;
struct TYPE_2__ {int crcr; struct xhci_trb* cr_p; } ;
struct pci_xhci_softc {TYPE_1__ opregs; } ;


 int DPRINTF (char*) ;
 int XHCI_CRCR_LO_CA ;
 int XHCI_CRCR_LO_CRR ;
 int XHCI_CRCR_LO_RCS ;
 int XHCI_TRB_2_ERROR_SET (int) ;
 int XHCI_TRB_3_CYCLE_BIT ;
 int XHCI_TRB_3_SLOT_GET (int) ;
 int XHCI_TRB_3_SLOT_SET (int) ;
 int XHCI_TRB_3_TC_BIT ;
 int XHCI_TRB_3_TYPE_GET (int) ;
 int XHCI_TRB_3_TYPE_SET (int ) ;
 int XHCI_TRB_ERROR_SUCCESS ;
 int XHCI_TRB_EVENT_CMD_COMPLETE ;
 int pci_xhci_cmd_address_device (struct pci_xhci_softc*,int,struct xhci_trb*) ;
 int pci_xhci_cmd_config_ep (struct pci_xhci_softc*,int,struct xhci_trb*) ;
 int pci_xhci_cmd_disable_slot (struct pci_xhci_softc*,int) ;
 int pci_xhci_cmd_enable_slot (struct pci_xhci_softc*,int*) ;
 int pci_xhci_cmd_eval_ctx (struct pci_xhci_softc*,int,struct xhci_trb*) ;
 int pci_xhci_cmd_reset_device (struct pci_xhci_softc*,int) ;
 int pci_xhci_cmd_reset_ep (struct pci_xhci_softc*,int,struct xhci_trb*) ;
 int pci_xhci_cmd_set_tr (struct pci_xhci_softc*,int,struct xhci_trb*) ;
 int pci_xhci_insert_event (struct pci_xhci_softc*,struct xhci_trb*,int) ;
 struct xhci_trb* pci_xhci_trb_next (struct pci_xhci_softc*,struct xhci_trb*,int*) ;

__attribute__((used)) static int
pci_xhci_complete_commands(struct pci_xhci_softc *sc)
{
 struct xhci_trb evtrb;
 struct xhci_trb *trb;
 uint64_t crcr;
 uint32_t ccs;
 uint32_t type;
 uint32_t slot;
 uint32_t cmderr;
 int error;

 error = 0;
 sc->opregs.crcr |= XHCI_CRCR_LO_CRR;

 trb = sc->opregs.cr_p;
 ccs = sc->opregs.crcr & XHCI_CRCR_LO_RCS;
 crcr = sc->opregs.crcr & ~0xF;

 while (1) {
  sc->opregs.cr_p = trb;

  type = XHCI_TRB_3_TYPE_GET(trb->dwTrb3);

  if ((trb->dwTrb3 & XHCI_TRB_3_CYCLE_BIT) !=
      (ccs & XHCI_TRB_3_CYCLE_BIT))
   break;

  DPRINTF(("pci_xhci: cmd type 0x%x, Trb0 x%016lx dwTrb2 x%08x"
          " dwTrb3 x%08x, TRB_CYCLE %u/ccs %u\r\n",
          type, trb->qwTrb0, trb->dwTrb2, trb->dwTrb3,
          trb->dwTrb3 & XHCI_TRB_3_CYCLE_BIT, ccs));

  cmderr = XHCI_TRB_ERROR_SUCCESS;
  evtrb.dwTrb2 = 0;
  evtrb.dwTrb3 = (ccs & XHCI_TRB_3_CYCLE_BIT) |
        XHCI_TRB_3_TYPE_SET(XHCI_TRB_EVENT_CMD_COMPLETE);
  slot = 0;

  switch (type) {
  case 135:
   if (trb->dwTrb3 & XHCI_TRB_3_TC_BIT)
    ccs ^= XHCI_CRCR_LO_RCS;
   break;

  case 140:
   cmderr = pci_xhci_cmd_enable_slot(sc, &slot);
   break;

  case 141:
   slot = XHCI_TRB_3_SLOT_GET(trb->dwTrb3);
   cmderr = pci_xhci_cmd_disable_slot(sc, slot);
   break;

  case 143:
   slot = XHCI_TRB_3_SLOT_GET(trb->dwTrb3);
   cmderr = pci_xhci_cmd_address_device(sc, slot, trb);
   break;

  case 142:
   slot = XHCI_TRB_3_SLOT_GET(trb->dwTrb3);
   cmderr = pci_xhci_cmd_config_ep(sc, slot, trb);
   break;

  case 139:
   slot = XHCI_TRB_3_SLOT_GET(trb->dwTrb3);
   cmderr = pci_xhci_cmd_eval_ctx(sc, slot, trb);
   break;

  case 131:
   DPRINTF(("Reset Endpoint on slot %d\r\n", slot));
   slot = XHCI_TRB_3_SLOT_GET(trb->dwTrb3);
   cmderr = pci_xhci_cmd_reset_ep(sc, slot, trb);
   break;

  case 128:
   DPRINTF(("Stop Endpoint on slot %d\r\n", slot));
   slot = XHCI_TRB_3_SLOT_GET(trb->dwTrb3);
   cmderr = pci_xhci_cmd_reset_ep(sc, slot, trb);
   break;

  case 129:
   slot = XHCI_TRB_3_SLOT_GET(trb->dwTrb3);
   cmderr = pci_xhci_cmd_set_tr(sc, slot, trb);
   break;

  case 132:
   slot = XHCI_TRB_3_SLOT_GET(trb->dwTrb3);
   cmderr = pci_xhci_cmd_reset_device(sc, slot);
   break;

  case 138:

   break;

  case 134:
   break;

  case 130:
   break;

  case 136:
   break;

  case 137:
   break;

  case 133:
   break;

  default:
   DPRINTF(("pci_xhci: unsupported cmd %x\r\n", type));
   break;
  }

  if (type != 135) {



   evtrb.qwTrb0 = crcr;
   evtrb.dwTrb2 |= XHCI_TRB_2_ERROR_SET(cmderr);
   evtrb.dwTrb3 |= XHCI_TRB_3_SLOT_SET(slot);
   DPRINTF(("pci_xhci: command 0x%x result: 0x%x\r\n",
           type, cmderr));
   pci_xhci_insert_event(sc, &evtrb, 1);
  }

  trb = pci_xhci_trb_next(sc, trb, &crcr);
 }

 sc->opregs.crcr = crcr | (sc->opregs.crcr & XHCI_CRCR_LO_CA) | ccs;
 sc->opregs.crcr &= ~XHCI_CRCR_LO_CRR;
 return (error);
}
