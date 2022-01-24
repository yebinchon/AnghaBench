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
typedef  int /*<<< orphan*/  uintmax_t ;
struct ipmi_softc {int ipmi_io_rid; int ipmi_io_type; int ipmi_io_spacing; int ipmi_irq_rid; void* ipmi_irq_res; int /*<<< orphan*/  ipmi_dev; int /*<<< orphan*/ ** ipmi_io_res; } ;
struct ipmi_get_info {int address; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  ACPI_HANDLE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
#define  BT_MODE 131 
 int ENXIO ; 
#define  KCS_MODE 130 
 int MAX_RES ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
#define  SMIC_MODE 129 
#define  SSIF_MODE 128 
 int SYS_RES_IOPORT ; 
 int SYS_RES_IRQ ; 
 int SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ ,int,int*,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 struct ipmi_softc* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (struct ipmi_softc*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (struct ipmi_softc*) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC16(device_t dev)
{
	ACPI_HANDLE devh;
	const char *mode;
	struct ipmi_get_info info;
	struct ipmi_softc *sc = FUNC9(dev);
	int count, error, flags, i, type;
	int interface_type = 0, interface_version = 0;

	error = 0;
	devh = FUNC4(dev);
	if (FUNC0(FUNC3(devh, "_IFT", &interface_type)))
		return (ENXIO);

	if (FUNC0(FUNC3(devh, "_SRV", &interface_version)))
		return (ENXIO);

	switch (interface_type) {
	case KCS_MODE:
		count = 2;
		mode = "KCS";
		break;
	case SMIC_MODE:
		count = 3;
		mode = "SMIC";
		break;
	case BT_MODE:
		FUNC10(dev, "BT interface not supported\n");
		return (ENXIO);
	case SSIF_MODE:
		if (FUNC0(FUNC3(devh, "_ADR", &flags)))
			return (ENXIO);
		info.address = flags;
		FUNC10(dev, "SSIF interface not supported on ACPI\n");
		return (0);
	default:
		return (ENXIO);
	}

	if (FUNC6(dev, SYS_RES_IOPORT, 0, NULL, NULL) == 0)
		type = SYS_RES_IOPORT;
	else if (FUNC6(dev, SYS_RES_MEMORY, 0, NULL, NULL) == 0)
		type = SYS_RES_MEMORY;
	else {
		FUNC10(dev, "unknown resource type\n");
		return (ENXIO);
	}

	sc->ipmi_io_rid = 0;
	sc->ipmi_io_res[0] = FUNC5(dev, type,
	    &sc->ipmi_io_rid, RF_ACTIVE);
	sc->ipmi_io_type = type;
	sc->ipmi_io_spacing = 1;
	if (sc->ipmi_io_res[0] == NULL) {
		FUNC10(dev, "couldn't configure I/O resource\n");
		return (ENXIO);
	}

	/* If we have multiple resources, allocate up to MAX_RES. */
	for (i = 1; i < MAX_RES; i++) {
		sc->ipmi_io_rid = i;
		sc->ipmi_io_res[i] = FUNC5(dev, type,
		    &sc->ipmi_io_rid, RF_ACTIVE);
		if (sc->ipmi_io_res[i] == NULL)
			break;
	}
	sc->ipmi_io_rid = 0;

	/* If we have multiple resources, make sure we have enough of them. */
	if (sc->ipmi_io_res[1] != NULL && sc->ipmi_io_res[count - 1] == NULL) {
		FUNC10(dev, "too few I/O resources\n");
		error = ENXIO;
		goto bad;
	}

	FUNC10(dev, "%s mode found at %s 0x%jx on %s\n",
	    mode, type == SYS_RES_IOPORT ? "io" : "mem",
	    (uintmax_t)FUNC15(sc->ipmi_io_res[0]),
	    FUNC7(FUNC8(dev)));

	sc->ipmi_dev = dev;

	/*
	 * Setup an interrupt if we have an interrupt resource.  We
	 * don't support GPE interrupts via _GPE yet.
	 */
	sc->ipmi_irq_rid = 0;
	sc->ipmi_irq_res = FUNC5(dev, SYS_RES_IRQ,
	    &sc->ipmi_irq_rid, RF_SHAREABLE | RF_ACTIVE);

	/* Warn if _GPE exists. */
	if (FUNC1(FUNC2(devh, "_GPE", NULL, NULL)))
		FUNC10(dev, "_GPE support not implemented\n");

	/*
	 * We assume an alignment of 1 byte as currently the IPMI spec
	 * doesn't provide any way to determine the alignment via ACPI.
	 */
	switch (interface_type) {
	case KCS_MODE:
		error = FUNC12(sc);
		if (error)
			goto bad;
		break;
	case SMIC_MODE:
		error = FUNC14(sc);
		if (error)
			goto bad;
		break;
	}
	error = FUNC11(dev);
	if (error)
		goto bad;

	return (0);
bad:
	FUNC13(dev);
	return (error);
}