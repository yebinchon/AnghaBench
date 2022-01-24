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
typedef  int /*<<< orphan*/  u_int ;
struct bhnd_core_clkctl {int /*<<< orphan*/  cc_pmu_dev; } ;
typedef  scalar_t__ device_t ;
typedef  int /*<<< orphan*/  bhnd_clock ;

/* Variables and functions */
 int EINVAL ; 
 struct bhnd_core_clkctl* FUNC0 (scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

int
FUNC4(device_t dev, device_t child, bhnd_clock clock,
    u_int *freq)
{
	struct bhnd_core_clkctl *clkctl;

	if (FUNC2(child) != dev)
		return (EINVAL);

	if ((clkctl = FUNC0(child)) == NULL)
		FUNC3("no active PMU allocation");

	return (FUNC1(clkctl->cc_pmu_dev, clock, freq));
}