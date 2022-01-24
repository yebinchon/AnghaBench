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
struct pio_softc {int /*<<< orphan*/  dev; int /*<<< orphan*/  ih; int /*<<< orphan*/ * res; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int INTR_MPSAFE ; 
 int INTR_TYPE_BIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,void*,void*,int /*<<< orphan*/ *) ; 
 struct pio_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC3(device_t dev, void *intr_handler, void *ih_user)
{
	struct pio_softc *sc;

	sc = FUNC1(dev);

	/* Setup interrupt handlers */
	if (FUNC0(sc->dev, sc->res[1], INTR_TYPE_BIO | INTR_MPSAFE,
		NULL, intr_handler, ih_user, &sc->ih)) {
		FUNC2(sc->dev, "Unable to setup intr\n");
		return (1);
	}

	return (0);
}