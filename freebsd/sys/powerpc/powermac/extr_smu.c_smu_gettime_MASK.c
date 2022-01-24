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
struct timespec {int dummy; } ;
struct smu_cmd {int len; int /*<<< orphan*/ * data; int /*<<< orphan*/  cmd; } ;
struct clocktime {void* year; void* mon; void* day; void* dow; void* hour; void* min; void* sec; scalar_t__ nsec; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  SMU_RTC ; 
 int /*<<< orphan*/  SMU_RTC_GET ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct clocktime*,struct timespec*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct smu_cmd*,int) ; 

__attribute__((used)) static int
FUNC3(device_t dev, struct timespec *ts)
{
	struct smu_cmd cmd;
	struct clocktime ct;

	cmd.cmd = SMU_RTC;
	cmd.len = 1;
	cmd.data[0] = SMU_RTC_GET;

	if (FUNC2(dev, &cmd, 1) != 0)
		return (ENXIO);

	ct.nsec	= 0;
	ct.sec	= FUNC0(cmd.data[0]);
	ct.min	= FUNC0(cmd.data[1]);
	ct.hour	= FUNC0(cmd.data[2]);
	ct.dow	= FUNC0(cmd.data[3]);
	ct.day	= FUNC0(cmd.data[4]);
	ct.mon	= FUNC0(cmd.data[5]);
	ct.year	= FUNC0(cmd.data[6]) + 2000;

	return (FUNC1(&ct, ts));
}