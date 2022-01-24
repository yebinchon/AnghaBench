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
struct opal_i2c_softc {int /*<<< orphan*/ * iicbus; int /*<<< orphan*/  opal_id; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct opal_i2c_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 struct opal_i2c_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(device_t dev)
{
	struct opal_i2c_softc *sc;
	int len;

	sc = FUNC5(dev);
	sc->dev = dev;

	len = FUNC2(FUNC7(dev), "ibm,opal-id");
	if (len <= 0)
		return (EINVAL);
	FUNC1(FUNC7(dev), "ibm,opal-id", &sc->opal_id, len);

	if ((sc->iicbus = FUNC4(dev, "iicbus", -1)) == NULL) {
		FUNC6(dev, "could not allocate iicbus instance\n");
		return (EINVAL);
	}

	FUNC0(sc);

	return (FUNC3(dev));
}