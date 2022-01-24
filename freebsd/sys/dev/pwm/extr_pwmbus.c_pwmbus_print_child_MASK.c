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
struct pwmbus_ivars {int pi_channel; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct pwmbus_ivars* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char*,int) ; 

__attribute__((used)) static int
FUNC4(device_t dev, device_t child)
{
	struct pwmbus_ivars *ivars;
	int rv;

	ivars = FUNC2(child);

	rv  = FUNC1(dev, child);
	rv += FUNC3(" channel %u", ivars->pi_channel);
	rv += FUNC0(dev, child);

	return (rv);
}