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
struct agg_info {int playchns; int active; int /*<<< orphan*/  rch; scalar_t__ pch; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (struct agg_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct agg_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct agg_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 struct agg_info* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  powerstate_init ; 

__attribute__((used)) static int
FUNC8(device_t dev)
{
	int i;
	struct agg_info *ess = FUNC7(dev);

	for (i = 0; i < ess->playchns; i++)
		if (ess->active & (1 << i))
			FUNC4(ess->pch + i);
	if (ess->active & (1 << i))
		FUNC3(&ess->rch);

	FUNC0(ess);
	if (!ess->active)
		FUNC1(ess, powerstate_init);
	FUNC2(ess);

	if (FUNC6(dev)) {
		FUNC5(dev, "unable to reinitialize the mixer\n");
		return ENXIO;
	}

	return 0;
}