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
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct nvbl_softc {int /*<<< orphan*/ * sc_memr; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int CTLFLAG_RW ; 
 int CTLTYPE_INT ; 
 int ENXIO ; 
 scalar_t__ NVIDIA_MMIO_PMC ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  FUNC0 (struct sysctl_ctx_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,struct nvbl_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sysctl_oid*) ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 struct nvbl_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 struct sysctl_ctx_list* FUNC6 (int /*<<< orphan*/ ) ; 
 struct sysctl_oid* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  nvbl_sysctl ; 

__attribute__((used)) static int
FUNC10(device_t dev)
{
	struct nvbl_softc	*sc;
	struct sysctl_ctx_list *ctx;
	struct sysctl_oid *tree;
	int			 rid;

	sc = FUNC5(dev);

	rid = 0x10;	/* BAR[0], for the MMIO register */
	sc->sc_memr = FUNC2(dev, SYS_RES_MEMORY, &rid,
			RF_ACTIVE | RF_SHAREABLE);
	if (sc->sc_memr == NULL) {
		FUNC8(dev, "Could not alloc mem resource!\n");
		return (ENXIO);
	}

	/* Turn on big-endian mode */
	if (!(FUNC3(sc->sc_memr, NVIDIA_MMIO_PMC + 4) & 0x01000001)) {
		FUNC4(sc->sc_memr, NVIDIA_MMIO_PMC + 4, 0x01000001);
		FUNC9();
	}

	ctx = FUNC6(dev);
	tree = FUNC7(dev);

	FUNC0(ctx, FUNC1(tree), OID_AUTO,
			"level", CTLTYPE_INT | CTLFLAG_RW, sc, 0,
			nvbl_sysctl, "I", "Backlight level (0-100)");

	return (0);
}