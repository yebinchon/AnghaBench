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
struct pwmbus_ivars {int /*<<< orphan*/  pi_channel; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct pwmbus_ivars* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(device_t dev, const char *dname, int dunit)
{
	struct pwmbus_ivars *ivars;
	device_t child;

	child = FUNC1(dev, 0, dname, dunit);

	/*
	 * If there is a channel hint, use it.  Otherwise pi_channel was
	 * initialized to zero, so that's the channel we'll use.
	 */
	ivars = FUNC0(child);
	FUNC2(dname, dunit, "channel", &ivars->pi_channel);
}