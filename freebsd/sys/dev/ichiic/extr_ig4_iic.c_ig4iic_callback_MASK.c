#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int poll; int /*<<< orphan*/  call_lock; } ;
typedef  TYPE_1__ ig4iic_softc_t ;
typedef  int /*<<< orphan*/  device_t ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int IIC_EBUSBSY ; 
#define  IIC_RELEASE_BUS 129 
#define  IIC_REQUEST_BUS 128 
 int IIC_WAIT ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int
FUNC5(device_t dev, int index, caddr_t data)
{
	ig4iic_softc_t *sc = FUNC0(dev);
	int error = 0;
	int how;

	switch (index) {
	case IIC_REQUEST_BUS:
		/* force polling if ig4iic is requested with IIC_DONTWAIT */
		how = *(int *)data;
		if ((how & IIC_WAIT) == 0) {
			if (FUNC2(&sc->call_lock) == 0)
				error = IIC_EBUSBSY;
			else
				sc->poll = true;
		} else
			FUNC4(&sc->call_lock);
		break;

	case IIC_RELEASE_BUS:
		sc->poll = false;
		FUNC3(&sc->call_lock);
		break;

	default:
		error = FUNC1(EINVAL);
	}

	return (error);
}