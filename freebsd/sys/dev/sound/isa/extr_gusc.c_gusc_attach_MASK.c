#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* sc_p ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_7__ {int /*<<< orphan*/ * irq; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENXIO ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gusc_intr ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,void**) ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	sc_p scp;
	void *ih;

	scp = FUNC3(dev);

	FUNC2(scp, sizeof(*scp));

	scp->dev = dev;
	if (FUNC0(scp)) {
		FUNC4(scp);
		return (ENXIO);
	}

	if (scp->irq != NULL)
		FUNC5(dev, scp->irq, 0, gusc_intr, scp, &ih);
	FUNC1(dev);

	return (0);
}