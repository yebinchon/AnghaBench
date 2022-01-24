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
typedef  TYPE_1__* sc_p ;
typedef  int /*<<< orphan*/ * device_t ;
typedef  int /*<<< orphan*/  devclass_t ;
struct TYPE_3__ {int /*<<< orphan*/ * dev; } ;

/* Variables and functions */
 scalar_t__ LOGICALID_PCM ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static device_t
FUNC6(sc_p scp)
{
	int i, units;
	devclass_t devclass;
	device_t dev;

	devclass = FUNC2(scp->dev);
	units = FUNC1(devclass);
	dev = NULL;
	for (i = 0 ; i < units ; i++) {
		dev = FUNC0(devclass, i);
		if (FUNC5(dev) == FUNC5(scp->dev)
		    && FUNC3(dev) == LOGICALID_PCM
		    && FUNC4(dev) == FUNC4(scp->dev))
			break;
	}
	if (i == units)
		return (NULL);

	return (dev);
}