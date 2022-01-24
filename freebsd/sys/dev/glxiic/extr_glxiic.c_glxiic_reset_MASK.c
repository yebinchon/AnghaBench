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
typedef  int /*<<< orphan*/  u_char ;
struct glxiic_softc {size_t state; int /*<<< orphan*/  error; int /*<<< orphan*/  addr; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {scalar_t__ master; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct glxiic_softc*) ; 
 int /*<<< orphan*/  GLXIIC_STATE_IDLE ; 
 int /*<<< orphan*/  FUNC1 (struct glxiic_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct glxiic_softc*) ; 
 int /*<<< orphan*/  IIC_ESTATUS ; 
 int IIC_NOERR ; 
 struct glxiic_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct glxiic_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct glxiic_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct glxiic_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* glxiic_state_table ; 

__attribute__((used)) static int
FUNC7(device_t dev, u_char speed, u_char addr, u_char *oldaddr)
{
	struct glxiic_softc *sc;

	sc = FUNC3(dev);

	FUNC0(sc);

	if (oldaddr != NULL)
		*oldaddr = sc->addr;
	sc->addr = addr;

	/* A disable/enable cycle resets the controller. */
	FUNC5(sc);
	FUNC6(sc, speed, addr);

	if (glxiic_state_table[sc->state].master) {
		sc->error = IIC_ESTATUS;
		FUNC2(sc);
	}
	FUNC4(sc, GLXIIC_STATE_IDLE);

	FUNC1(sc);

	return (IIC_NOERR);
}