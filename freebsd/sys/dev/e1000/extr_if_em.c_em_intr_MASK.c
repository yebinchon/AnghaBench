#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_3__ {scalar_t__ type; } ;
struct TYPE_4__ {TYPE_1__ mac; } ;
struct adapter {int /*<<< orphan*/  rx_overruns; TYPE_2__ hw; int /*<<< orphan*/  ctx; } ;
typedef  int /*<<< orphan*/  if_ctx_t ;

/* Variables and functions */
 int /*<<< orphan*/  E1000_ICR ; 
 int E1000_ICR_INT_ASSERTED ; 
 int E1000_ICR_LSC ; 
 int E1000_ICR_RXO ; 
 int E1000_ICR_RXSEQ ; 
 int FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FILTER_SCHEDULE_THREAD ; 
 int FILTER_STRAY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ e1000_82571 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

int
FUNC3(void *arg)
{
	struct adapter *adapter = arg;
	if_ctx_t ctx = adapter->ctx;
	u32 reg_icr;

	reg_icr = FUNC0(&adapter->hw, E1000_ICR);

	/* Hot eject? */
	if (reg_icr == 0xffffffff)
		return FILTER_STRAY;

	/* Definitely not our interrupt. */
	if (reg_icr == 0x0)
		return FILTER_STRAY;

	/*
	 * Starting with the 82571 chip, bit 31 should be used to
	 * determine whether the interrupt belongs to us.
	 */
	if (adapter->hw.mac.type >= e1000_82571 &&
	    (reg_icr & E1000_ICR_INT_ASSERTED) == 0)
		return FILTER_STRAY;

	/*
	 * Only MSI-X interrupts have one-shot behavior by taking advantage
	 * of the EIAC register.  Thus, explicitly disable interrupts.  This
	 * also works around the MSI message reordering errata on certain
	 * systems.
	 */
	FUNC1(ctx);

	/* Link status change */
	if (reg_icr & (E1000_ICR_RXSEQ | E1000_ICR_LSC))
		FUNC2(ctx);

	if (reg_icr & E1000_ICR_RXO)
		adapter->rx_overruns++;

	return (FILTER_SCHEDULE_THREAD);
}