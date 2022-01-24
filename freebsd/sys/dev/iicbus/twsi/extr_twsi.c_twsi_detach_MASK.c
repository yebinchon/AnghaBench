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
struct twsi_softc {int /*<<< orphan*/  mutex; int /*<<< orphan*/ * res; int /*<<< orphan*/ * intrhand; int /*<<< orphan*/  dev; int /*<<< orphan*/ * iicbus; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct twsi_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  res_spec ; 

int
FUNC6(device_t dev)
{
	struct twsi_softc *sc;
	int rv;

	sc = FUNC4(dev);

	if ((rv = FUNC0(dev)) != 0)
		return (rv);

	if (sc->iicbus != NULL)
		if ((rv = FUNC3(dev, sc->iicbus)) != 0)
			return (rv);

	if (sc->intrhand != NULL)
		FUNC2(sc->dev, sc->res[1], sc->intrhand);

	FUNC1(dev, res_spec, sc->res);

	FUNC5(&sc->mutex);
	return (0);
}