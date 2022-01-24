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
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  UNIN_HWINIT_STATE ; 
 int /*<<< orphan*/  UNIN_PWR_MASK ; 
 int /*<<< orphan*/  UNIN_PWR_MGMT ; 
 int /*<<< orphan*/  UNIN_PWR_NORMAL ; 
 int /*<<< orphan*/  UNIN_RUNNING ; 
 int /*<<< orphan*/ * unin_chip ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC2(device_t dev)
{

	if (dev == NULL)
		dev = unin_chip;
	FUNC1(dev, UNIN_PWR_MGMT, UNIN_PWR_NORMAL, UNIN_PWR_MASK);
	FUNC0(10);
	FUNC1(dev, UNIN_HWINIT_STATE, UNIN_RUNNING, 0);
	FUNC0(100);

	return (0);
}