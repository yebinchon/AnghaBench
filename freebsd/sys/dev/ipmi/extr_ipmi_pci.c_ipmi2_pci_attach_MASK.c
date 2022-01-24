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
struct ipmi_softc {int ipmi_io_type; int ipmi_io_spacing; scalar_t__ ipmi_irq_rid; void* ipmi_irq_res; int /*<<< orphan*/ ** ipmi_io_res; scalar_t__ ipmi_io_rid; int /*<<< orphan*/  ipmi_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int BT_MODE ; 
 int ENXIO ; 
#define  KCS_MODE 132 
#define  PCIP_SERIALBUS_IPMI_BT 131 
#define  PCIP_SERIALBUS_IPMI_KCS 130 
#define  PCIP_SERIALBUS_IPMI_SMIC 129 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
#define  SMIC_MODE 128 
 int SYS_RES_IOPORT ; 
 int SYS_RES_IRQ ; 
 int SYS_RES_MEMORY ; 
 void* FUNC2 (int /*<<< orphan*/ ,int,scalar_t__*,int) ; 
 struct ipmi_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct ipmi_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct ipmi_softc*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (struct ipmi_softc*) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__,int) ; 

__attribute__((used)) static int
FUNC12(device_t dev)
{
	struct ipmi_softc *sc;
	int error, iface, type;

	sc = FUNC3(dev);
	sc->ipmi_dev = dev;

	/* Interface is determined by progif. */
	switch (FUNC10(dev)) {
	case PCIP_SERIALBUS_IPMI_SMIC:
		iface = SMIC_MODE;
		break;
	case PCIP_SERIALBUS_IPMI_KCS:
		iface = KCS_MODE;
		break;
	case PCIP_SERIALBUS_IPMI_BT:
		iface = BT_MODE;
		FUNC4(dev, "BT interface unsupported\n");
		return (ENXIO);
	default:
		FUNC4(dev, "Unsupported interface: %d\n",
		    FUNC10(dev));
		return (ENXIO);
	}

	/* Check the BAR to determine our resource type. */
	sc->ipmi_io_rid = FUNC0(0);
	if (FUNC1(FUNC11(dev, FUNC0(0), 4)))
		type = SYS_RES_IOPORT;
	else
		type = SYS_RES_MEMORY;
	sc->ipmi_io_type = type;
	sc->ipmi_io_spacing = 1;
	sc->ipmi_io_res[0] = FUNC2(dev, type,
	    &sc->ipmi_io_rid, RF_ACTIVE);
	if (sc->ipmi_io_res[0] == NULL) {
		FUNC4(dev, "couldn't map ports/memory\n");
		return (ENXIO);
	}

	sc->ipmi_irq_rid = 0;
	sc->ipmi_irq_res = FUNC2(dev, SYS_RES_IRQ,
	    &sc->ipmi_irq_rid, RF_SHAREABLE | RF_ACTIVE);

	switch (iface) {
	case KCS_MODE:
		FUNC4(dev, "using KSC interface\n");

		/*
		 * We have to examine the resource directly to determine the
		 * alignment.
		 */
		if (!FUNC7(sc)) {
			FUNC4(dev, "Unable to determine alignment\n");
			error = ENXIO;
			goto bad;
		}

		error = FUNC6(sc);
		if (error)
			goto bad;
		break;
	case SMIC_MODE:
		FUNC4(dev, "using SMIC interface\n");

		error = FUNC9(sc);
		if (error)
			goto bad;
		break;
	}
	error = FUNC5(dev);
	if (error)
		goto bad;

	return (0);
bad:
	FUNC8(dev);
	return (error);
}