
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct xhci_trb {int dwTrb3; } ;
struct xhci_endp_ctx {int dwEpCtx0; int qwEpCtx2; int dwEpCtx4; int dwEpCtx1; } ;
struct xhci_dev_ctx {struct xhci_endp_ctx* ctx_ep; } ;
struct pci_xhci_softc {int dummy; } ;
struct pci_xhci_dev_ep {int ep_ringaddr; int ep_ccs; int * ep_xfer; } ;
struct pci_xhci_dev_emu {int dev_sc; TYPE_1__* dev_ue; struct xhci_dev_ctx* dev_ctx; struct pci_xhci_dev_ep* eps; } ;
struct TYPE_2__ {scalar_t__ (* ue_reset ) (int ) ;} ;


 int DPRINTF (char*) ;
 int USB_DATA_XFER_RESET (int *) ;
 scalar_t__ XHCI_EPCTX_0_MAXP_STREAMS_GET (int) ;
 struct pci_xhci_dev_emu* XHCI_SLOTDEV_PTR (struct pci_xhci_softc*,scalar_t__) ;
 int XHCI_ST_EPCTX_STOPPED ;
 scalar_t__ XHCI_TRB_3_EP_GET (int) ;
 int XHCI_TRB_3_SUSP_EP_BIT ;
 scalar_t__ XHCI_TRB_3_TYPE_GET (int) ;
 scalar_t__ XHCI_TRB_ERROR_ENDP_NOT_ON ;
 scalar_t__ XHCI_TRB_ERROR_SUCCESS ;
 scalar_t__ XHCI_TRB_ERROR_TRB ;
 scalar_t__ XHCI_TRB_TYPE_RESET_EP ;
 scalar_t__ XHCI_TRB_TYPE_STOP_EP ;
 int assert (int ) ;
 scalar_t__ stub1 (int ) ;

__attribute__((used)) static uint32_t
pci_xhci_cmd_reset_ep(struct pci_xhci_softc *sc, uint32_t slot,
    struct xhci_trb *trb)
{
 struct pci_xhci_dev_emu *dev;
 struct pci_xhci_dev_ep *devep;
 struct xhci_dev_ctx *dev_ctx;
 struct xhci_endp_ctx *ep_ctx;
 uint32_t cmderr, epid;
 uint32_t type;

 epid = XHCI_TRB_3_EP_GET(trb->dwTrb3);

 DPRINTF(("pci_xhci: reset ep %u: slot %u\r\n", epid, slot));

 cmderr = XHCI_TRB_ERROR_SUCCESS;

 type = XHCI_TRB_3_TYPE_GET(trb->dwTrb3);

 dev = XHCI_SLOTDEV_PTR(sc, slot);
 assert(dev != ((void*)0));

 if (type == XHCI_TRB_TYPE_STOP_EP &&
     (trb->dwTrb3 & XHCI_TRB_3_SUSP_EP_BIT) != 0) {

 }

 if (epid < 1 || epid > 31) {
  DPRINTF(("pci_xhci: reset ep: invalid epid %u\r\n", epid));
  cmderr = XHCI_TRB_ERROR_TRB;
  goto done;
 }

 devep = &dev->eps[epid];
 if (devep->ep_xfer != ((void*)0))
  USB_DATA_XFER_RESET(devep->ep_xfer);

 dev_ctx = dev->dev_ctx;
 assert(dev_ctx != ((void*)0));

 ep_ctx = &dev_ctx->ctx_ep[epid];

 ep_ctx->dwEpCtx0 = (ep_ctx->dwEpCtx0 & ~0x7) | XHCI_ST_EPCTX_STOPPED;

 if (XHCI_EPCTX_0_MAXP_STREAMS_GET(ep_ctx->dwEpCtx0) == 0)
  ep_ctx->qwEpCtx2 = devep->ep_ringaddr | devep->ep_ccs;

 DPRINTF(("pci_xhci: reset ep[%u] %08x %08x %016lx %08x\r\n",
         epid, ep_ctx->dwEpCtx0, ep_ctx->dwEpCtx1, ep_ctx->qwEpCtx2,
         ep_ctx->dwEpCtx4));

 if (type == XHCI_TRB_TYPE_RESET_EP &&
     (dev->dev_ue->ue_reset == ((void*)0) ||
     dev->dev_ue->ue_reset(dev->dev_sc) < 0)) {
  cmderr = XHCI_TRB_ERROR_ENDP_NOT_ON;
  goto done;
 }

done:
 return (cmderr);
}
