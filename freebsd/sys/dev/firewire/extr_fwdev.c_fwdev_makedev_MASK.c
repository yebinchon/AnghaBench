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
struct firewire_softc {struct cdev* dev; TYPE_1__* fc; } ;
struct cdev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  bdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FWMEM_FLAG ; 
 int /*<<< orphan*/  GID_OPERATOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UID_ROOT ; 
 int /*<<< orphan*/  FUNC1 (struct cdev*,struct cdev*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  firewire_cdevsw ; 
 void* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cdev*,char*,int) ; 

int
FUNC5(struct firewire_softc *sc)
{
	int err = 0;

	struct cdev *d;
	int unit;

	unit = FUNC2(sc->fc->bdev);
	sc->dev = FUNC3(&firewire_cdevsw, FUNC0(0, unit, 0),
	    UID_ROOT, GID_OPERATOR, 0660, "fw%d.%d", unit, 0);
	d = FUNC3(&firewire_cdevsw, FUNC0(FWMEM_FLAG, unit, 0),
	    UID_ROOT, GID_OPERATOR, 0660, "fwmem%d.%d", unit, 0);
	FUNC1(sc->dev, d);
	FUNC4(sc->dev, "fw%d", unit);
	FUNC4(d, "fwmem%d", unit);

	return (err);
}