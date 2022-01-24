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
struct g_raid3_softc {int sc_flags; int sc_ndisks; int /*<<< orphan*/  sc_lock; } ;
struct g_provider {int acr; int acw; int ace; int /*<<< orphan*/  name; TYPE_1__* geom; } ;
struct TYPE_2__ {struct g_raid3_softc* softc; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,int,int,int) ; 
 int G_RAID3_DEVICE_FLAG_DESTROY ; 
 int G_RAID3_DEVICE_FLAG_DESTROYING ; 
 int /*<<< orphan*/  G_RAID3_DISK_STATE_ACTIVE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct g_raid3_softc*,int /*<<< orphan*/ ,struct g_raid3_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  g_raid3_destroy_delayed ; 
 int /*<<< orphan*/  FUNC3 (struct g_raid3_softc*,int) ; 
 int FUNC4 (struct g_raid3_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC10(struct g_provider *pp, int acr, int acw, int ace)
{
	struct g_raid3_softc *sc;
	int dcr, dcw, dce, error = 0;

	FUNC5();
	FUNC0(2, "Access request for %s: r%dw%de%d.", pp->name, acr,
	    acw, ace);

	sc = pp->geom->softc;
	if (sc == NULL && acr <= 0 && acw <= 0 && ace <= 0)
		return (0);
	FUNC1(sc != NULL, ("NULL softc (provider=%s).", pp->name));

	dcr = pp->acr + acr;
	dcw = pp->acw + acw;
	dce = pp->ace + ace;

	FUNC7();
	FUNC8(&sc->sc_lock);
	if ((sc->sc_flags & G_RAID3_DEVICE_FLAG_DESTROY) != 0 ||
	    FUNC4(sc, G_RAID3_DISK_STATE_ACTIVE) < sc->sc_ndisks - 1) {
		if (acr > 0 || acw > 0 || ace > 0)
			error = ENXIO;
		goto end;
	}
	if (dcw == 0)
		FUNC3(sc, dcw);
	if ((sc->sc_flags & G_RAID3_DEVICE_FLAG_DESTROYING) != 0) {
		if (acr > 0 || acw > 0 || ace > 0) {
			error = ENXIO;
			goto end;
		}
		if (dcr == 0 && dcw == 0 && dce == 0) {
			FUNC2(g_raid3_destroy_delayed, sc, M_WAITOK,
			    sc, NULL);
		}
	}
end:
	FUNC9(&sc->sc_lock);
	FUNC6();
	return (error);
}