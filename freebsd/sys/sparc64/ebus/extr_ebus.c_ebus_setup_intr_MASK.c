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
struct ebus_softc {int sc_flags; scalar_t__ sc_ign; } ;
typedef  int /*<<< orphan*/  driver_intr_t ;
typedef  int /*<<< orphan*/  driver_filter_t ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int /*<<< orphan*/ * iv_ic; } ;

/* Variables and functions */
 int EBUS_PCI ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (size_t) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct resource*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,void**) ; 
 struct ebus_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,size_t) ; 
 TYPE_1__* intr_vectors ; 
 size_t FUNC4 (struct resource*) ; 

__attribute__((used)) static int
FUNC5(device_t dev, device_t child, struct resource *ires,
    int flags, driver_filter_t *filt, driver_intr_t *intr, void *arg,
    void **cookiep)
{
#ifndef SUN4V
	struct ebus_softc *sc;
	u_long vec;

	sc = FUNC2(dev);
	if ((sc->sc_flags & EBUS_PCI) == 0) {
		/*
		 * Make sure the vector is fully specified.  This isn't
		 * necessarily the case with the PCI variant.
		 */
		vec = FUNC4(ires);
		if (FUNC0(vec) != sc->sc_ign) {
			FUNC3(dev,
			    "invalid interrupt vector 0x%lx\n", vec);
			return (EINVAL);
		}

		/*
		 * As we rely on the interrupt controllers of the
		 * accompanying PCI-Express bridge ensure at least
		 * something is registered for this vector.
		 */
		if (intr_vectors[vec].iv_ic == NULL) {
			FUNC3(dev,
			    "invalid interrupt controller for vector 0x%lx\n",
			    vec);
			return (EINVAL);
		}
	}
#endif
	return (FUNC1(dev, child, ires, flags, filt, intr,
	    arg, cookiep));
}