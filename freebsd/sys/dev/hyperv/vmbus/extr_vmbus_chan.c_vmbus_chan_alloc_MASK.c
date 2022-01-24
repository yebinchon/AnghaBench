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
struct vmbus_softc {int /*<<< orphan*/  vmbus_dev; } ;
struct vmbus_channel {int ch_refs; int /*<<< orphan*/  ch_poll_timeo; int /*<<< orphan*/  ch_poll_task; int /*<<< orphan*/  ch_txbr; int /*<<< orphan*/  ch_rxbr; int /*<<< orphan*/  ch_subchans; int /*<<< orphan*/  ch_orphan_lock; int /*<<< orphan*/  ch_subchan_lock; struct vmbus_softc* ch_vmbus; int /*<<< orphan*/ * ch_monprm; int /*<<< orphan*/  ch_monprm_dma; } ;
struct hyperv_mon_param {int dummy; } ;

/* Variables and functions */
 int BUS_DMA_WAITOK ; 
 int BUS_DMA_ZERO ; 
 int /*<<< orphan*/  HYPERCALL_PARAM_ALIGN ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vmbus_channel*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct vmbus_channel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 struct vmbus_channel* FUNC7 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  vmbus_chan_poll_task ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct vmbus_channel *
FUNC12(struct vmbus_softc *sc)
{
	struct vmbus_channel *chan;

	chan = FUNC7(sizeof(*chan), M_DEVBUF, M_WAITOK | M_ZERO);

	chan->ch_monprm = FUNC6(FUNC2(sc->vmbus_dev),
	    HYPERCALL_PARAM_ALIGN, 0, sizeof(struct hyperv_mon_param),
	    &chan->ch_monprm_dma, BUS_DMA_WAITOK | BUS_DMA_ZERO);
	if (chan->ch_monprm == NULL) {
		FUNC4(sc->vmbus_dev, "monprm alloc failed\n");
		FUNC5(chan, M_DEVBUF);
		return NULL;
	}

	chan->ch_refs = 1;
	chan->ch_vmbus = sc;
	FUNC8(&chan->ch_subchan_lock, "vmbus subchan", NULL, MTX_DEF);
	FUNC9(&chan->ch_orphan_lock, "vmbus chorphan");
	FUNC0(&chan->ch_subchans);
	FUNC10(&chan->ch_rxbr);
	FUNC11(&chan->ch_txbr);

	FUNC1(&chan->ch_poll_task, 0, vmbus_chan_poll_task, chan);
	FUNC3(&chan->ch_poll_timeo, 1);

	return chan;
}