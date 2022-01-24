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
typedef  int uint32_t ;
struct ichwd_softc {int tco_version; int /*<<< orphan*/  device; int /*<<< orphan*/  ich; } ;

/* Variables and functions */
 int EIO ; 
 int ICH_GCS_NO_REBOOT ; 
 int /*<<< orphan*/  ICH_GEN_STA ; 
 int ICH_GEN_STA_NO_REBOOT ; 
 int ICH_PMC_NO_REBOOT ; 
 int SMB_GC_NO_REBOOT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct ichwd_softc*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ichwd_softc*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ichwd_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ichwd_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ichwd_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ichwd_softc*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static __inline int
FUNC10(struct ichwd_softc *sc)
{
	uint32_t status;
	int rc = 0;

	/* try to clear the NO_REBOOT bit */
	switch (sc->tco_version) {
	case 1:
		status = FUNC8(sc->ich, ICH_GEN_STA, 1);
		status &= ~ICH_GEN_STA_NO_REBOOT;
		FUNC9(sc->ich, ICH_GEN_STA, status, 1);
		status = FUNC8(sc->ich, ICH_GEN_STA, 1);
		if (status & ICH_GEN_STA_NO_REBOOT)
			rc = EIO;
		break;
	case 2:
		status = FUNC2(sc, 0);
		status &= ~ICH_GCS_NO_REBOOT;
		FUNC6(sc, 0, status);
		status = FUNC2(sc, 0);
		if (status & ICH_GCS_NO_REBOOT)
			rc = EIO;
		break;
	case 3:
		status = FUNC3(sc, 0);
		status &= ~ICH_PMC_NO_REBOOT;
		FUNC7(sc, 0, status);
		status = FUNC3(sc, 0);
		if (status & ICH_PMC_NO_REBOOT)
			rc = EIO;
		break;
	case 4:
		status = FUNC1(sc, 0);
		status &= ~SMB_GC_NO_REBOOT;
		FUNC5(sc, 0, status);
		status = FUNC1(sc, 0);
		if (status & SMB_GC_NO_REBOOT)
			rc = EIO;
		break;
	default:
		FUNC4(sc->device,
		    "Unknown TCO Version: %d, can't set NO_REBOOT.\n",
		    sc->tco_version);
		break;
	}

	if (rc)
		FUNC0(sc->device,
		    "ICH WDT present but disabled in BIOS or hardware\n");

	return (rc);
}