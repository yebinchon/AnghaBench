#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int32_t ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_3__ {int /*<<< orphan*/  tc_frequency; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  piix_freq ; 
 TYPE_1__ piix_timecounter ; 
 int piix_timecounter_address ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC2(device_t dev)
{
	u_int32_t d;

	d = FUNC0(dev, 0x40, 4);
	piix_timecounter_address = (d & 0xffc0) + 8;
	piix_timecounter.tc_frequency = piix_freq;
	FUNC1(&piix_timecounter);
	return (0);
}