#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct emu_sc_info {TYPE_1__* cdev; int /*<<< orphan*/  dev; int /*<<< orphan*/  emu10kx_lock; } ;
struct TYPE_2__ {struct emu_sc_info* si_drv1; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  GID_WHEEL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  UID_ROOT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  emu10kx_cdevsw ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct emu_sc_info *sc)
{
	int unit;

	FUNC4(&sc->emu10kx_lock, FUNC1(sc->dev), "kxdevlock", 0);
	unit = FUNC2(sc->dev);

	sc->cdev = FUNC3(&emu10kx_cdevsw, FUNC0(unit), UID_ROOT, GID_WHEEL, 0640, "emu10kx%d", unit);
	if (sc->cdev != NULL) {
		sc->cdev->si_drv1 = sc;
		return (0);
	}
	return (ENXIO);
}