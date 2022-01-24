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
struct ata_macio_softc {int rev; int /*<<< orphan*/  max_mode; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  ATA_UDMA4 ; 
 int /*<<< orphan*/  ATA_WDMA2 ; 
 int ENXIO ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ata_macio_softc*,int) ; 
 struct ata_macio_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char const*,char*) ; 

__attribute__((used)) static int
FUNC7(device_t dev)
{
	const char *type = FUNC5(dev);
	const char *name = FUNC4(dev);
	struct ata_macio_softc *sc;

	if (FUNC6(type, "ata") != 0 &&
	    FUNC6(type, "ide") != 0)
		return (ENXIO);

	sc = FUNC2(dev);
	FUNC1(sc, sizeof(struct ata_macio_softc));

	if (FUNC6(name,"ata-4") == 0) {
		FUNC3(dev,"Apple MacIO Ultra ATA Controller");
		sc->rev = 4;
		sc->max_mode = ATA_UDMA4;
	} else {
		FUNC3(dev,"Apple MacIO ATA Controller");
		sc->rev = 3;
		sc->max_mode = ATA_WDMA2;
	}

	return (FUNC0(dev));
}