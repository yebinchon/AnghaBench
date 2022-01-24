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
struct ipmi_softc {scalar_t__ ipmi_irq_rid; int /*<<< orphan*/  ipmi_irq_res; int /*<<< orphan*/  ipmi_dev; } ;
struct ipmi_get_info {scalar_t__ iface_type; scalar_t__ irq; scalar_t__ address; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 scalar_t__ SSIF_MODE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,scalar_t__,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct ipmi_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ipmi_get_info*) ; 
 int FUNC8 (struct ipmi_softc*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int
FUNC9(device_t dev)
{
	struct ipmi_softc *sc = FUNC3(dev);
	struct ipmi_get_info info;
	int error;

	/* This should never fail. */
	if (!FUNC7(&info))
		return (ENXIO);

	if (info.iface_type != SSIF_MODE) {
		FUNC4(dev, "No SSIF IPMI interface found\n");
		return (ENXIO);
	}

	sc->ipmi_dev = dev;

	if (info.irq != 0) {
		sc->ipmi_irq_rid = 0;
		sc->ipmi_irq_res = FUNC0(dev, SYS_RES_IRQ,
		    &sc->ipmi_irq_rid, info.irq, info.irq, 1,
		    RF_SHAREABLE | RF_ACTIVE);
	}

	FUNC4(dev, "SSIF mode found at address 0x%llx on %s\n",
	    (long long)info.address, FUNC1(FUNC2(dev)));
	error = FUNC8(sc, FUNC2(dev), info.address);
	if (error)
		goto bad;

	error = FUNC5(dev);
	if (error)
		goto bad;

	return (0);
bad:
	FUNC6(dev);
	return (error);
}