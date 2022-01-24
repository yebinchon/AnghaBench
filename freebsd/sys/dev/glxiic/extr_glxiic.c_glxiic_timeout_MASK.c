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
typedef  void* uint8_t ;
struct glxiic_softc {size_t state; int /*<<< orphan*/  addr; int /*<<< orphan*/  iicbus; void* error; } ;
struct TYPE_2__ {scalar_t__ master; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,size_t) ; 
 int /*<<< orphan*/  GLXIIC_STATE_IDLE ; 
 int /*<<< orphan*/  FUNC1 (struct glxiic_softc*) ; 
 void* IIC_ETIMEOUT ; 
 int /*<<< orphan*/  IIC_UNKNOWN ; 
 int /*<<< orphan*/  INTR_ERROR ; 
 int /*<<< orphan*/  FUNC2 (struct glxiic_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct glxiic_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct glxiic_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* glxiic_state_table ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**) ; 

__attribute__((used)) static void
FUNC6(void *arg)
{
	struct glxiic_softc *sc;
	uint8_t error;

	sc = (struct glxiic_softc *)arg;

	FUNC0("timeout in state %d", sc->state);

	if (glxiic_state_table[sc->state].master) {
		sc->error = IIC_ETIMEOUT;
		FUNC1(sc);
	} else {
		error = IIC_ETIMEOUT;
		FUNC5(sc->iicbus, INTR_ERROR, &error);
	}

	FUNC3(sc);
	FUNC4(sc, IIC_UNKNOWN, sc->addr);
	FUNC2(sc, GLXIIC_STATE_IDLE);
}