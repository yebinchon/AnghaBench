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
struct sc_pcminfo {struct aic_softc* sc; struct sc_chinfo* chan; } ;
struct sc_chinfo {int /*<<< orphan*/  buffer; } ;
struct TYPE_2__ {int src_width; int dst_width; int /*<<< orphan*/  block_num; int /*<<< orphan*/  block_len; int /*<<< orphan*/  dst_addr; int /*<<< orphan*/  src_addr; int /*<<< orphan*/  direction; int /*<<< orphan*/  req_type; int /*<<< orphan*/  operation; } ;
struct aic_softc {int /*<<< orphan*/  xchan; int /*<<< orphan*/  dev; TYPE_1__ req; int /*<<< orphan*/  aic_fifo_paddr; int /*<<< orphan*/  buf_base_phys; } ;

/* Variables and functions */
 int AFMT_16BIT ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  XDMA_CMD_BEGIN ; 
 int /*<<< orphan*/  XDMA_CYCLIC ; 
 int /*<<< orphan*/  XDMA_MEM_TO_DEV ; 
 int /*<<< orphan*/  XR_TYPE_PHYS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static int
FUNC7(struct sc_pcminfo *scp)
{
	struct aic_softc *sc;
	struct sc_chinfo *ch;
	int fmt;
	int err;

	ch = &scp->chan[0];
	sc = scp->sc;

	fmt = FUNC4(ch->buffer);

	FUNC0(fmt & AFMT_16BIT, ("16-bit audio supported only."));

	sc->req.operation = XDMA_CYCLIC;
	sc->req.req_type = XR_TYPE_PHYS;
	sc->req.direction = XDMA_MEM_TO_DEV;
	sc->req.src_addr = sc->buf_base_phys;
	sc->req.dst_addr = sc->aic_fifo_paddr;
	sc->req.src_width = 2;
	sc->req.dst_width = 2;
	sc->req.block_len = FUNC3(ch->buffer);
	sc->req.block_num = FUNC2(ch->buffer);

	err = FUNC6(sc->xchan, &sc->req);
	if (err != 0) {
		FUNC1(sc->dev, "Can't configure virtual channel\n");
		return (-1);
	}

	FUNC5(sc->xchan, XDMA_CMD_BEGIN);

	return (0);
}