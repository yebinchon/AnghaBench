#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  DIR; int /*<<< orphan*/  CDA; int /*<<< orphan*/  EDA; int /*<<< orphan*/  SARB; int /*<<< orphan*/  BCR; int /*<<< orphan*/  SAR; int /*<<< orphan*/  DCR; } ;
struct TYPE_6__ {int dma_trc0; int pio_trc0; int dma_trc1; int pio_trc1; } ;
struct TYPE_9__ {scalar_t__ mode; TYPE_3__* board; int /*<<< orphan*/  CMD; TYPE_2__ TX; TYPE_1__ opt; int /*<<< orphan*/  TRC1; int /*<<< orphan*/  TRC0; int /*<<< orphan*/  IE1; int /*<<< orphan*/  IE0; scalar_t__ num; } ;
typedef  TYPE_4__ ct_chan_t ;
struct TYPE_8__ {scalar_t__ type; int /*<<< orphan*/  port; } ;

/* Variables and functions */
 scalar_t__ B_TAU_G703 ; 
 int CMD_TX_ENABLE ; 
 int DCR_ABORT ; 
 int DIR_CHAIN_BOFE ; 
 int DIR_CHAIN_COFE ; 
 int DIR_EOTE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int IE0_TX_INTE ; 
 int IE0_TX_RDYE ; 
 int IE1_HDLC_UDRNE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int IER0_TX_INTE_0 ; 
 int IER0_TX_INTE_1 ; 
 int IER0_TX_RDYE_0 ; 
 int IER0_TX_RDYE_1 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int IER1_TX_DMERE_0 ; 
 int IER1_TX_DMERE_1 ; 
 int IER1_TX_DME_0 ; 
 int IER1_TX_DME_1 ; 
 scalar_t__ M_ASYNC ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned short) ; 

void FUNC7 (ct_chan_t *c, int dma, unsigned long buf,
	unsigned len, unsigned long desc, unsigned long lim)
{
	int ier0 = FUNC4 (FUNC2(c->board->port));
	int ier1 = FUNC4 (FUNC3(c->board->port));
	int ie0 = FUNC4 (c->IE0);
	int ie1 = FUNC4 (c->IE1);

	/* Enable underrun interrupt in HDLC and raw modes. */
	if (c->mode != M_ASYNC) {
		ier0 |= c->num ? IER0_TX_INTE_1 : IER0_TX_INTE_0;
		ie0 |= IE0_TX_INTE;
		ie1 |= IE1_HDLC_UDRNE;
	}
	if (dma)
		ier1 |= c->num ? (IER1_TX_DMERE_1 | IER1_TX_DME_1) :
			(IER1_TX_DMERE_0 | IER1_TX_DME_0);
	else {
		ier0 |= c->num ? IER0_TX_RDYE_1 : IER0_TX_RDYE_0;
		ie0 |= IE0_TX_RDYE;
	}

	/* Enable interrupts. */
	FUNC5 (FUNC2(c->board->port), ier0);
	FUNC5 (FUNC3(c->board->port), ier1);
	FUNC5 (c->IE0, ie0);
	FUNC5 (c->IE1, ie1);

	/* TXRDY:=1 when the transmit buffer has TRC0 or less chars,
	 * TXRDY:=0 when the transmit buffer has more than TRC1 chars */
	FUNC5 (c->TRC0, dma ? c->opt.dma_trc0 : c->opt.pio_trc0);
	FUNC5 (c->TRC1, dma ? c->opt.dma_trc1 : c->opt.pio_trc1);

	/* Start transmitter. */
	if (dma) {
		FUNC5 (c->TX.DCR, DCR_ABORT);
		if (c->mode == M_ASYNC) {
			/* Single-buffer DMA mode. */
			FUNC5 (c->TX.SARB, (unsigned char) (buf >> 16));
			FUNC6 (c->TX.SAR, (unsigned short) buf);
			FUNC6 (c->TX.BCR, len);
			FUNC5 (c->TX.DIR, DIR_EOTE);
		} else {
			/* Chained-buffer DMA mode. */
			FUNC5 (c->TX.SARB, (unsigned char) (desc >> 16));
			FUNC6 (c->TX.EDA, (unsigned short) lim);
			FUNC6 (c->TX.CDA, (unsigned short) desc);
			FUNC5 (c->TX.DIR, /* DIR_CHAIN_EOME | */ DIR_CHAIN_BOFE |
				DIR_CHAIN_COFE);
		}
		/* Set DSR_DMA_ENABLE to begin! */
	}
	FUNC5 (c->CMD, CMD_TX_ENABLE);

	/* Clear errors. */
	if (c->board->type == B_TAU_G703) {
		FUNC5 (FUNC0(c->board->port), 0xff);
		FUNC5 (FUNC1(c->board->port), 0xff);
	}
}