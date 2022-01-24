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
struct rman {int dummy; } ;
struct resource {int dummy; } ;
struct chipc_softc {int dummy; } ;
struct chipc_region {scalar_t__ cr_addr; scalar_t__ cr_end; } ;
typedef  scalar_t__ rman_res_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct resource*,scalar_t__,scalar_t__) ; 
 struct chipc_region* FUNC1 (struct chipc_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct rman* FUNC2 (struct chipc_softc*,int) ; 
 struct chipc_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct resource*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct resource*) ; 
 int /*<<< orphan*/  FUNC6 (struct resource*) ; 
 int /*<<< orphan*/  FUNC7 (struct resource*,struct rman*) ; 

__attribute__((used)) static int
FUNC8(device_t dev, device_t child, int type,
    struct resource *r, rman_res_t start, rman_res_t end)
{
	struct chipc_softc		*sc;
	struct chipc_region		*cr;
	struct rman			*rm;
	
	sc = FUNC3(dev);

	/* Handled by parent bus? */
	rm = FUNC2(sc, type);
	if (rm == NULL || !FUNC7(r, rm)) {
		return (FUNC0(dev, child, type, r, start,
		    end));
	}

	/* The range is limited to the existing region mapping */
	cr = FUNC1(sc, FUNC6(r), FUNC5(r));
	if (cr == NULL)
		return (EINVAL);
	
	if (end <= start)
		return (EINVAL);

	if (start < cr->cr_addr || end > cr->cr_end)
		return (EINVAL);

	/* Range falls within the existing region */
	return (FUNC4(r, start, end));
}