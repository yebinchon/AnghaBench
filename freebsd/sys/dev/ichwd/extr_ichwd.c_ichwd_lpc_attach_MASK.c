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
struct ichwd_softc {int tco_version; int smi_rid; int tco_rid; int /*<<< orphan*/ * gcs_res; scalar_t__ gcs_rid; int /*<<< orphan*/ * tco_res; int /*<<< orphan*/ * smi_res; int /*<<< orphan*/  ich_version; int /*<<< orphan*/ * ich; } ;
struct ichwd_device {int tco_version; int /*<<< orphan*/  ich_version; } ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  ICH_PMBASE ; 
 unsigned int ICH_PMBASE_MASK ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 scalar_t__ SMI_BASE ; 
 scalar_t__ SMI_LEN ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 scalar_t__ TCO_BASE ; 
 scalar_t__ TCO_LEN ; 
 void* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,scalar_t__,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct ichwd_softc* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,struct ichwd_device**) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC7(device_t dev)
{
	struct ichwd_softc *sc;
	struct ichwd_device *id_p;
	device_t ich;
	unsigned int pmbase = 0;

	sc = FUNC3(dev);

	ich = FUNC5(FUNC2(dev), &id_p);
	if (ich == NULL)
		return (ENXIO);

	sc->ich = ich;
	sc->ich_version = id_p->ich_version;
	sc->tco_version = id_p->tco_version;

	/* get ACPI base address */
	pmbase = FUNC6(ich, ICH_PMBASE, 2) & ICH_PMBASE_MASK;
	if (pmbase == 0) {
		FUNC4(dev, "ICH PMBASE register is empty\n");
		return (ENXIO);
	}

	/* allocate I/O register space */
	sc->smi_rid = 0;
	sc->smi_res = FUNC0(dev, SYS_RES_IOPORT, &sc->smi_rid,
	    pmbase + SMI_BASE, pmbase + SMI_BASE + SMI_LEN - 1, SMI_LEN,
	    RF_ACTIVE | RF_SHAREABLE);
	if (sc->smi_res == NULL) {
		FUNC4(dev, "unable to reserve SMI registers\n");
		return (ENXIO);
	}

	sc->tco_rid = 1;
	sc->tco_res = FUNC0(dev, SYS_RES_IOPORT, &sc->tco_rid,
	    pmbase + TCO_BASE, pmbase + TCO_BASE + TCO_LEN - 1, TCO_LEN,
	    RF_ACTIVE | RF_SHAREABLE);
	if (sc->tco_res == NULL) {
		FUNC4(dev, "unable to reserve TCO registers\n");
		return (ENXIO);
	}

	sc->gcs_rid = 0;
	if (sc->tco_version >= 2) {
		sc->gcs_res = FUNC1(ich, SYS_RES_MEMORY,
		    &sc->gcs_rid, RF_ACTIVE|RF_SHAREABLE);
		if (sc->gcs_res == NULL) {
			FUNC4(dev, "unable to reserve GCS registers\n");
			return (ENXIO);
		}
	}

	return (0);
}