#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u_char ;
struct TYPE_4__ {int last_slave; int slave_valid; int /*<<< orphan*/  call_lock; } ;
typedef  TYPE_1__ ig4iic_softc_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int IIC_UNKNOWN ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

int
FUNC5(device_t dev, u_char speed, u_char addr, u_char *oldaddr)
{
	ig4iic_softc_t *sc = FUNC0(dev);
	bool allocated;

	allocated = FUNC4(&sc->call_lock) != 0;
	if (!allocated)
		FUNC3(&sc->call_lock);

	/* TODO handle speed configuration? */
	if (oldaddr != NULL)
		*oldaddr = sc->last_slave << 1;
	FUNC1(sc, addr >> 1);
	if (addr == IIC_UNKNOWN)
		sc->slave_valid = false;

	if (!allocated)
		FUNC2(&sc->call_lock);
	return (0);
}