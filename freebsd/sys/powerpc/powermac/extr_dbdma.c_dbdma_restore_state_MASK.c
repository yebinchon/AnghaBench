#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * sc_saved_regs; } ;
typedef  TYPE_1__ dbdma_channel_t ;

/* Variables and functions */
 int /*<<< orphan*/  CHAN_BRANCH_SELECT ; 
 int /*<<< orphan*/  CHAN_CMDPTR ; 
 int /*<<< orphan*/  CHAN_CMDPTR_HI ; 
 int /*<<< orphan*/  CHAN_INTR_SELECT ; 
 int /*<<< orphan*/  CHAN_WAIT_SELECT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC2(dbdma_channel_t *chan)
{

	FUNC0(chan);
	FUNC1(chan, CHAN_CMDPTR, chan->sc_saved_regs[0]);
	FUNC1(chan, CHAN_CMDPTR_HI, chan->sc_saved_regs[1]);
	FUNC1(chan, CHAN_INTR_SELECT, chan->sc_saved_regs[2]);
	FUNC1(chan, CHAN_BRANCH_SELECT, chan->sc_saved_regs[3]);
	FUNC1(chan, CHAN_WAIT_SELECT, chan->sc_saved_regs[4]);
}