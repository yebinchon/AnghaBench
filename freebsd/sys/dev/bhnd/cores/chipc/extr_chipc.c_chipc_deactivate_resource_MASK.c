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
struct chipc_region {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,struct resource*) ; 
 struct chipc_region* FUNC1 (struct chipc_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct rman* FUNC2 (struct chipc_softc*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct chipc_softc*,struct chipc_region*,int /*<<< orphan*/ ) ; 
 struct chipc_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct resource*) ; 
 int /*<<< orphan*/  FUNC6 (struct resource*) ; 
 int /*<<< orphan*/  FUNC7 (struct resource*) ; 
 int /*<<< orphan*/  FUNC8 (struct resource*,struct rman*) ; 

__attribute__((used)) static int
FUNC9(device_t dev, device_t child, int type,
    int rid, struct resource *r)
{
	struct chipc_softc	*sc;
	struct chipc_region	*cr;
	struct rman		*rm;
	int			 error;

	sc = FUNC4(dev);

	/* Handled by parent bus? */
	rm = FUNC2(sc, type);
	if (rm == NULL || !FUNC8(r, rm)) {
		return (FUNC0(dev, child, type, rid,
		    r));
	}

	/* Find the corresponding chipc region */
	cr = FUNC1(sc, FUNC7(r), FUNC6(r));
	if (cr == NULL)
		return (EINVAL);

	/* Mark inactive */
	if ((error = FUNC5(r)))
		return (error);

	/* Drop associated RF_ACTIVE reference */
	FUNC3(sc, cr, RF_ACTIVE);

	return (0);
}