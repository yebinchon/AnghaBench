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
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,struct resource*) ; 
 struct rman* FUNC1 (struct chipc_softc*,int) ; 
 int FUNC2 (struct chipc_softc*,int /*<<< orphan*/ ,int,int,struct resource*,int) ; 
 struct chipc_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct resource*,struct rman*) ; 

__attribute__((used)) static int
FUNC5(device_t dev, device_t child, int type, int rid,
    struct resource *r)
{
	struct chipc_softc	*sc;
	struct rman		*rm;

	sc = FUNC3(dev);

	/* Delegate non-locally managed resources to parent */
	rm = FUNC1(sc, type);
	if (rm == NULL || !FUNC4(r, rm)) {
		return (FUNC0(dev, child, type, rid,
		    r));
	}

	/* Try activating the chipc region-based resource */
	return (FUNC2(sc, child, type, rid, r, true));
}