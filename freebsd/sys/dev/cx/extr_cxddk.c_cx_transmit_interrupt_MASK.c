#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ mode; int obytes; int /*<<< orphan*/  port; int /*<<< orphan*/  opkts; int /*<<< orphan*/ * attach; int /*<<< orphan*/  (* call_on_tx ) (TYPE_1__*,int /*<<< orphan*/ ,int) ;int /*<<< orphan*/  oerrs; int /*<<< orphan*/  (* call_on_err ) (TYPE_1__*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  tintr; } ;
typedef  TYPE_1__ cx_chan_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned char BSTS_OWN24 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CX_UNDERRUN ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int IER_RXD ; 
 int IER_TXD ; 
 int IER_TXMPTY ; 
 scalar_t__ M_ASYNC ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 unsigned char TIS_BB ; 
 unsigned char TIS_EOBUF ; 
 unsigned char TIS_TXDATA ; 
 unsigned char TIS_TXEMPTY ; 
 unsigned char TIS_UNDERRUN ; 
 unsigned char FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC12 (cx_chan_t *c)
{
	unsigned char tisr;
	int len = 0;

	++c->tintr;
	tisr = FUNC6 (FUNC5(c->port));
	if (tisr & TIS_UNDERRUN) {	/* Transmit underrun error */
		if (c->call_on_err)
			c->call_on_err (c, CX_UNDERRUN);
		++c->oerrs;
	} else if (tisr & (TIS_EOBUF | TIS_TXEMPTY | TIS_TXDATA)) {
		/* Call processing function */
		if (tisr & TIS_BB) {
			len = FUNC7(FUNC2(c->port));
			if (c->call_on_tx)
				c->call_on_tx (c, c->attach[1], len);
		} else {
			len = FUNC7(FUNC0(c->port));
			if (c->call_on_tx)
				c->call_on_tx (c, c->attach[0], len);
		}
		if (c->mode != M_ASYNC && len != 0)
			++c->opkts;
		c->obytes += len;
	}

	/* Enable TXMPTY interrupt,
	 * to catch the case when the second buffer is empty. */
	if (c->mode != M_ASYNC) {
		if ((FUNC6 (FUNC1(c->port)) & BSTS_OWN24) &&
		   (FUNC6 (FUNC3(c->port)) & BSTS_OWN24)) {
			FUNC8 (FUNC4(c->port), IER_RXD | IER_TXD | IER_TXMPTY);
		} else
			FUNC8 (FUNC4(c->port), IER_RXD | IER_TXD);
	}
}