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
struct tsec_softc {int /*<<< orphan*/  dev; } ;
struct resource {int dummy; } ;
typedef  int /*<<< orphan*/  driver_intr_t ;

/* Variables and functions */
 int ENXIO ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_NET ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 struct resource* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct resource*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct resource*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct tsec_softc*,void**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const*) ; 

__attribute__((used)) static int
FUNC4(struct tsec_softc *sc, struct resource **ires, void **ihand,
    int *irid, driver_intr_t handler, const char *iname)
{
	int error;

	*ires = FUNC0(sc->dev, SYS_RES_IRQ, irid, RF_ACTIVE);
	if (*ires == NULL) {
		FUNC3(sc->dev, "could not allocate %s IRQ\n", iname);
		return (ENXIO);
	}
	error = FUNC2(sc->dev, *ires, INTR_TYPE_NET | INTR_MPSAFE,
	    NULL, handler, sc, ihand);
	if (error) {
		FUNC3(sc->dev, "failed to set up %s IRQ\n", iname);
		if (FUNC1(sc->dev, SYS_RES_IRQ, *irid, *ires))
			FUNC3(sc->dev, "could not release %s IRQ\n", iname);
		*ires = NULL;
		return (error);
	}
	return (0);
}