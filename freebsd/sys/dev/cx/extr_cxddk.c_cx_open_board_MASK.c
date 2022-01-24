#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  port_t ;
struct TYPE_6__ {scalar_t__ call_on_err; scalar_t__ call_on_msig; scalar_t__ call_on_rx; scalar_t__ call_on_tx; } ;
typedef  TYPE_1__ cx_chan_t ;
struct TYPE_7__ {TYPE_1__* chan; } ;
typedef  TYPE_2__ cx_board_t ;

/* Variables and functions */
 int NBRD ; 
 int NCHAN ; 
 int /*<<< orphan*/  csigma_fw_data ; 
 int /*<<< orphan*/  csigma_fw_len ; 
 int /*<<< orphan*/  csigma_fw_tvec ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3 (cx_board_t *b, int num, port_t port, int irq, int dma)
{
	cx_chan_t *c;

	if (num >= NBRD || ! FUNC1 (port, irq, dma))
		return 0;

	/* init callback pointers */
	for (c=b->chan; c<b->chan+NCHAN; ++c) {
		c->call_on_tx = 0;
		c->call_on_rx = 0;
		c->call_on_msig = 0;
		c->call_on_err = 0;
	}

	FUNC0 (b, num, port, irq, dma);

	/* Loading firmware */
	if (! FUNC2 (b, csigma_fw_data, csigma_fw_len, csigma_fw_tvec))
		return 0;
	return 1;
}