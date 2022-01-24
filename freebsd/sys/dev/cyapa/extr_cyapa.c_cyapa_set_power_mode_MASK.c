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
typedef  int uint8_t ;
struct cyapa_softc {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_POWER_MODE ; 
 int /*<<< orphan*/  IIC_WAIT ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct cyapa_softc *sc, int mode)
{
	uint8_t data;
	device_t bus;
	int error;

	bus = FUNC2(sc->dev);
	error = FUNC4(bus, sc->dev, IIC_WAIT);
	if (error == 0) {
		error = FUNC0(sc->dev, CMD_POWER_MODE,
		    &data, 1);
		data = (data & ~0xFC) | mode;
		if (error == 0) {
			error = FUNC1(sc->dev, CMD_POWER_MODE,
			    &data, 1);
		}
		FUNC3(bus, sc->dev);
	}
}