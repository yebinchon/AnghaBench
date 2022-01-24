#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int8_t ;
typedef  int u_int32_t ;
struct twe_softc {int dummy; } ;
struct TYPE_4__ {scalar_t__* data; } ;
typedef  TYPE_1__ TWE_Param ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  FUNC0 (struct twe_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct twe_softc*) ; 
 int /*<<< orphan*/  TWE_PARAM_CONTROLLER ; 
 int /*<<< orphan*/  TWE_PARAM_CONTROLLER_PortCount ; 
 scalar_t__ TWE_PARAM_DRIVEINFO ; 
 int /*<<< orphan*/  TWE_PARAM_DRIVEINFO_Model ; 
 int /*<<< orphan*/  TWE_PARAM_DRIVEINFO_Size ; 
 scalar_t__ TWE_PARAM_DRIVESTATUS_Present ; 
 scalar_t__ TWE_PARAM_DRIVESUMMARY ; 
 int /*<<< orphan*/  TWE_PARAM_DRIVESUMMARY_Status ; 
 scalar_t__ TWE_PARAM_VERSION ; 
 int /*<<< orphan*/  TWE_PARAM_VERSION_ATA ; 
 int /*<<< orphan*/  TWE_PARAM_VERSION_BIOS ; 
 int /*<<< orphan*/  TWE_PARAM_VERSION_FW ; 
 int /*<<< orphan*/  TWE_PARAM_VERSION_Mon ; 
 int /*<<< orphan*/  TWE_PARAM_VERSION_PCB ; 
 int /*<<< orphan*/  TWE_PARAM_VERSION_PCI ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (struct twe_softc*,scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct twe_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct twe_softc*,scalar_t__,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct twe_softc*,char*,...) ; 

void
FUNC8(struct twe_softc *sc)
{
    TWE_Param		*p[6];
    u_int8_t		ports;
    u_int32_t		size;
    int			i;

    FUNC2(2);

    FUNC0(sc);

    /* get the port count */
    FUNC5(sc, TWE_PARAM_CONTROLLER, TWE_PARAM_CONTROLLER_PortCount, &ports);

    /* get version strings */
    p[0] = FUNC4(sc, TWE_PARAM_VERSION, TWE_PARAM_VERSION_FW,   16, NULL);
    p[1] = FUNC4(sc, TWE_PARAM_VERSION, TWE_PARAM_VERSION_BIOS, 16, NULL);
    if (p[0] && p[1])
	 FUNC7(sc, "%d ports, Firmware %.16s, BIOS %.16s\n", ports, p[0]->data, p[1]->data);

    if (bootverbose) {
	p[2] = FUNC4(sc, TWE_PARAM_VERSION, TWE_PARAM_VERSION_Mon,  16, NULL);
	p[3] = FUNC4(sc, TWE_PARAM_VERSION, TWE_PARAM_VERSION_PCB,  8, NULL);
	p[4] = FUNC4(sc, TWE_PARAM_VERSION, TWE_PARAM_VERSION_ATA,  8, NULL);
	p[5] = FUNC4(sc, TWE_PARAM_VERSION, TWE_PARAM_VERSION_PCI,  8, NULL);

	if (p[2] && p[3] && p[4] && p[5])
	    FUNC7(sc, "Monitor %.16s, PCB %.8s, Achip %.8s, Pchip %.8s\n", p[2]->data, p[3]->data,
		p[4]->data, p[5]->data);
	if (p[2])
	    FUNC3(p[2], M_DEVBUF);
	if (p[3])
	    FUNC3(p[3], M_DEVBUF);
	if (p[4])
	    FUNC3(p[4], M_DEVBUF);
	if (p[5])
	    FUNC3(p[5], M_DEVBUF);
    }
    if (p[0])
	FUNC3(p[0], M_DEVBUF);
    if (p[1])
	FUNC3(p[1], M_DEVBUF);

    /* print attached drives */
    if (bootverbose) {
	p[0] = FUNC4(sc, TWE_PARAM_DRIVESUMMARY, TWE_PARAM_DRIVESUMMARY_Status, 16, NULL);
	for (i = 0; i < ports; i++) {
	    if (p[0]->data[i] != TWE_PARAM_DRIVESTATUS_Present)
		continue;
	    FUNC6(sc, TWE_PARAM_DRIVEINFO + i, TWE_PARAM_DRIVEINFO_Size, &size);
	    p[1] = FUNC4(sc, TWE_PARAM_DRIVEINFO + i, TWE_PARAM_DRIVEINFO_Model, 40, NULL);
	    if (p[1] != NULL) {
		FUNC7(sc, "port %d: %.40s %dMB\n", i, p[1]->data, size / 2048);
		FUNC3(p[1], M_DEVBUF);
	    } else {
		FUNC7(sc, "port %d, drive status unavailable\n", i);
	    }
	}
	if (p[0])
	    FUNC3(p[0], M_DEVBUF);
    }
    FUNC1(sc);
}