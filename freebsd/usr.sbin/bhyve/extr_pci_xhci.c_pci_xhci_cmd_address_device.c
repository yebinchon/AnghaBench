
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct xhci_trb {int qwTrb0; } ;
struct xhci_slot_ctx {int dwSctx3; int dwEpCtx0; int dwEpCtx4; int qwEpCtx2; int dwEpCtx1; int dwSctx2; int dwSctx1; int dwSctx0; } ;
struct TYPE_4__ {scalar_t__ dwInCtx0; int dwInCtx1; } ;
struct xhci_input_dev_ctx {TYPE_1__ ctx_input; struct xhci_slot_ctx* ctx_ep; struct xhci_slot_ctx ctx_slot; } ;
struct xhci_endp_ctx {int dwSctx3; int dwEpCtx0; int dwEpCtx4; int qwEpCtx2; int dwEpCtx1; int dwSctx2; int dwSctx1; int dwSctx0; } ;
struct xhci_dev_ctx {struct xhci_slot_ctx ctx_slot; struct xhci_slot_ctx* ctx_ep; } ;
struct pci_xhci_softc {int dummy; } ;
struct TYPE_5__ {int hci_address; } ;
struct pci_xhci_dev_emu {int dev_slotstate; int dev_sc; TYPE_3__* dev_ue; struct xhci_dev_ctx* dev_ctx; TYPE_2__ hci; } ;
struct TYPE_6__ {scalar_t__ (* ue_reset ) (int ) ;} ;


 int DPRINTF (char*) ;
 int XHCI_EPCTX_0_EPSTATE_SET (int ) ;
 struct xhci_input_dev_ctx* XHCI_GADDR (struct pci_xhci_softc*,int) ;
 int XHCI_SCTX_3_DEV_ADDR_SET (int ) ;
 int XHCI_SCTX_3_SLOT_STATE_SET (int ) ;
 struct pci_xhci_dev_emu* XHCI_SLOTDEV_PTR (struct pci_xhci_softc*,int ) ;
 int XHCI_ST_ADDRESSED ;
 int XHCI_ST_EPCTX_RUNNING ;
 int XHCI_ST_SLCTX_ADDRESSED ;
 int XHCI_TRB_ERROR_ENDP_NOT_ON ;
 int XHCI_TRB_ERROR_SUCCESS ;
 int XHCI_TRB_ERROR_TRB ;
 int assert (int ) ;
 int memcpy (struct xhci_slot_ctx*,struct xhci_slot_ctx*,int) ;
 struct xhci_dev_ctx* pci_xhci_get_dev_ctx (struct pci_xhci_softc*,int ) ;
 int pci_xhci_init_ep (struct pci_xhci_dev_emu*,int) ;
 scalar_t__ stub1 (int ) ;

__attribute__((used)) static uint32_t
pci_xhci_cmd_address_device(struct pci_xhci_softc *sc, uint32_t slot,
    struct xhci_trb *trb)
{
 struct pci_xhci_dev_emu *dev;
 struct xhci_input_dev_ctx *input_ctx;
 struct xhci_slot_ctx *islot_ctx;
 struct xhci_dev_ctx *dev_ctx;
 struct xhci_endp_ctx *ep0_ctx;
 uint32_t cmderr;

 input_ctx = XHCI_GADDR(sc, trb->qwTrb0 & ~0xFUL);
 islot_ctx = &input_ctx->ctx_slot;
 ep0_ctx = &input_ctx->ctx_ep[1];

 cmderr = XHCI_TRB_ERROR_SUCCESS;

 DPRINTF(("pci_xhci: address device, input ctl: D 0x%08x A 0x%08x,\r\n"
          "          slot %08x %08x %08x %08x\r\n"
          "          ep0  %08x %08x %016lx %08x\r\n",
         input_ctx->ctx_input.dwInCtx0, input_ctx->ctx_input.dwInCtx1,
         islot_ctx->dwSctx0, islot_ctx->dwSctx1,
         islot_ctx->dwSctx2, islot_ctx->dwSctx3,
         ep0_ctx->dwEpCtx0, ep0_ctx->dwEpCtx1, ep0_ctx->qwEpCtx2,
         ep0_ctx->dwEpCtx4));


 if ((input_ctx->ctx_input.dwInCtx0 != 0) ||
     (input_ctx->ctx_input.dwInCtx1 & 0x03) != 0x03) {
  DPRINTF(("pci_xhci: address device, input ctl invalid\r\n"));
  cmderr = XHCI_TRB_ERROR_TRB;
  goto done;
 }


 dev_ctx = pci_xhci_get_dev_ctx(sc, slot);

 DPRINTF(("pci_xhci: address device, dev ctx\r\n"
          "          slot %08x %08x %08x %08x\r\n",
         dev_ctx->ctx_slot.dwSctx0, dev_ctx->ctx_slot.dwSctx1,
         dev_ctx->ctx_slot.dwSctx2, dev_ctx->ctx_slot.dwSctx3));

 dev = XHCI_SLOTDEV_PTR(sc, slot);
 assert(dev != ((void*)0));

 dev->hci.hci_address = slot;
 dev->dev_ctx = dev_ctx;

 if (dev->dev_ue->ue_reset == ((void*)0) ||
     dev->dev_ue->ue_reset(dev->dev_sc) < 0) {
  cmderr = XHCI_TRB_ERROR_ENDP_NOT_ON;
  goto done;
 }

 memcpy(&dev_ctx->ctx_slot, islot_ctx, sizeof(struct xhci_slot_ctx));

 dev_ctx->ctx_slot.dwSctx3 =
     XHCI_SCTX_3_SLOT_STATE_SET(XHCI_ST_SLCTX_ADDRESSED) |
     XHCI_SCTX_3_DEV_ADDR_SET(slot);

 memcpy(&dev_ctx->ctx_ep[1], ep0_ctx, sizeof(struct xhci_endp_ctx));
 ep0_ctx = &dev_ctx->ctx_ep[1];
 ep0_ctx->dwEpCtx0 = (ep0_ctx->dwEpCtx0 & ~0x7) |
     XHCI_EPCTX_0_EPSTATE_SET(XHCI_ST_EPCTX_RUNNING);

 pci_xhci_init_ep(dev, 1);

 dev->dev_slotstate = XHCI_ST_ADDRESSED;

 DPRINTF(("pci_xhci: address device, output ctx\r\n"
          "          slot %08x %08x %08x %08x\r\n"
          "          ep0  %08x %08x %016lx %08x\r\n",
         dev_ctx->ctx_slot.dwSctx0, dev_ctx->ctx_slot.dwSctx1,
         dev_ctx->ctx_slot.dwSctx2, dev_ctx->ctx_slot.dwSctx3,
         ep0_ctx->dwEpCtx0, ep0_ctx->dwEpCtx1, ep0_ctx->qwEpCtx2,
         ep0_ctx->dwEpCtx4));

done:
 return (cmderr);
}
