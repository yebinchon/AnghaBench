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
struct ess_info {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (struct ess_info*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct ess_info* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
	struct ess_info *sc;

	sc = FUNC3(dev);

	if (FUNC1(sc)) {
		FUNC0(dev, "unable to reset DSP at resume\n");
		return ENXIO;
	}

	if (FUNC2(dev)) {
		FUNC0(dev, "unable to reinitialize mixer at resume\n");
		return ENXIO;
	}

	return 0;
}