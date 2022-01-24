#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct cardbus_softc {int /*<<< orphan*/  sc_dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  func; } ;
struct TYPE_6__ {TYPE_1__ cfg; } ;
struct cardbus_devinfo {TYPE_3__* sc_cisdev; TYPE_2__ pci; int /*<<< orphan*/  sc_cis; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_7__ {struct cardbus_devinfo* si_drv1; } ;

/* Variables and functions */
 int /*<<< orphan*/  cardbus_cdevsw ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*,int) ; 

int
FUNC4(struct cardbus_softc *sc, struct cardbus_devinfo *devi,
    device_t parent, device_t child)
{
	uint32_t minor;
	int unit;

	FUNC0(parent, child, &devi->sc_cis);
	minor = (FUNC1(sc->sc_dev) << 8) + devi->pci.cfg.func;
	unit = FUNC1(sc->sc_dev);
	devi->sc_cisdev = FUNC2(&cardbus_cdevsw, minor, 0, 0, 0666,
	    "cardbus%d.%d.cis", unit, devi->pci.cfg.func);
	if (devi->pci.cfg.func == 0)
		FUNC3(devi->sc_cisdev, "cardbus%d.cis", unit);
	devi->sc_cisdev->si_drv1 = devi;
	return (0);
}