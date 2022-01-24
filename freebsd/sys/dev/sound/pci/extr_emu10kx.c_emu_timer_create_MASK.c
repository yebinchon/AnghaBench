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
struct emu_sc_info {int* timer; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int EMU_MAX_IRQ_CONSUMERS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

int
FUNC2(struct emu_sc_info *sc)
{
	int i, timer;

	timer = -1;

	FUNC0(&sc->lock);
	for (i = 0; i < EMU_MAX_IRQ_CONSUMERS; i++)
		if (sc->timer[i] == 0) {
			sc->timer[i] = -1;	/* disable it */
			timer = i;
			FUNC1(&sc->lock);
			return (timer);
		}
	FUNC1(&sc->lock);

	return (-1);
}