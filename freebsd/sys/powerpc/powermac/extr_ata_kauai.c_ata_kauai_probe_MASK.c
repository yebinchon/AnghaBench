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
typedef  scalar_t__ u_int32_t ;
struct ata_kauai_softc {int shasta; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {scalar_t__ kpd_devid; int /*<<< orphan*/ * kpd_desc; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ata_kauai_softc*,int) ; 
 struct ata_kauai_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* kauai_pci_devlist ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (char const*,char*) ; 

__attribute__((used)) static int
FUNC9(device_t dev)
{
	struct ata_kauai_softc *sc;
	u_int32_t devid;
	phandle_t node;
	const char *compatstring = NULL;
	int i, found;

	found = 0;
	devid = FUNC7(dev);
        for (i = 0; kauai_pci_devlist[i].kpd_desc != NULL; i++) {
                if (devid == kauai_pci_devlist[i].kpd_devid) {
			found = 1;
                        FUNC4(dev, kauai_pci_devlist[i].kpd_desc);
		}
	}

	if (!found)
		return (ENXIO);

	node = FUNC6(dev);
	sc = FUNC3(dev);
	FUNC2(sc, sizeof(struct ata_kauai_softc));

	compatstring = FUNC5(dev);
	if (compatstring != NULL && FUNC8(compatstring,"shasta-ata") == 0)
		sc->shasta = 1;

	/* Pre-K2 controllers apparently need this hack */
	if (!sc->shasta &&
	    (compatstring == NULL || FUNC8(compatstring, "K2-UATA") != 0))
		FUNC1(dev, SYS_RES_IRQ, 0, 39, 1);

        return (FUNC0(dev));
}