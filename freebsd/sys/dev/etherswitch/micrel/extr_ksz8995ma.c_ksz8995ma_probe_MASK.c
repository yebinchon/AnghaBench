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
struct ksz8995ma_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int BUS_PROBE_DEFAULT ; 
 int ENXIO ; 
 int KSZ8995MA_CHIP_ID ; 
 int KSZ8995MA_CHIP_ID_MASK ; 
 int /*<<< orphan*/  KSZ8995MA_CID0 ; 
 int /*<<< orphan*/  KSZ8995MA_CID1 ; 
 int KSZ8995MA_FAMILI_ID ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC0 (struct ksz8995ma_softc*,int) ; 
 struct ksz8995ma_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	int id0, id1;
	struct ksz8995ma_softc *sc;

	sc = FUNC1(dev);
	FUNC0(sc, sizeof(*sc));

	id0 = FUNC4(dev, KSZ8995MA_CID0);
	id1 = FUNC4(dev, KSZ8995MA_CID1);
	if (bootverbose)
		FUNC2(dev,"Chip Identifier Register %x %x\n", id0, id1);

	/* check Product Code */
	if (id0 != KSZ8995MA_FAMILI_ID || (id1 & KSZ8995MA_CHIP_ID_MASK) !=
	    KSZ8995MA_CHIP_ID) {
		return (ENXIO);
	}

	FUNC3(dev, "Micrel KSZ8995MA SPI switch driver");
	return (BUS_PROBE_DEFAULT);
}