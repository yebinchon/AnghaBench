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
struct ipmi_softc {int ipmi_io_type; int ipmi_io_spacing; int ipmi_io_rid; int ipmi_irq_rid; void* ipmi_irq_res; int /*<<< orphan*/ ** ipmi_io_res; int /*<<< orphan*/  ipmi_dev; } ;
struct ipmi_get_info {int iface_type; scalar_t__ address; int offset; scalar_t__ irq; scalar_t__ io_mode; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
#define  BT_MODE 130 
 int ENXIO ; 
#define  KCS_MODE 129 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
#define  SMIC_MODE 128 
 int SYS_RES_IOPORT ; 
 int SYS_RES_IRQ ; 
 int SYS_RES_MEMORY ; 
 void* FUNC0 (int /*<<< orphan*/ ,int,int*,scalar_t__,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct ipmi_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct ipmi_get_info*) ; 
 int FUNC7 (struct ipmi_softc*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ipmi_get_info*) ; 
 int FUNC10 (struct ipmi_softc*) ; 

__attribute__((used)) static int
FUNC11(device_t dev)
{
	struct ipmi_softc *sc = FUNC3(dev);
	struct ipmi_get_info info;
	const char *mode;
	int count, error, i, type;

	/*
	 * Pull info out of the SMBIOS table.  If that doesn't work, use
	 * hints to enumerate a device.
	 */
	if (!FUNC9(&info) &&
	    !FUNC6(dev, &info))
		return (ENXIO);

	switch (info.iface_type) {
	case KCS_MODE:
		count = 2;
		mode = "KCS";
		break;
	case SMIC_MODE:
		count = 3;
		mode = "SMIC";
		break;
	case BT_MODE:
		FUNC4(dev, "BT mode is unsupported\n");
		return (ENXIO);
	default:
		return (ENXIO);
	}
	error = 0;
	sc->ipmi_dev = dev;

	FUNC4(dev, "%s mode found at %s 0x%jx alignment 0x%x on %s\n",
	    mode, info.io_mode ? "io" : "mem",
	    (uintmax_t)info.address, info.offset,
	    FUNC1(FUNC2(dev)));
	if (info.io_mode)
		type = SYS_RES_IOPORT;
	else
		type = SYS_RES_MEMORY;

	sc->ipmi_io_type = type;
	sc->ipmi_io_spacing = info.offset;
	if (info.offset == 1) {
		sc->ipmi_io_rid = 0;
		sc->ipmi_io_res[0] = FUNC0(dev, type,
		    &sc->ipmi_io_rid, info.address, info.address + count - 1,
		    count, RF_ACTIVE);
		if (sc->ipmi_io_res[0] == NULL) {
			FUNC4(dev, "couldn't configure I/O resource\n");
			return (ENXIO);
		}
	} else {
		for (i = 0; i < count; i++) {
			sc->ipmi_io_rid = i;
			sc->ipmi_io_res[i] = FUNC0(dev, type,
			    &sc->ipmi_io_rid, info.address + i * info.offset,
			    info.address + i * info.offset, 1, RF_ACTIVE);
			if (sc->ipmi_io_res[i] == NULL) {
				FUNC4(dev,
				    "couldn't configure I/O resource\n");
				error = ENXIO;
				sc->ipmi_io_rid = 0;
				goto bad;
			}
		}
		sc->ipmi_io_rid = 0;
	}

	if (info.irq != 0) {
		sc->ipmi_irq_rid = 0;
		sc->ipmi_irq_res = FUNC0(dev, SYS_RES_IRQ,
		    &sc->ipmi_irq_rid, info.irq, info.irq, 1,
		    RF_SHAREABLE | RF_ACTIVE);
	}

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

	error = FUNC5(dev);
	if (error)
		goto bad;

	return (0);
bad:
	FUNC8(dev);
	return (error);
}