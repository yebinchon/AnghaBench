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
struct resource {int dummy; } ;
typedef  scalar_t__ rman_res_t ;
typedef  int /*<<< orphan*/  register_t ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  bus_space_tag_t ;
typedef  int /*<<< orphan*/  bus_space_handle_t ;

/* Variables and functions */
 scalar_t__ ENXIO ; 
 scalar_t__ IO_KBD ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ KBD_STATUS_PORT ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  atkbdc_ids ; 
 int FUNC1 (int /*<<< orphan*/ ,struct resource*,struct resource*) ; 
 scalar_t__ bootverbose ; 
 struct resource* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct resource*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct resource*) ; 
 int /*<<< orphan*/  FUNC16 (struct resource*) ; 

__attribute__((used)) static int
FUNC17(device_t dev)
{
	struct resource	*port0;
	struct resource	*port1;
	rman_res_t	start;
	rman_res_t	count;
	int		error;
	int		rid;
#if defined(__i386__) || defined(__amd64__)
	bus_space_tag_t	tag;
	bus_space_handle_t ioh1;
	volatile int	i;
	register_t	flags;
#endif

	/* check PnP IDs */
	if (FUNC0(FUNC7(dev), dev, atkbdc_ids) == ENXIO)
		return ENXIO;

	FUNC11(dev, "Keyboard controller (i8042)");

	/*
	 * Adjust I/O port resources.
	 * The AT keyboard controller uses two ports (a command/data port
	 * 0x60 and a status port 0x64), which may be given to us in 
	 * one resource (0x60 through 0x64) or as two separate resources
	 * (0x60 and 0x64). Some brain-damaged ACPI BIOS has reversed
	 * command/data port and status port. Furthermore, /boot/device.hints
	 * may contain just one port, 0x60. We shall adjust resource settings
	 * so that these two ports are available as two separate resources
	 * in correct order.
	 */
	FUNC10(dev);
	rid = 0;
	if (FUNC3(dev, SYS_RES_IOPORT, rid, &start, &count) != 0)
		return ENXIO;
	if (start == IO_KBD + KBD_STATUS_PORT) {
		start = IO_KBD;
		count++;
	}
	if (count > 1)	/* adjust the count and/or start port */
		FUNC5(dev, SYS_RES_IOPORT, rid, start, 1);
	port0 = FUNC2(dev, SYS_RES_IOPORT, &rid, RF_ACTIVE);
	if (port0 == NULL)
		return ENXIO;
	rid = 1;
	if (FUNC3(dev, SYS_RES_IOPORT, rid, NULL, NULL) != 0)
		FUNC5(dev, SYS_RES_IOPORT, 1,
				 start + KBD_STATUS_PORT, 1);
	port1 = FUNC2(dev, SYS_RES_IOPORT, &rid, RF_ACTIVE);
	if (port1 == NULL) {
		FUNC4(dev, SYS_RES_IOPORT, 0, port0);
		return ENXIO;
	}

#if defined(__i386__) || defined(__amd64__)
	/*
	 * Check if we really have AT keyboard controller. Poll status
	 * register until we get "all clear" indication. If no such
	 * indication comes, it probably means that there is no AT
	 * keyboard controller present. Give up in such case. Check relies
	 * on the fact that reading from non-existing in/out port returns
	 * 0xff on i386. May or may not be true on other platforms.
	 */
	tag = FUNC16(port0);
	ioh1 = FUNC15(port1);
	flags = FUNC13();
	for (i = 0; i != 65535; i++) {
		if ((FUNC6(tag, ioh1, 0) & 0x2) == 0)
			break;
	}
	FUNC14(flags);
	if (i == 65535) {
		FUNC4(dev, SYS_RES_IOPORT, 0, port0);
		FUNC4(dev, SYS_RES_IOPORT, 1, port1);
		if (bootverbose)
			FUNC9(dev, "AT keyboard controller not found\n");
		return ENXIO;
	}
#endif

	FUNC12(dev);

	error = FUNC1(FUNC8(dev), port0, port1);

	FUNC4(dev, SYS_RES_IOPORT, 0, port0);
	FUNC4(dev, SYS_RES_IOPORT, 1, port1);

	return error;
}