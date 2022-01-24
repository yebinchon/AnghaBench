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
struct emu_sc_info {int /*<<< orphan*/  emu10kx_lock; int /*<<< orphan*/ * cdev; scalar_t__ emu10kx_isopen; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(struct emu_sc_info *sc)
{
	FUNC2(&sc->emu10kx_lock);
	if (sc->emu10kx_isopen) {
		FUNC3(&sc->emu10kx_lock);
		return (EBUSY);
	}
	if (sc->cdev)
		FUNC0(sc->cdev);
	sc->cdev = NULL;

	FUNC1(&sc->emu10kx_lock);
	return (0);
}