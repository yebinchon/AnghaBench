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
struct TYPE_2__ {int /*<<< orphan*/  max_rpm; int /*<<< orphan*/  min_rpm; } ;
struct smu_fan {int old_style; int reg; int setpoint; TYPE_1__ fan; int /*<<< orphan*/  dev; } ;
struct smu_cmd {int len; int* data; int /*<<< orphan*/  cmd; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EIO ; 
 int EWOULDBLOCK ; 
 int /*<<< orphan*/  SMU_FAN ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct smu_cmd*,int) ; 

__attribute__((used)) static int
FUNC3(struct smu_fan *fan, int pwm)
{
	device_t smu = fan->dev;
	struct smu_cmd cmd;
	int error;

	cmd.cmd = SMU_FAN;
	error = EIO;

	/* Clamp to allowed range */
	pwm = FUNC0(fan->fan.min_rpm, pwm);
	pwm = FUNC1(fan->fan.max_rpm, pwm);

	/*
	 * Apple has two fan control mechanisms. We can't distinguish
	 * them except by seeing if the new one fails. If the new one
	 * fails, use the old one.
	 */
	
	if (!fan->old_style) {
		cmd.len = 4;
		cmd.data[0] = 0x30;
		cmd.data[1] = fan->reg;
		cmd.data[2] = (pwm >> 8) & 0xff;
		cmd.data[3] = pwm & 0xff;
	
		error = FUNC2(smu, &cmd, 1);
		if (error && error != EWOULDBLOCK)
			fan->old_style = 1;
	}

	if (fan->old_style) {
		cmd.len = 14;
		cmd.data[0] = 0x10; /* PWM fan. */
		cmd.data[1] = 1 << fan->reg;
		cmd.data[2 + 2*fan->reg] = (pwm >> 8) & 0xff;
		cmd.data[3 + 2*fan->reg] = pwm & 0xff;
		error = FUNC2(smu, &cmd, 1);
	}

	if (error == 0)
		fan->setpoint = pwm;

	return (error);
}