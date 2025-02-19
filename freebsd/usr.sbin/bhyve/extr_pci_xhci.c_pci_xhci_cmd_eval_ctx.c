
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct xhci_trb {int qwTrb0; } ;
struct xhci_slot_ctx {void* dwSctx2; void* dwSctx1; int dwSctx3; int dwSctx0; } ;
struct TYPE_3__ {scalar_t__ dwInCtx0; int dwInCtx1; } ;
struct xhci_input_dev_ctx {TYPE_1__ ctx_input; struct xhci_slot_ctx ctx_slot; struct xhci_endp_ctx* ctx_ep; } ;
struct xhci_endp_ctx {int dwEpCtx4; int qwEpCtx2; void* dwEpCtx1; int dwEpCtx0; } ;
struct TYPE_4__ {int dwSctx3; void* dwSctx2; void* dwSctx1; int dwSctx0; } ;
struct xhci_dev_ctx {TYPE_2__ ctx_slot; struct xhci_endp_ctx* ctx_ep; } ;
struct pci_xhci_softc {int dummy; } ;


 int DPRINTF (char*) ;
 void* FIELD_COPY (void*,void*,int,int) ;
 struct xhci_input_dev_ctx* XHCI_GADDR (struct pci_xhci_softc*,int) ;
 int XHCI_TRB_ERROR_SUCCESS ;
 int XHCI_TRB_ERROR_TRB ;
 struct xhci_dev_ctx* pci_xhci_get_dev_ctx (struct pci_xhci_softc*,int ) ;

__attribute__((used)) static uint32_t
pci_xhci_cmd_eval_ctx(struct pci_xhci_softc *sc, uint32_t slot,
    struct xhci_trb *trb)
{
 struct xhci_input_dev_ctx *input_ctx;
 struct xhci_slot_ctx *islot_ctx;
 struct xhci_dev_ctx *dev_ctx;
 struct xhci_endp_ctx *ep0_ctx;
 uint32_t cmderr;

 input_ctx = XHCI_GADDR(sc, trb->qwTrb0 & ~0xFUL);
 islot_ctx = &input_ctx->ctx_slot;
 ep0_ctx = &input_ctx->ctx_ep[1];

 cmderr = XHCI_TRB_ERROR_SUCCESS;
 DPRINTF(("pci_xhci: eval ctx, input ctl: D 0x%08x A 0x%08x,\r\n"
          "          slot %08x %08x %08x %08x\r\n"
          "          ep0  %08x %08x %016lx %08x\r\n",
         input_ctx->ctx_input.dwInCtx0, input_ctx->ctx_input.dwInCtx1,
         islot_ctx->dwSctx0, islot_ctx->dwSctx1,
         islot_ctx->dwSctx2, islot_ctx->dwSctx3,
         ep0_ctx->dwEpCtx0, ep0_ctx->dwEpCtx1, ep0_ctx->qwEpCtx2,
         ep0_ctx->dwEpCtx4));


 if ((input_ctx->ctx_input.dwInCtx0 != 0) ||
     (input_ctx->ctx_input.dwInCtx1 & 0x03) == 0) {
  DPRINTF(("pci_xhci: eval ctx, input ctl invalid\r\n"));
  cmderr = XHCI_TRB_ERROR_TRB;
  goto done;
 }


 dev_ctx = pci_xhci_get_dev_ctx(sc, slot);

 DPRINTF(("pci_xhci: eval ctx, dev ctx\r\n"
          "          slot %08x %08x %08x %08x\r\n",
         dev_ctx->ctx_slot.dwSctx0, dev_ctx->ctx_slot.dwSctx1,
         dev_ctx->ctx_slot.dwSctx2, dev_ctx->ctx_slot.dwSctx3));

 if (input_ctx->ctx_input.dwInCtx1 & 0x01) {

  dev_ctx->ctx_slot.dwSctx1 = FIELD_COPY(
      dev_ctx->ctx_slot.dwSctx1, input_ctx->ctx_slot.dwSctx1,
      0xFFFF, 0);


  dev_ctx->ctx_slot.dwSctx2 = FIELD_COPY(
      dev_ctx->ctx_slot.dwSctx2, input_ctx->ctx_slot.dwSctx2,
      0x3FF, 22);
 }
 if (input_ctx->ctx_input.dwInCtx1 & 0x02) {

  dev_ctx->ctx_ep[1].dwEpCtx1 = FIELD_COPY(
      dev_ctx->ctx_ep[1].dwEpCtx1, ep0_ctx->dwEpCtx1,
      0xFFFF, 16);

  ep0_ctx = &dev_ctx->ctx_ep[1];
 }

 DPRINTF(("pci_xhci: eval ctx, output ctx\r\n"
          "          slot %08x %08x %08x %08x\r\n"
          "          ep0  %08x %08x %016lx %08x\r\n",
         dev_ctx->ctx_slot.dwSctx0, dev_ctx->ctx_slot.dwSctx1,
         dev_ctx->ctx_slot.dwSctx2, dev_ctx->ctx_slot.dwSctx3,
         ep0_ctx->dwEpCtx0, ep0_ctx->dwEpCtx1, ep0_ctx->qwEpCtx2,
         ep0_ctx->dwEpCtx4));

done:
 return (cmderr);
}
