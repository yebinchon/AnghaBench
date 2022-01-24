#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  port_t ;
struct TYPE_3__ {int /*<<< orphan*/  port; } ;
typedef  TYPE_1__ cx_board_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int BCR0_NORESET ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int BSR_VAR_MASK ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int CCR_CLRCH ; 
 int CCR_ENTX ; 
 int CCR_INITCH ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int CMR_HDLC ; 
 int CRONYX_400 ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int IER_TXMPTY ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int) ; 
 int* irqmask ; 
 int /*<<< orphan*/  FUNC12 (int,int) ; 

int FUNC13 (cx_board_t *b, int irq)
{
	int mask, rev;
        port_t port;

	rev = FUNC11 (FUNC1(b->port));
        port = ((rev & BSR_VAR_MASK) != CRONYX_400) ? FUNC4(b->port) : FUNC5(b->port);

	FUNC12 (0x20, 0x0a);
	mask = FUNC11 (0x20);
	FUNC12 (0xa0, 0x0a);
	mask |= FUNC11 (0xa0) << 8;

	if (irq > 0) {
		FUNC12 (FUNC0(b->port), BCR0_NORESET | irqmask[irq]);
		FUNC12 (FUNC2(port), 0);
		FUNC9 (port, CCR_CLRCH);
		FUNC12 (FUNC3(port), CMR_HDLC);
		FUNC12 (FUNC8(port), 0);
		FUNC12 (FUNC7(port), 1);
		FUNC9 (port, CCR_INITCH | CCR_ENTX);
		FUNC12 (FUNC6(port), IER_TXMPTY);
	} else if (irq < 0) {
		FUNC10 (port);
		if (-irq > 7) {
			FUNC12 (0xa0, 0x60 | ((-irq) & 7));
			FUNC12 (0x20, 0x62);
		} else
			FUNC12 (0x20, 0x60 | (-irq));
	} else
		FUNC12 (FUNC0(b->port), 0);
	return mask;
}