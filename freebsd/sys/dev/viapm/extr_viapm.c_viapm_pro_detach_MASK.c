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
struct viapm_softc {int /*<<< orphan*/  lock; int /*<<< orphan*/  irqres; int /*<<< orphan*/  irqrid; int /*<<< orphan*/  iores; int /*<<< orphan*/  iorid; scalar_t__ smbus; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	struct viapm_softc *viapm = (struct viapm_softc *)FUNC3(dev);

	FUNC0(dev);
	if (viapm->smbus) {
		FUNC2(dev, viapm->smbus);
	}

	FUNC1(dev, SYS_RES_IOPORT, viapm->iorid, viapm->iores);

#ifdef notyet
	bus_release_resource(dev, SYS_RES_IRQ, viapm->irqrid, viapm->irqres);
#endif
	FUNC4(&viapm->lock);

	return 0;
}