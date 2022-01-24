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
struct an_softc {int /*<<< orphan*/  irq_handle; int /*<<< orphan*/  irq_res; int /*<<< orphan*/  an_dev; int /*<<< orphan*/  irq_rid; int /*<<< orphan*/  port_rid; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  INTR_TYPE_NET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct an_softc*,int) ; 
 int /*<<< orphan*/  an_intr ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct an_softc*,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 struct an_softc* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(device_t dev)
{
	struct an_softc *sc = FUNC6(dev);
	int flags = FUNC5(dev);
	int error;

	FUNC1(dev, sc->port_rid, 1);
	FUNC0(dev, sc->irq_rid, 0);

	sc->an_dev = dev;

	error = FUNC2(sc, flags);
	if (error) {
		FUNC3(dev);
		return (error);
	}

	error = FUNC4(dev, sc->irq_res, INTR_TYPE_NET,
			       NULL, an_intr, sc, &sc->irq_handle);
	if (error) {
		FUNC3(dev);
		return (error);
	}
	return (0);
}