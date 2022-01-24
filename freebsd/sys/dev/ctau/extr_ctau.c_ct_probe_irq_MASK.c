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
struct TYPE_3__ {int bcr0; int /*<<< orphan*/  port; } ;
typedef  TYPE_1__ ct_board_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int BCR0_HDRUN ; 
 int /*<<< orphan*/  DS_IMR2 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HD_TCNT_0R ; 
 int /*<<< orphan*/  HD_TCONR_0R ; 
 int /*<<< orphan*/  HD_TCSR_0R ; 
 int /*<<< orphan*/  HD_TEPR_0R ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int IER2_RX_TME_0 ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SR2_SEC ; 
 int TCSR_ENABLE ; 
 int TCSR_INTR ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int) ; 
 int* irqmask ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 
 int /*<<< orphan*/  FUNC10 (int,int) ; 

int FUNC11 (ct_board_t *b, int irq)
{
	int mask;

	FUNC9 (0x20, 0x0a);
	mask = FUNC8 (0x20);
	FUNC9 (0xa0, 0x0a);
	mask |= FUNC8 (0xa0) << 8;

	if (irq > 0) {
		FUNC9 (FUNC0(b->port), BCR0_HDRUN | irqmask[irq]);
		FUNC9 (FUNC6(b->port,HD_TEPR_0R), 0);
		FUNC10 (FUNC6(b->port,HD_TCONR_0R), 1);
		FUNC10 (FUNC6(b->port,HD_TCNT_0R), 0);
		FUNC9 (FUNC6(b->port,HD_TCSR_0R), TCSR_ENABLE | TCSR_INTR);
		FUNC9 (FUNC5(b->port), IER2_RX_TME_0);
	} else if (irq < 0) {
		FUNC9 (FUNC0(b->port), BCR0_HDRUN | irqmask[-irq]);
		FUNC9 (FUNC3(b->port), 0);
		FUNC9 (FUNC4(b->port), 0);
		FUNC9 (FUNC5(b->port), 0);
		FUNC9 (FUNC6(b->port,HD_TCSR_0R), 0);
		FUNC7 (FUNC1 (b->port), DS_IMR2, 0);
		FUNC7 (FUNC2 (b->port), DS_IMR2, 0);
		if (-irq > 7) {
			FUNC9 (0xa0, 0x60 | ((-irq) & 7));
			FUNC9 (0x20, 0x62);
		} else
			FUNC9 (0x20, 0x60 | (-irq));
	} else {
		FUNC9 (FUNC0(b->port), b->bcr0);
		FUNC7 (FUNC1 (b->port), DS_IMR2, SR2_SEC);
		FUNC7 (FUNC2 (b->port), DS_IMR2, SR2_SEC);
	}

	return mask;
}