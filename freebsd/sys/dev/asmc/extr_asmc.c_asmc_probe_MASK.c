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
struct asmc_model {int /*<<< orphan*/  smc_desc; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int ENXIO ; 
 int /*<<< orphan*/  asmc_ids ; 
 struct asmc_model* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	struct asmc_model *model;
	int rv;

	if (FUNC5("asmc", 0))
		return (ENXIO);
	rv = FUNC0(FUNC2(dev), dev, asmc_ids, NULL);
	if (rv > 0)
		return (rv);

	model = FUNC1(dev);
	if (!model) {
		FUNC3(dev, "model not recognized\n");
		return (ENXIO);
	}
	FUNC4(dev, model->smc_desc);

	return (rv);
}