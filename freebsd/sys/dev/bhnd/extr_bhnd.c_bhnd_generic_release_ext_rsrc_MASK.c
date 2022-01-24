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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int u_int ;
struct bhnd_softc {int dummy; } ;
struct bhnd_core_clkctl {int dummy; } ;
typedef  scalar_t__ device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bhnd_core_clkctl*) ; 
 int BHND_CCS_ERSRC_MAX ; 
 int /*<<< orphan*/  BHND_CCS_ERSRC_REQ ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bhnd_core_clkctl*) ; 
 int /*<<< orphan*/  FUNC3 (struct bhnd_core_clkctl*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bhnd_core_clkctl*) ; 
 int EINVAL ; 
 struct bhnd_core_clkctl* FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 struct bhnd_softc* FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

int
FUNC9(device_t dev, device_t child, u_int rsrc)
{
	struct bhnd_softc	*sc;
	struct bhnd_core_clkctl	*clkctl;
	uint32_t		 mask;

	sc = FUNC7(dev);

	if (FUNC6(child) != dev)
		return (EINVAL);

	if ((clkctl = FUNC5(child)) == NULL)
		FUNC8("no active PMU allocation");


	FUNC0(clkctl);

	sc = FUNC7(dev);

	if (rsrc > BHND_CCS_ERSRC_MAX)
		return (EINVAL);

	mask = FUNC1((1<<rsrc), BHND_CCS_ERSRC_REQ);

	/* Clear request */
	FUNC2(clkctl);
	FUNC3(clkctl, 0x0, mask);
	FUNC4(clkctl);

	return (0);
}