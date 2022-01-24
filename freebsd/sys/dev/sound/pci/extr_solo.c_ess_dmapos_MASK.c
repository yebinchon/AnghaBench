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
struct ess_info {int* dmasz; int /*<<< orphan*/  io; int /*<<< orphan*/  vc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct ess_info*,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int) ; 

__attribute__((used)) static int
FUNC5(struct ess_info *sc, int ch)
{
	int p = 0, i = 0, j = 0;

	FUNC1(ch == 1 || ch == 2, ("bad ch"));
	if (ch == 1) {

/*
 * During recording, this register is known to give back
 * garbage if it's not quiescent while being read. That's
 * why we spl, stop the DMA, and try over and over until
 * adjacent reads are "close", in the right order and not
 * bigger than is otherwise possible.
 */
		FUNC2(sc, ch, 0);
		FUNC0(20);
		do {
			FUNC0(10);
			if (j > 1)
				FUNC4("DMA count reg bogus: %04x & %04x\n",
					i, p);
			i = FUNC3(sc->vc, 0x4, 2) + 1;
			p = FUNC3(sc->vc, 0x4, 2) + 1;
		} while ((p > sc->dmasz[ch - 1] || i < p || (p - i) > 0x8) && j++ < 1000);
		FUNC2(sc, ch, 1);
	}
	else if (ch == 2)
		p = FUNC3(sc->io, 0x4, 2);
	return sc->dmasz[ch - 1] - p;
}