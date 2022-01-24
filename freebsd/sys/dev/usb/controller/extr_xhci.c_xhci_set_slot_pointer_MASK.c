#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint8_t ;
typedef  scalar_t__ uint64_t ;
struct TYPE_2__ {int /*<<< orphan*/  ctx_pc; } ;
struct xhci_softc {TYPE_1__ sc_hw; } ;
struct xhci_dev_ctx_addr {int /*<<< orphan*/ * qwBaaDevCtxAddr; } ;
struct usb_page_search {struct xhci_dev_ctx_addr* buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,size_t,long long) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct usb_page_search*) ; 

__attribute__((used)) static void
FUNC4(struct xhci_softc *sc, uint8_t index, uint64_t dev_addr)
{
	struct usb_page_search buf_res;
	struct xhci_dev_ctx_addr *pdctxa;

	FUNC3(&sc->sc_hw.ctx_pc, 0, &buf_res);

	pdctxa = buf_res.buffer;

	FUNC0("addr[%u]=0x%016llx\n", index, (long long)dev_addr);

	pdctxa->qwBaaDevCtxAddr[index] = FUNC1(dev_addr);

	FUNC2(&sc->sc_hw.ctx_pc);
}