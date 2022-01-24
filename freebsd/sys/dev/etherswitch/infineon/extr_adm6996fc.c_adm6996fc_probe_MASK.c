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
struct adm6996fc_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  ADM6996FC_CI0 ; 
 int /*<<< orphan*/  ADM6996FC_CI1 ; 
 int ADM6996FC_PC_SHIFT ; 
 int ADM6996FC_PRODUCT_CODE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int BUS_PROBE_DEFAULT ; 
 int ENXIO ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC1 (struct adm6996fc_softc*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct adm6996fc_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	int data1, data2;
	int pc;
	struct adm6996fc_softc *sc;

	sc = FUNC3(dev);
	FUNC1(sc, sizeof(*sc));

	data1 = FUNC0(FUNC2(dev), ADM6996FC_CI0);
	data2 = FUNC0(FUNC2(dev), ADM6996FC_CI1);
	pc = ((data2 << 16) | data1) >> ADM6996FC_PC_SHIFT;
	if (bootverbose)
		FUNC4(dev,"Chip Identifier Register %x %x\n", data1,
		    data2);

	/* check Product Code */
	if (pc != ADM6996FC_PRODUCT_CODE) {
		return (ENXIO);
	}

	FUNC5(dev, "Infineon ADM6996FC/M/MX MDIO switch driver");
	return (BUS_PROBE_DEFAULT);
}