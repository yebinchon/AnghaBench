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
struct smu_cmd {int /*<<< orphan*/  data; int /*<<< orphan*/  len; int /*<<< orphan*/  cmd; } ;
typedef  void* device_t ;

/* Variables and functions */
 int RB_HALT ; 
 int /*<<< orphan*/  SMU_POWER ; 
 int /*<<< orphan*/  FUNC0 (void*,struct smu_cmd*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(void *xdev, int howto)
{
	device_t smu = xdev;
	struct smu_cmd cmd;

	cmd.cmd = SMU_POWER;
	if (howto & RB_HALT)
		FUNC1(cmd.data, "SHUTDOWN");
	else
		FUNC1(cmd.data, "RESTART");

	cmd.len = FUNC2(cmd.data);

	FUNC0(smu, &cmd, 1);

	for (;;);
}