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
struct sec_softc {int /*<<< orphan*/  sc_dev; } ;
struct resource {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct resource*) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct resource*,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*,int) ; 

__attribute__((used)) static void
FUNC3(struct sec_softc *sc, struct resource *ires, void *ihand,
    int irid, const char *iname)
{
	int error;

	if (ires == NULL)
		return;

	error = FUNC1(sc->sc_dev, ires, ihand);
	if (error)
		FUNC2(sc->sc_dev, "bus_teardown_intr() failed for %s"
		    " IRQ, error %d\n", iname, error);

	error = FUNC0(sc->sc_dev, SYS_RES_IRQ, irid, ires);
	if (error)
		FUNC2(sc->sc_dev, "bus_release_resource() failed for %s"
		    " IRQ, error %d\n", iname, error);
}