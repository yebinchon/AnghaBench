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
struct TYPE_7__ {TYPE_1__* board; scalar_t__ num; int /*<<< orphan*/  CMD; int /*<<< orphan*/  IE0; int /*<<< orphan*/  IE1; int /*<<< orphan*/ * rdphys; int /*<<< orphan*/ * rphys; scalar_t__ rn; int /*<<< orphan*/  ST3; } ;
typedef  TYPE_2__ ct_chan_t ;
struct TYPE_6__ {int /*<<< orphan*/  port; } ;

/* Variables and functions */
 unsigned char CMD_RX_DISABLE ; 
 int /*<<< orphan*/  DMABUFSZ ; 
 unsigned char IE0_RX_INTE ; 
 unsigned char IE1_CDCDE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned char IER0_RX_INTE_0 ; 
 unsigned char IER0_RX_INTE_1 ; 
 unsigned char IER0_RX_RDYE_0 ; 
 unsigned char IER0_RX_RDYE_1 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned char IER1_RX_DMERE_0 ; 
 unsigned char IER1_RX_DMERE_1 ; 
 unsigned char IER1_RX_DME_0 ; 
 unsigned char IER1_RX_DME_1 ; 
 int NBUF ; 
 unsigned char ST3_RX_ENABLED ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned char FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned char) ; 

void FUNC6 (ct_chan_t *c, int on)
{
	unsigned char st3, ier0, ier1;

	st3 = FUNC4 (c->ST3);
	/* enable or disable receiver */
	if (on && ! (st3 & ST3_RX_ENABLED)) {
		c->rn = 0;
		FUNC3 (c, 1 , c->rphys[0], DMABUFSZ, c->rdphys[0],
			c->rdphys[NBUF-1]);
		/* enable status interrupt */
		FUNC5 (c->IE1, FUNC4 (c->IE1) | IE1_CDCDE);
		FUNC5 (c->IE0, FUNC4 (c->IE0) | IE0_RX_INTE);
		ier0 = FUNC4 (FUNC0(c->board->port));
		ier0 |= c->num ? IER0_RX_INTE_1 : IER0_RX_INTE_0;
		FUNC5 (FUNC0(c->board->port), ier0);
		FUNC2 (c, 1);
	} else if (! on && (st3 & ST3_RX_ENABLED)) {
		FUNC2 (c, 0);
		FUNC5 (c->CMD, CMD_RX_DISABLE);

		ier0 = FUNC4 (FUNC0(c->board->port));
		ier0 &= c->num ? ~(IER0_RX_INTE_1 | IER0_RX_RDYE_1) :
			~(IER0_RX_INTE_0 | IER0_RX_RDYE_0);
		FUNC5 (FUNC0(c->board->port), ier0);

		ier1 = FUNC4 (FUNC1(c->board->port));
		ier1 &= c->num ? ~(IER1_RX_DMERE_1 | IER1_RX_DME_1) :
			~(IER1_RX_DMERE_0 | IER1_RX_DME_0);
		FUNC5 (FUNC1(c->board->port), ier1);
	}

}