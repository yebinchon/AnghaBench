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
struct emu_sc_info {scalar_t__* timer; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 scalar_t__ EMU_MAX_IRQ_CONSUMERS ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct emu_sc_info*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int
FUNC4(struct emu_sc_info *sc, int timer)
{
	if (timer < 0)
		return (-1);

	FUNC0(timer, 0, EMU_MAX_IRQ_CONSUMERS-1);

	FUNC1(sc, timer, 0);

	FUNC2(&sc->lock);
	if (sc->timer[timer] != 0)
		sc->timer[timer] = 0;
	FUNC3(&sc->lock);

	return (timer);
}