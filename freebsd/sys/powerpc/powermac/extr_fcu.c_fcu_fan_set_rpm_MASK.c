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
typedef  int /*<<< orphan*/  uint8_t ;
struct fcu_softc {int /*<<< orphan*/  sc_addr; int /*<<< orphan*/  sc_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  max_rpm; int /*<<< orphan*/  min_rpm; } ;
struct fcu_fan {scalar_t__ type; int setpoint; int /*<<< orphan*/  dev; int /*<<< orphan*/  id; TYPE_1__ fan; } ;

/* Variables and functions */
 int EIO ; 
 int ENXIO ; 
 scalar_t__ FCU_FAN_RPM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct fcu_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int fcu_rpm_shift ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC6(struct fcu_fan *fan, int rpm)
{
	uint8_t reg;
	struct fcu_softc *sc;
	unsigned char buf[2];

	sc = FUNC1(fan->dev);

	/* Clamp to allowed range */
	rpm = FUNC4(fan->fan.min_rpm, rpm);
	rpm = FUNC5(fan->fan.max_rpm, rpm);

	if (fan->type == FCU_FAN_RPM) {
		reg = FUNC0(fan->id);
		fan->setpoint = rpm;
	} else {
		FUNC2(fan->dev, "Unknown fan type: %d\n", fan->type);
		return (ENXIO);
	}

	buf[0] = rpm >> (8 - fcu_rpm_shift);
	buf[1] = rpm << fcu_rpm_shift;

	if (FUNC3(sc->sc_dev, sc->sc_addr, reg, buf, 2) < 0)
		return (EIO);

	return (0);
}