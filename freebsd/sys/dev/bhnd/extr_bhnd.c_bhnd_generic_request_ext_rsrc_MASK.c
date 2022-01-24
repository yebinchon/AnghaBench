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
 int /*<<< orphan*/  BHND_CCS_ERSRC_STS ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bhnd_core_clkctl*) ; 
 int /*<<< orphan*/  FUNC3 (struct bhnd_core_clkctl*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bhnd_core_clkctl*) ; 
 int EINVAL ; 
 int FUNC5 (struct bhnd_core_clkctl*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct bhnd_core_clkctl* FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 struct bhnd_softc* FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

int
FUNC10(device_t dev, device_t child, u_int rsrc)
{
	struct bhnd_softc	*sc;
	struct bhnd_core_clkctl	*clkctl;
	uint32_t		 req;
	uint32_t		 avail;
	int			 error;

	sc = FUNC8(dev);

	if (FUNC7(child) != dev)
		return (EINVAL);

	if ((clkctl = FUNC6(child)) == NULL)
		FUNC9("no active PMU allocation");

	FUNC0(clkctl);

	sc = FUNC8(dev);

	if (rsrc > BHND_CCS_ERSRC_MAX)
		return (EINVAL);

	req = FUNC1((1<<rsrc), BHND_CCS_ERSRC_REQ);
	avail = FUNC1((1<<rsrc), BHND_CCS_ERSRC_STS);

	FUNC2(clkctl);

	/* Write request */
	FUNC3(clkctl, req, req);

	/* Wait for resource availability */
	error = FUNC5(clkctl, avail, avail);

	FUNC4(clkctl);

	return (error);
}