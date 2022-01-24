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
typedef  int /*<<< orphan*/  cx_board_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC2 (cx_board_t *b, int irq)
{
	int mask, busy, cnt;

	/* Clear pending irq, if any. */
	FUNC1 (b, -irq);
	FUNC0 (100);
	for (cnt=0; cnt<5; ++cnt) {
		/* Get the mask of pending irqs, assuming they are busy.
		 * Activate the adapter on given irq. */
		busy = FUNC1 (b, irq);
		FUNC0 (100);

		/* Get the mask of active irqs.
		 * Deactivate our irq. */
		mask = FUNC1 (b, -irq);
		FUNC0 (100);
		if ((mask & ~busy) == 1 << irq) {
			FUNC1 (b, 0);
			/* printf ("cx%d: irq %d ok, mask=0x%04x, busy=0x%04x\n",
				b->num, irq, mask, busy); */
			return 1;
		}
	}
	/* printf ("cx%d: irq %d not functional, mask=0x%04x, busy=0x%04x\n",
		b->num, irq, mask, busy); */
	FUNC1 (b, 0);
	return 0;
}