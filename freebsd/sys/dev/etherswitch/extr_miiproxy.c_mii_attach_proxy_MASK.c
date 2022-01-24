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
struct miiproxy_softc {int /*<<< orphan*/ * mdio; int /*<<< orphan*/ * proxy; int /*<<< orphan*/ * parent; } ;
typedef  int /*<<< orphan*/ * device_t ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 scalar_t__ bootverbose ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 struct miiproxy_softc* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,...) ; 
 TYPE_1__ miiproxy_driver ; 
 int /*<<< orphan*/  miiproxy_rendezvous_callback ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char const**) ; 

device_t
FUNC10(device_t dev)
{
	struct miiproxy_softc *sc;
	int		error;
	const char	*name;
	device_t	miiproxy;

	if (FUNC9(FUNC2(dev),
	    FUNC5(dev), "mdio", &name) != 0) {
	    	if (bootverbose)
			FUNC7("mii_attach_proxy: not attaching, no mdio"
			    " device hint for %s\n", FUNC3(dev));
		return (NULL);
	}

	miiproxy = FUNC1(dev, miiproxy_driver.name, -1);
	error = FUNC0(dev);
	if (error != 0) {
		FUNC6(dev, "can't attach miiproxy\n");
		return (NULL);
	}
	sc = FUNC4(miiproxy);
	sc->parent = dev;
	sc->proxy = miiproxy;
	if (FUNC8(miiproxy, name, miiproxy_rendezvous_callback) != 0) {
		FUNC6(dev, "can't attach proxy\n");
		return (NULL);
	}
	FUNC6(miiproxy, "attached to target %s\n", FUNC3(sc->mdio));
	return (miiproxy);
}