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
struct atibl_softc {int /*<<< orphan*/ * sc_memr; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int CTLFLAG_RW ; 
 int CTLTYPE_INT ; 
 int ENXIO ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  FUNC0 (struct sysctl_ctx_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,struct atibl_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sysctl_oid*) ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  atibl_sysctl ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 struct atibl_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 struct sysctl_ctx_list* FUNC4 (int /*<<< orphan*/ ) ; 
 struct sysctl_oid* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC7(device_t dev)
{
	struct atibl_softc	*sc;
	struct sysctl_ctx_list *ctx;
	struct sysctl_oid *tree;
	int			 rid;

	sc = FUNC3(dev);

	rid = 0x18;	/* BAR[2], for the MMIO register */
	sc->sc_memr = FUNC2(dev, SYS_RES_MEMORY, &rid,
			RF_ACTIVE | RF_SHAREABLE);
	if (sc->sc_memr == NULL) {
		FUNC6(dev, "Could not alloc mem resource!\n");
		return (ENXIO);
	}

	ctx = FUNC4(dev);
	tree = FUNC5(dev);

	FUNC0(ctx, FUNC1(tree), OID_AUTO,
	    "level", CTLTYPE_INT | CTLFLAG_RW, sc, 0,
	    atibl_sysctl, "I", "Backlight level (0-100)");

	return (0);
}