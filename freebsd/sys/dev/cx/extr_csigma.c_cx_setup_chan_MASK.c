#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int num; scalar_t__ mode; int arphys; int brphys; int atphys; int btphys; scalar_t__ rts; scalar_t__ dtr; int /*<<< orphan*/  port; TYPE_1__* board; } ;
typedef  TYPE_2__ cx_chan_t ;
struct TYPE_5__ {int num; } ;

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
 int /*<<< orphan*/  CCR_CLRCH ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int MSV_TXCOUT ; 
 scalar_t__ M_ASYNC ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,unsigned short) ; 

void FUNC16 (cx_chan_t *c)
{
	/* set current channel number */
	FUNC14 (FUNC8(c->port), c->num & 3);

	/* reset the channel */
	FUNC12 (c->port, CCR_CLRCH);

	/* set LIVR to contain the board and channel numbers */
	FUNC14 (FUNC9(c->port), c->board->num << 6 | c->num << 2);

	/* clear DTR, RTS, set TXCout/DTR pin */
	FUNC14 (FUNC11(c->port), 0);
	FUNC14 (FUNC10(c->port), c->mode==M_ASYNC ? 0 : MSV_TXCOUT);

	/* set receiver A buffer physical address */
	FUNC15 (FUNC1(c->port), (unsigned short) (c->arphys>>16));
	FUNC15 (FUNC0(c->port), (unsigned short) c->arphys);

	/* set receiver B buffer physical address */
	FUNC15 (FUNC5(c->port), (unsigned short) (c->brphys>>16));
	FUNC15 (FUNC4(c->port), (unsigned short) c->brphys);

	/* set transmitter A buffer physical address */
	FUNC15 (FUNC3(c->port), (unsigned short) (c->atphys>>16));
	FUNC15 (FUNC2(c->port), (unsigned short) c->atphys);

	/* set transmitter B buffer physical address */
	FUNC15 (FUNC7(c->port), (unsigned short) (c->btphys>>16));
	FUNC15 (FUNC6(c->port), (unsigned short) c->btphys);

	c->dtr = 0;
	c->rts = 0;

	FUNC13 (c);
}