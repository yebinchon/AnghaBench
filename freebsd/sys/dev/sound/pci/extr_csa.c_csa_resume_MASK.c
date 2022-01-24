#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* sc_p ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  csa_res ;
struct TYPE_4__ {int /*<<< orphan*/  res; } ;

/* Variables and functions */
 int ENXIO ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	csa_res *resp;
	sc_p scp;

	scp = FUNC4(dev);
	resp = &scp->res;

	/* Initialize the chip. */
	if (FUNC2(scp))
		return (ENXIO);

	/* Reset the Processor. */
	FUNC3(resp);

	/* Download the Processor Image to the processor. */
	if (FUNC1(resp))
		return (ENXIO);

	return (FUNC0(dev));
}