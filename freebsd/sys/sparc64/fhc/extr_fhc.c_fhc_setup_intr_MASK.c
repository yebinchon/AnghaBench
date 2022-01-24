#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u_long ;
struct resource {int dummy; } ;
struct fhc_softc {scalar_t__ sc_ign; } ;
typedef  int /*<<< orphan*/  driver_intr_t ;
typedef  int /*<<< orphan*/  driver_filter_t ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int /*<<< orphan*/ * iv_ic; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (size_t) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct resource*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,void**) ; 
 struct fhc_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  fhc_ic ; 
 TYPE_1__* intr_vectors ; 
 size_t FUNC4 (struct resource*) ; 

__attribute__((used)) static int
FUNC5(device_t bus, device_t child, struct resource *r, int flags,
    driver_filter_t *filt, driver_intr_t *func, void *arg, void **cookiep)
{
	struct fhc_softc *sc;
	u_long vec;

	sc = FUNC2(bus);
	/*
	 * Make sure the vector is fully specified and we registered
	 * our interrupt controller for it.
	 */
	vec = FUNC4(r);
	if (FUNC0(vec) != sc->sc_ign || intr_vectors[vec].iv_ic != &fhc_ic) {
		FUNC3(bus, "invalid interrupt vector 0x%lx\n", vec);
		return (EINVAL);
	}
	return (FUNC1(bus, child, r, flags, filt, func,
	    arg, cookiep));
}