#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ port_t ;
typedef  int /*<<< orphan*/  cx_board_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  BCR0_NORESET ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int BSR2X_OSC_33 ; 
 int BSR2X_VAR_MASK ; 
 int BSR_NOCHAIN ; 
 int BSR_OSC_MASK ; 
 int BSR_VAR_MASK ; 
 int CRONYX_22 ; 
 int CRONYX_24 ; 
 int REVCL31_MAX ; 
 int REVCL31_MIN ; 
 int FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,scalar_t__,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,scalar_t__,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,scalar_t__,int,int,int,int,int,int,int,int,int) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC9 (cx_board_t *b, int num, port_t port, int irq, int dma)
{
	int gfrcr, rev, chain, mod = 0, rev2 = 0, mod2 = 0;

	rev = FUNC7 (FUNC1(port));
	chain = ! (rev & BSR_NOCHAIN);
	if (FUNC6 (port)) {
		FUNC4 (b, num, port, irq, dma, chain);
		return;
	}
	if ((rev & BSR2X_VAR_MASK) == CRONYX_22 ||
	    (rev & BSR2X_VAR_MASK) == CRONYX_24) {
		FUNC3 (b, num, port, irq, dma,
			(rev & BSR2X_VAR_MASK), (rev & BSR2X_OSC_33));
		return;
        }

	FUNC8 (FUNC0(port), BCR0_NORESET);
	if (chain)
		FUNC8 (FUNC0(port+0x10), BCR0_NORESET);
	gfrcr = FUNC2 (port, rev);
	if (gfrcr >= REVCL31_MIN && gfrcr <= REVCL31_MAX)
		mod = 1;
	if (chain) {
		rev2 = FUNC7 (FUNC1(port+0x10));
		gfrcr = FUNC2 (port+0x10, rev2);
		if (gfrcr >= REVCL31_MIN && gfrcr <= REVCL31_MAX)
			mod2 = 1;
		FUNC8 (FUNC0(port+0x10), 0);
	}
	FUNC8 (FUNC0(port), 0);

	FUNC5 (b, num, port, irq, dma, chain,
		(rev & BSR_VAR_MASK), (rev & BSR_OSC_MASK), mod,
		(rev2 & BSR_VAR_MASK), (rev2 & BSR_OSC_MASK), mod2);
}