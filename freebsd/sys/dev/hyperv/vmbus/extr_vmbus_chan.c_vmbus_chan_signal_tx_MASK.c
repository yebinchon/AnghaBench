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
struct TYPE_2__ {int /*<<< orphan*/  hv_paddr; } ;
struct vmbus_channel {int ch_txflags; TYPE_1__ ch_monprm_dma; int /*<<< orphan*/  ch_montrig_mask; int /*<<< orphan*/  ch_montrig; int /*<<< orphan*/  ch_evtflag_mask; int /*<<< orphan*/  ch_evtflag; } ;

/* Variables and functions */
 int VMBUS_CHAN_TXF_HASMNF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static __inline void
FUNC3(const struct vmbus_channel *chan)
{
	FUNC1(chan->ch_evtflag, chan->ch_evtflag_mask);
	if (chan->ch_txflags & VMBUS_CHAN_TXF_HASMNF)
		FUNC0(chan->ch_montrig, chan->ch_montrig_mask);
	else
		FUNC2(chan->ch_monprm_dma.hv_paddr);
}