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
typedef  int /*<<< orphan*/  type ;
struct smu_softc {struct smu_fan* sc_fans; } ;
struct TYPE_2__ {char min_rpm; char max_rpm; char zone; char default_rpm; char* name; } ;
struct smu_fan {scalar_t__ type; char reg; int /*<<< orphan*/  rpm; int /*<<< orphan*/  setpoint; TYPE_1__ fan; scalar_t__ old_style; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  cell_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,char*,char*,int) ; 
 scalar_t__ SMU_FAN_PWM ; 
 scalar_t__ SMU_FAN_RPM ; 
 struct smu_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct smu_fan*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct smu_fan*) ; 
 scalar_t__ FUNC4 (char*,char*) ; 

__attribute__((used)) static void
FUNC5(device_t dev, phandle_t child, int id)
{
	struct smu_fan *fan;
	struct smu_softc *sc;
	char type[32];

	sc = FUNC1(dev);
	fan = &sc->sc_fans[id];

	FUNC0(child, "device_type", type, sizeof(type));
	/* We have either RPM or PWM controlled fans. */
	if (FUNC4(type, "fan-rpm-control") == 0)
		fan->type = SMU_FAN_RPM;
	else
		fan->type = SMU_FAN_PWM;

	fan->dev = dev;
	fan->old_style = 0;
	FUNC0(child, "reg", &fan->reg,
		   sizeof(cell_t));
	FUNC0(child, "min-value", &fan->fan.min_rpm,
		   sizeof(int));
	FUNC0(child, "max-value", &fan->fan.max_rpm,
		   sizeof(int));
	FUNC0(child, "zone", &fan->fan.zone,
		   sizeof(int));

	if (FUNC0(child, "unmanaged-value",
		       &fan->fan.default_rpm,
		       sizeof(int)) != sizeof(int))
		fan->fan.default_rpm = fan->fan.max_rpm;

	FUNC0(child, "location", fan->fan.name,
		   sizeof(fan->fan.name));

	if (fan->type == SMU_FAN_RPM)
		fan->setpoint = FUNC3(fan);
	else
		FUNC2(fan, &fan->setpoint, &fan->rpm);
}