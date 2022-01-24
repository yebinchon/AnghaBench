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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(device_t dev, device_t child)
{
	struct pwmbus_ivars *ivars;

	ivars = FUNC0(child);
	if (ivars != NULL)
		FUNC1(dev, "<unknown> on channel %u\n",
		    ivars->pi_channel);

	return;
}