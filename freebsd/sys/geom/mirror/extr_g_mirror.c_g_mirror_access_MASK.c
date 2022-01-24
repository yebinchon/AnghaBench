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
struct g_provider {scalar_t__ acw; int /*<<< orphan*/  name; struct g_mirror_softc* private; } ;
struct g_mirror_softc {int sc_flags; scalar_t__ sc_provider_open; int /*<<< orphan*/  sc_lock; int /*<<< orphan*/  sc_disks; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,int,int,int) ; 
 int G_MIRROR_DEVICE_FLAG_CLOSEWAIT ; 
 int G_MIRROR_DEVICE_FLAG_DESTROY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  g_mirror_destroy_delayed ; 
 int /*<<< orphan*/  FUNC3 (struct g_mirror_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct g_mirror_softc*,int /*<<< orphan*/ ,struct g_mirror_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC10(struct g_provider *pp, int acr, int acw, int ace)
{
	struct g_mirror_softc *sc;
	int error = 0;

	FUNC5();
	FUNC0(2, "Access request for %s: r%dw%de%d.", pp->name, acr,
	    acw, ace);

	sc = pp->private;
	FUNC1(sc != NULL, ("NULL softc (provider=%s).", pp->name));

	FUNC7();
	FUNC8(&sc->sc_lock);
	if ((sc->sc_flags & G_MIRROR_DEVICE_FLAG_DESTROY) != 0 ||
	    (sc->sc_flags & G_MIRROR_DEVICE_FLAG_CLOSEWAIT) != 0 ||
	    FUNC2(&sc->sc_disks)) {
		if (acr > 0 || acw > 0 || ace > 0)
			error = ENXIO;
		goto end;
	}
	sc->sc_provider_open += acr + acw + ace;
	if (pp->acw + acw == 0)
		FUNC3(sc, 0);
	if ((sc->sc_flags & G_MIRROR_DEVICE_FLAG_CLOSEWAIT) != 0 &&
	    sc->sc_provider_open == 0)
		FUNC4(g_mirror_destroy_delayed, sc, M_WAITOK, sc, NULL);
end:
	FUNC9(&sc->sc_lock);
	FUNC6();
	return (error);
}