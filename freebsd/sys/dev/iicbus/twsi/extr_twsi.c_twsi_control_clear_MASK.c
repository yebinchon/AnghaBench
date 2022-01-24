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
typedef  int uint32_t ;
struct twsi_softc {int /*<<< orphan*/  reg_control; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int TWSI_CONTROL_START ; 
 int TWSI_CONTROL_STOP ; 
 int FUNC0 (struct twsi_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct twsi_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static __inline void
FUNC3(struct twsi_softc *sc, uint32_t mask)
{
	uint32_t val;

	val = FUNC0(sc, sc->reg_control);
	FUNC2(sc->dev, "read val=%x\n", val);
	val &= ~(TWSI_CONTROL_STOP | TWSI_CONTROL_START);
	val &= ~mask;
	FUNC2(sc->dev, "write val=%x\n", val);
	FUNC1(sc, sc->reg_control, val);
}