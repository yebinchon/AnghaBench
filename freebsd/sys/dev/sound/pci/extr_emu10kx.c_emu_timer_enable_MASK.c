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
typedef  int uint32_t ;
struct emu_sc_info {scalar_t__* timer; scalar_t__ timerinterval; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  EMU_INTE ; 
 int EMU_INTE_INTERTIMERENB ; 
 int EMU_MAX_IRQ_CONSUMERS ; 
 int /*<<< orphan*/  EMU_TIMER ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct emu_sc_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct emu_sc_info*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int
FUNC5(struct emu_sc_info *sc, int timer, int go)
{
	uint32_t x;
	int ena_int;
	int i;

	if (timer < 0)
		return (-1);

	FUNC0(timer, 0, EMU_MAX_IRQ_CONSUMERS-1);

	FUNC3(&sc->lock);

	if ((go == 1) && (sc->timer[timer] < 0))
		sc->timer[timer] = -sc->timer[timer];
	if ((go == 0) && (sc->timer[timer] > 0))
		sc->timer[timer] = -sc->timer[timer];

	ena_int = 0;
	for (i = 0; i < EMU_MAX_IRQ_CONSUMERS; i++) {
		if (sc->timerinterval > sc->timer[i])
			sc->timerinterval = sc->timer[i];
		if (sc->timer[i] > 0)
			ena_int = 1;
	}

	FUNC2(sc, EMU_TIMER, sc->timerinterval & 0x03ff, 2);

	if (ena_int == 1) {
		x = FUNC1(sc, EMU_INTE, 4);
		x |= EMU_INTE_INTERTIMERENB;
		FUNC2(sc, EMU_INTE, x, 4);
	} else {
		x = FUNC1(sc, EMU_INTE, 4);
		x &= ~EMU_INTE_INTERTIMERENB;
		FUNC2(sc, EMU_INTE, x, 4);
	}
	FUNC4(&sc->lock);
	return (0);
}