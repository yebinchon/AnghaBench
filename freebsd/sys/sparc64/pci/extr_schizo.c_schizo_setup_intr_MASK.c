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
struct schizo_softc {scalar_t__ sc_ign; } ;
struct schizo_icarg {struct schizo_softc* sica_sc; } ;
struct resource {int dummy; } ;
typedef  int /*<<< orphan*/  driver_intr_t ;
typedef  int /*<<< orphan*/  driver_filter_t ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int /*<<< orphan*/ * iv_ic; scalar_t__ iv_icarg; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 scalar_t__ bootverbose ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct resource*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,void**) ; 
 struct schizo_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,size_t,...) ; 
 TYPE_1__* intr_vectors ; 
 size_t FUNC5 (struct resource*) ; 
 int /*<<< orphan*/  schizo_ic ; 
 int FUNC6 (struct schizo_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(device_t dev, device_t child, struct resource *ires,
    int flags, driver_filter_t *filt, driver_intr_t *intr, void *arg,
    void **cookiep)
{
	struct schizo_softc *sc;
	u_long vec;
	int error;

	sc = FUNC3(dev);
	/*
	 * Make sure the vector is fully specified.
	 */
	vec = FUNC5(ires);
	if (FUNC0(vec) != sc->sc_ign) {
		FUNC4(dev, "invalid interrupt vector 0x%lx\n", vec);
		return (EINVAL);
	}

	if (intr_vectors[vec].iv_ic == &schizo_ic) {
		/*
		 * Ensure we use the right softc in case the interrupt
		 * is routed to our companion PBM for some odd reason.
		 */
		sc = ((struct schizo_icarg *)intr_vectors[vec].iv_icarg)->
		    sica_sc;
	} else if (intr_vectors[vec].iv_ic == NULL) {
		/*
		 * Work around broken firmware which misses entries in
		 * the ino-bitmap.
		 */
		error = FUNC6(sc, FUNC1(vec));
		if (error != 0) {
			FUNC4(dev, "could not register interrupt "
			    "controller for vector 0x%lx (%d)\n", vec, error);
			return (error);
		}
		if (bootverbose)
			FUNC4(dev, "belatedly registered as "
			    "interrupt controller for vector 0x%lx\n", vec);
	} else {
		FUNC4(dev,
		    "invalid interrupt controller for vector 0x%lx\n", vec);
		return (EINVAL);
	}
	return (FUNC2(dev, child, ires, flags, filt, intr,
	    arg, cookiep));
}