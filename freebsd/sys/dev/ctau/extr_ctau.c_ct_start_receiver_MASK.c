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
struct TYPE_8__ {int /*<<< orphan*/  DSR; int /*<<< orphan*/  DIR; int /*<<< orphan*/  BFL; int /*<<< orphan*/  CDA; int /*<<< orphan*/  EDA; int /*<<< orphan*/  SARB; int /*<<< orphan*/  BCR; int /*<<< orphan*/  DAR; int /*<<< orphan*/  DARB; int /*<<< orphan*/  DCR; int /*<<< orphan*/  TCSR; int /*<<< orphan*/  TCNT; int /*<<< orphan*/  TCONR; int /*<<< orphan*/  TEPR; } ;
struct TYPE_7__ {unsigned char dma_rrc; unsigned char pio_rrc; } ;
struct TYPE_9__ {scalar_t__ mode; int /*<<< orphan*/  CMD; TYPE_3__ RX; TYPE_2__ opt; int /*<<< orphan*/  RRC; int /*<<< orphan*/  IE2; int /*<<< orphan*/  IE0; TYPE_1__* board; scalar_t__ num; } ;
typedef  TYPE_4__ ct_chan_t ;
struct TYPE_6__ {int /*<<< orphan*/  port; } ;

/* Variables and functions */
 unsigned char CMD_RX_ENABLE ; 
 unsigned char DCR_ABORT ; 
 unsigned char DIR_CHAIN_BOFE ; 
 unsigned char DIR_CHAIN_COFE ; 
 unsigned char DIR_CHAIN_EOME ; 
 unsigned char DIR_EOTE ; 
 unsigned char DSR_DMA_ENABLE ; 
 int IE0_RX_INTE ; 
 int IE0_RX_RDYE ; 
 int IE2_ASYNC_FRMEE ; 
 int IE2_ASYNC_PEE ; 
 int IE2_OVRNE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int IER0_RX_INTE_0 ; 
 int IER0_RX_INTE_1 ; 
 int IER0_RX_RDYE_0 ; 
 int IER0_RX_RDYE_1 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int IER1_RX_DMERE_0 ; 
 int IER1_RX_DMERE_1 ; 
 int IER1_RX_DME_0 ; 
 int IER1_RX_DME_1 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int IER2_RX_TME_0 ; 
 int IER2_RX_TME_1 ; 
 scalar_t__ M_ASYNC ; 
 unsigned char TCSR_ENABLE ; 
 unsigned char TCSR_INTR ; 
 unsigned char TEPR_64 ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned int) ; 

void FUNC6 (ct_chan_t *c, int dma, unsigned long buf,
	unsigned len, unsigned long desc, unsigned long lim)
{
	int ier0 = FUNC3 (FUNC0(c->board->port));
	int ier1 = FUNC3 (FUNC1(c->board->port));
	int ier2 = FUNC3 (FUNC2(c->board->port));
	int ie0 = FUNC3 (c->IE0);
	int ie2 = FUNC3 (c->IE2);

	if (dma) {
		ier1 |= c->num ? (IER1_RX_DMERE_1 | IER1_RX_DME_1) :
			(IER1_RX_DMERE_0 | IER1_RX_DME_0);
		if (c->mode == M_ASYNC) {
			ier0 |= c->num ? IER0_RX_INTE_1 : IER0_RX_INTE_0;
			ie0 |= IE0_RX_INTE;
			ie2 |= IE2_OVRNE | IE2_ASYNC_FRMEE | IE2_ASYNC_PEE;
		}
	} else {
		ier0 |= c->num ? (IER0_RX_INTE_1 | IER0_RX_RDYE_1) :
			(IER0_RX_INTE_0 | IER0_RX_RDYE_0);
		ie0 |= IE0_RX_INTE | IE0_RX_RDYE;
	}

	/* Start timer. */
	if (! dma) {
		FUNC4 (c->RX.TEPR, TEPR_64);	/* prescale to 16 kHz */
		FUNC5 (c->RX.TCONR, 160);	/* period is 10 msec */
		FUNC5 (c->RX.TCNT, 0);
		FUNC4 (c->RX.TCSR, TCSR_ENABLE | TCSR_INTR);
		ier2 |= c->num ? IER2_RX_TME_1 : IER2_RX_TME_0;
	}

	/* Enable interrupts. */
	FUNC4 (FUNC0(c->board->port), ier0);
	FUNC4 (FUNC1(c->board->port), ier1);
	FUNC4 (FUNC2(c->board->port), ier2);
	FUNC4 (c->IE0, ie0);
	FUNC4 (c->IE2, ie2);

	/* RXRDY:=1 when the receive buffer has more than RRC chars */
	FUNC4 (c->RRC, dma ? c->opt.dma_rrc : c->opt.pio_rrc);

	/* Start receiver. */
	if (dma) {
		FUNC4 (c->RX.DCR, DCR_ABORT);
		if (c->mode == M_ASYNC) {
			/* Single-buffer DMA mode. */
			FUNC4 (c->RX.DARB, (unsigned char) (buf >> 16));
			FUNC5 (c->RX.DAR, (unsigned short) buf);
			FUNC5 (c->RX.BCR, len);
			FUNC4 (c->RX.DIR, DIR_EOTE);
		} else {
			/* Chained-buffer DMA mode. */
			FUNC4 (c->RX.SARB, (unsigned char) (desc >> 16));
			FUNC5 (c->RX.EDA, (unsigned short) lim);
			FUNC5 (c->RX.CDA, (unsigned short) desc);
			FUNC5 (c->RX.BFL, len);
			FUNC4 (c->RX.DIR, DIR_CHAIN_EOME | DIR_CHAIN_BOFE |
				DIR_CHAIN_COFE);
		}
		FUNC4 (c->RX.DSR, DSR_DMA_ENABLE);
	}
	FUNC4 (c->CMD, CMD_RX_ENABLE);
}