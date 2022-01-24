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
struct ipmi_softc {int ipmi_io_type; scalar_t__ ipmi_irq_rid; void* ipmi_irq_res; int /*<<< orphan*/ ** ipmi_io_res; int /*<<< orphan*/  ipmi_io_spacing; scalar_t__ ipmi_io_rid; int /*<<< orphan*/  ipmi_dev; } ;
struct ipmi_get_info {int iface_type; int /*<<< orphan*/  offset; scalar_t__ io_mode; scalar_t__ address; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
#define  BT_MODE 130 
 int ENXIO ; 
#define  KCS_MODE 129 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
#define  SMIC_MODE 128 
 int SYS_RES_IOPORT ; 
 int SYS_RES_IRQ ; 
 int SYS_RES_MEMORY ; 
 void* FUNC1 (int /*<<< orphan*/ ,int,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct ipmi_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct ipmi_softc*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ipmi_get_info*) ; 
 int FUNC10 (struct ipmi_softc*) ; 

__attribute__((used)) static int
FUNC11(device_t dev)
{
	struct ipmi_softc *sc = FUNC4(dev);
	struct ipmi_get_info info;
	const char *mode;
	int error, type;

	/* Look for an IPMI entry in the SMBIOS table. */
	if (!FUNC9(&info))
		return (ENXIO);

	sc->ipmi_dev = dev;

	switch (info.iface_type) {
	case KCS_MODE:
		mode = "KCS";
		break;
	case SMIC_MODE:
		mode = "SMIC";
		break;
	case BT_MODE:
		FUNC5(dev, "BT mode is unsupported\n");
		return (ENXIO);
	default:
		FUNC5(dev, "No IPMI interface found\n");
		return (ENXIO);
	}

	FUNC5(dev, "%s mode found at %s 0x%jx alignment 0x%x on %s\n",
	    mode, info.io_mode ? "io" : "mem",
	    (uintmax_t)info.address, info.offset,
	    FUNC2(FUNC3(dev)));
	if (info.io_mode)
		type = SYS_RES_IOPORT;
	else
		type = SYS_RES_MEMORY;

	sc->ipmi_io_rid = FUNC0(0);
	sc->ipmi_io_res[0] = FUNC1(dev, type,
	    &sc->ipmi_io_rid, RF_ACTIVE);
	sc->ipmi_io_type = type;
	sc->ipmi_io_spacing = info.offset;

	if (sc->ipmi_io_res[0] == NULL) {
		FUNC5(dev, "couldn't configure pci io res\n");
		return (ENXIO);
	}

	sc->ipmi_irq_rid = 0;
	sc->ipmi_irq_res = FUNC1(dev, SYS_RES_IRQ,
	    &sc->ipmi_irq_rid, RF_SHAREABLE | RF_ACTIVE);

	switch (info.iface_type) {
	case KCS_MODE:
		error = FUNC7(sc);
		if (error)
			goto bad;
		break;
	case SMIC_MODE:
		error = FUNC10(sc);
		if (error)
			goto bad;
		break;
	}
	error = FUNC6(dev);
	if (error)
		goto bad;

	return (0);
bad:
	FUNC8(dev);
	return (error);
}