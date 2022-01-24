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
struct vmbus_channel {scalar_t__ ch_subchan_cnt; int ch_stflags; scalar_t__ ch_refs; scalar_t__ ch_poll_intvl; int /*<<< orphan*/  ch_txbr; int /*<<< orphan*/  ch_rxbr; int /*<<< orphan*/  ch_orphan_lock; int /*<<< orphan*/  ch_subchan_lock; int /*<<< orphan*/  ch_monprm; int /*<<< orphan*/  ch_monprm_dma; int /*<<< orphan*/  ch_id; int /*<<< orphan*/ * ch_orphan_xact; int /*<<< orphan*/  ch_subchans; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int VMBUS_CHAN_ST_ONLIST ; 
 int VMBUS_CHAN_ST_ONPRIL ; 
 int VMBUS_CHAN_ST_ONSUBL ; 
 int VMBUS_CHAN_ST_OPENED ; 
 int /*<<< orphan*/  FUNC2 (struct vmbus_channel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC8(struct vmbus_channel *chan)
{

	FUNC0(FUNC1(&chan->ch_subchans) && chan->ch_subchan_cnt == 0,
	    ("still owns sub-channels"));
	FUNC0((chan->ch_stflags &
	    (VMBUS_CHAN_ST_OPENED |
	     VMBUS_CHAN_ST_ONPRIL |
	     VMBUS_CHAN_ST_ONSUBL |
	     VMBUS_CHAN_ST_ONLIST)) == 0, ("free busy channel"));
	FUNC0(chan->ch_orphan_xact == NULL,
	    ("still has orphan xact installed"));
	FUNC0(chan->ch_refs == 0, ("chan%u: invalid refcnt %d",
	    chan->ch_id, chan->ch_refs));
	FUNC0(chan->ch_poll_intvl == 0, ("chan%u: polling is activated",
	    chan->ch_id));

	FUNC3(&chan->ch_monprm_dma, chan->ch_monprm);
	FUNC4(&chan->ch_subchan_lock);
	FUNC5(&chan->ch_orphan_lock);
	FUNC6(&chan->ch_rxbr);
	FUNC7(&chan->ch_txbr);
	FUNC2(chan, M_DEVBUF);
}