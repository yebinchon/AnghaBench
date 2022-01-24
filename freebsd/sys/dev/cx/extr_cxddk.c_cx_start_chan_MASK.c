#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {unsigned long arphys; unsigned long brphys; unsigned long atphys; unsigned long btphys; int num; int /*<<< orphan*/  port; int /*<<< orphan*/  mode; TYPE_1__* board; scalar_t__ btbuf; scalar_t__ atbuf; scalar_t__ brbuf; scalar_t__ arbuf; scalar_t__ overflow; } ;
typedef  TYPE_2__ cx_chan_t ;
struct TYPE_11__ {scalar_t__* tbuffer; scalar_t__* rbuffer; } ;
typedef  TYPE_3__ cx_buf_t ;
struct TYPE_9__ {scalar_t__ dma; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int BSTS_OWN24 ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int CCR_CLRCH ; 
 int CCR_ENRX ; 
 int CCR_ENTX ; 
 int CCR_INITCH ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int CMR_ASYNC ; 
 int CMR_HDLC ; 
 int CMR_RXDMA ; 
 int CMR_TXDMA ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int IER_MDM ; 
 int IER_RET ; 
 int IER_RXD ; 
 int IER_TXD ; 
 int IER_TXMPTY ; 
 int /*<<< orphan*/  M_ASYNC ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int) ; 
 int FUNC16 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int) ; 

void FUNC21 (cx_chan_t *c, cx_buf_t *cb, unsigned long phys)
{
	int command = 0;
	int mode = 0;
	int ier = 0;
	int rbsz;

	c->overflow = 0;

	/* Setting up buffers */
	if (cb) {
		c->arbuf = cb->rbuffer[0];
		c->brbuf = cb->rbuffer[1];
		c->atbuf = cb->tbuffer[0];
		c->btbuf = cb->tbuffer[1];
		c->arphys = phys + ((char*)c->arbuf - (char*)cb);
		c->brphys = phys + ((char*)c->brbuf - (char*)cb);
		c->atphys = phys + ((char*)c->atbuf - (char*)cb);
		c->btphys = phys + ((char*)c->btbuf - (char*)cb);
	}

	/* Set current channel number */
	FUNC19 (FUNC12(c->port), c->num & 3);

	/* set receiver A buffer physical address */
	FUNC20 (FUNC1(c->port), (unsigned short) (c->arphys>>16));
	FUNC20 (FUNC0(c->port), (unsigned short) c->arphys);

	/* set receiver B buffer physical address */
	FUNC20 (FUNC7(c->port), (unsigned short) (c->brphys>>16));
	FUNC20 (FUNC6(c->port), (unsigned short) c->brphys);

	/* set transmitter A buffer physical address */
	FUNC20 (FUNC5(c->port), (unsigned short) (c->atphys>>16));
	FUNC20 (FUNC4(c->port), (unsigned short) c->atphys);

	/* set transmitter B buffer physical address */
	FUNC20 (FUNC11(c->port), (unsigned short) (c->btphys>>16));
	FUNC20 (FUNC10(c->port), (unsigned short) c->btphys);

	/* rx */
	command |= CCR_ENRX;
	ier |= IER_RXD;
	if (c->board->dma) {
		mode |= CMR_RXDMA;
		if (c->mode == M_ASYNC)
			ier |= IER_RET;
	}

	/* tx */
	command |= CCR_ENTX;
	ier |= (c->mode == M_ASYNC) ? IER_TXD : (IER_TXD | IER_TXMPTY);
	if (c->board->dma)
		mode |= CMR_TXDMA;

	/* Set mode */
	FUNC19 (FUNC13(c->port), mode | (c->mode == M_ASYNC ? CMR_ASYNC : CMR_HDLC));

	/* Clear and initialize channel */
	FUNC15 (c->port, CCR_CLRCH);
	FUNC15 (c->port, CCR_INITCH | command);
	if (c->mode == M_ASYNC)
		FUNC15 (c->port, CCR_ENTX);

	/* Start receiver */
	rbsz = FUNC16(c);
	FUNC20 (FUNC2(c->port), rbsz);
	FUNC20 (FUNC8(c->port), rbsz);
	FUNC20 (FUNC3(c->port), BSTS_OWN24);
	FUNC20 (FUNC9(c->port), BSTS_OWN24);

	if (c->mode == M_ASYNC)
		ier |= IER_MDM;

	/* Enable interrupts */
	FUNC19 (FUNC14(c->port), ier);

	/* Clear DTR and RTS */
	FUNC17 (c, 0);
	FUNC18 (c, 0);
}