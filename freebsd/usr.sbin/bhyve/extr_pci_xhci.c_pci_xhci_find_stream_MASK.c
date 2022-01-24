#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct xhci_stream_ctx {int /*<<< orphan*/  qwSctx0; } ;
struct xhci_endp_ctx {int qwEpCtx2; int /*<<< orphan*/  dwEpCtx0; } ;
struct pci_xhci_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct xhci_stream_ctx* FUNC3 (struct pci_xhci_softc*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ XHCI_STREAMS_MAX ; 
 scalar_t__ XHCI_TRB_ERROR_INVALID_SID ; 
 scalar_t__ XHCI_TRB_ERROR_STREAM_TYPE ; 
 scalar_t__ XHCI_TRB_ERROR_SUCCESS ; 
 scalar_t__ XHCI_TRB_ERROR_TRB ; 

__attribute__((used)) static uint32_t
FUNC5(struct pci_xhci_softc *sc, struct xhci_endp_ctx *ep,
    uint32_t streamid, struct xhci_stream_ctx **osctx)
{
	struct xhci_stream_ctx *sctx;
	uint32_t	maxpstreams;

	maxpstreams = FUNC2(ep->dwEpCtx0);
	if (maxpstreams == 0)
		return (XHCI_TRB_ERROR_TRB);

	if (maxpstreams > XHCI_STREAMS_MAX)
		return (XHCI_TRB_ERROR_INVALID_SID);

	if (FUNC1(ep->dwEpCtx0) == 0) {
		FUNC0(("pci_xhci: find_stream; LSA bit not set\r\n"));
		return (XHCI_TRB_ERROR_INVALID_SID);
	}

	/* only support primary stream */
	if (streamid > maxpstreams)
		return (XHCI_TRB_ERROR_STREAM_TYPE);

	sctx = FUNC3(sc, ep->qwEpCtx2 & ~0xFUL) + streamid;
	if (!FUNC4(sctx->qwSctx0))
		return (XHCI_TRB_ERROR_STREAM_TYPE);

	*osctx = sctx;

	return (XHCI_TRB_ERROR_SUCCESS);
}