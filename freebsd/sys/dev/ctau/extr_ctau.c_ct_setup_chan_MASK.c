#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  DSR; } ;
struct TYPE_8__ {int /*<<< orphan*/  DSR; } ;
struct TYPE_10__ {int /*<<< orphan*/  lx; int /*<<< orphan*/  FIE; int /*<<< orphan*/  IE2; int /*<<< orphan*/  IE1; int /*<<< orphan*/  IE0; int /*<<< orphan*/  CMD; TYPE_2__ TX; TYPE_1__ RX; } ;
typedef  TYPE_3__ ct_chan_t ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_CHAN_RESET ; 
 int /*<<< orphan*/  CMD_TX_ABORT ; 
 int /*<<< orphan*/  CMD_TX_RESET ; 
 int /*<<< orphan*/  DSR_DMA_DISABLE ; 
 int /*<<< orphan*/  LX_LOS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4 (ct_chan_t *c)
{
	/* reset the channel */
	FUNC3 (c->RX.DSR, DSR_DMA_DISABLE);
	FUNC3 (c->TX.DSR, DSR_DMA_DISABLE);
	FUNC3 (c->CMD, CMD_TX_RESET);
	FUNC3 (c->CMD, CMD_TX_ABORT);
	FUNC3 (c->CMD, CMD_CHAN_RESET);

	/* disable interrupts */
	FUNC3 (c->IE0, 0);
	FUNC3 (c->IE1, 0);
	FUNC3 (c->IE2, 0);
	FUNC3 (c->FIE, 0);

	/* clear DTR, RTS */
	FUNC0 (c, 0);
	FUNC1 (c, 0);

	c->lx = LX_LOS;
	FUNC2 (c);
}