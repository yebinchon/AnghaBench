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
typedef  int u_int ;
struct TYPE_2__ {int addr; int /*<<< orphan*/  rl; } ;
struct ofw_iicbus_devinfo {TYPE_1__ opd_dinfo; int /*<<< orphan*/  opd_obdinfo; } ;
struct iicbus_softc {int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; } ;
typedef  int ssize_t ;
typedef  scalar_t__ phandle_t ;
typedef  int pcell_t ;
typedef  int /*<<< orphan*/  paddr ;
typedef  int /*<<< orphan*/  freq ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  compat ;

/* Variables and functions */
 struct iicbus_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IIC_FASTEST ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (scalar_t__,char*,int*,int) ; 
 int FUNC4 (scalar_t__,char*,char*,int) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct ofw_iicbus_devinfo*) ; 
 int /*<<< orphan*/  FUNC12 (struct ofw_iicbus_devinfo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct ofw_iicbus_devinfo* FUNC15 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC21 (char*) ; 
 scalar_t__ FUNC22 (char*,char*,int) ; 

__attribute__((used)) static int
FUNC23(device_t dev)
{
	struct iicbus_softc *sc = FUNC0(dev);
	struct ofw_iicbus_devinfo *dinfo;
	phandle_t child, node, root;
	pcell_t freq, paddr;
	device_t childdev;
	ssize_t compatlen;
	char compat[255];
	char *curstr;
	u_int iic_addr_8bit = 0;

	sc->dev = dev;
	FUNC16(&sc->lock, "iicbus", NULL, MTX_DEF);

	/*
	 * If there is a clock-frequency property for the device node, use it as
	 * the starting value for the bus frequency.  Then call the common
	 * routine that handles the tunable/sysctl which allows the FDT value to
	 * be overridden by the user.
	 */
	node = FUNC18(dev);
	freq = 0;
	FUNC3(node, "clock-frequency", &freq, sizeof(freq));
	FUNC13(dev, freq);
	
	FUNC14(dev, IIC_FASTEST, 0, NULL);

	FUNC9(dev);
	FUNC7(dev);

	/*
	 * Check if we're running on a PowerMac, needed for the I2C
	 * address below.
	 */
	root = FUNC5(0);
	compatlen = FUNC4(root, "compatible", compat,
				sizeof(compat));
	if (compatlen != -1) {
	    for (curstr = compat; curstr < compat + compatlen;
		curstr += FUNC21(curstr) + 1) {
		if (FUNC22(curstr, "MacRISC", 7) == 0)
		    iic_addr_8bit = 1;
	    }
	}

	/*
	 * Attach those children represented in the device tree.
	 */
	for (child = FUNC1(node); child != 0; child = FUNC5(child)) {
		/*
		 * Try to get the I2C address first from the i2c-address
		 * property, then try the reg property.  It moves around
		 * on different systems.
		 */
		if (FUNC3(child, "i2c-address", &paddr,
		    sizeof(paddr)) == -1)
			if (FUNC3(child, "reg", &paddr,
			    sizeof(paddr)) == -1)
				continue;

		/*
		 * Now set up the I2C and OFW bus layer devinfo and add it
		 * to the bus.
		 */
		dinfo = FUNC15(sizeof(struct ofw_iicbus_devinfo), M_DEVBUF,
		    M_NOWAIT | M_ZERO);
		if (dinfo == NULL)
			continue;
		/*
		 * FreeBSD drivers expect I2C addresses to be expressed as
		 * 8-bit values.  Apple OFW data contains 8-bit values, but
		 * Linux FDT data contains 7-bit values, so shift them up to
		 * 8-bit format.
		 */
		if (iic_addr_8bit)
		    dinfo->opd_dinfo.addr = paddr;
		else
		    dinfo->opd_dinfo.addr = paddr << 1;

		if (FUNC17(&dinfo->opd_obdinfo, child) !=
		    0) {
			FUNC12(dinfo, M_DEVBUF);
			continue;
		}

		childdev = FUNC10(dev, NULL, -1);
		FUNC20(&dinfo->opd_dinfo.rl);
		FUNC19(childdev, child,
					&dinfo->opd_dinfo.rl, NULL);
		FUNC11(childdev, dinfo);
	}

	/* Register bus */
	FUNC2(FUNC6(node), dev);
	return (FUNC8(dev));
}