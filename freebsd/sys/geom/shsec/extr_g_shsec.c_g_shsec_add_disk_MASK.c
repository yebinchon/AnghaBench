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
typedef  size_t u_int ;
struct g_shsec_softc {size_t sc_ndisks; scalar_t__ sc_id; int /*<<< orphan*/  sc_name; struct g_consumer** sc_disks; struct g_geom* sc_geom; } ;
struct g_shsec_metadata {scalar_t__ md_id; int /*<<< orphan*/  md_name; int /*<<< orphan*/  md_magic; } ;
struct g_provider {int /*<<< orphan*/  name; } ;
struct g_geom {int /*<<< orphan*/  consumer; } ;
struct g_consumer {size_t index; int /*<<< orphan*/  ace; int /*<<< orphan*/  acw; int /*<<< orphan*/  acr; struct g_shsec_softc* private; } ;

/* Variables and functions */
 int EEXIST ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  G_SHSEC_MAGIC ; 
 struct g_consumer* FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct g_consumer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct g_consumer*,struct g_provider*) ; 
 int /*<<< orphan*/  FUNC4 (struct g_consumer*) ; 
 int /*<<< orphan*/  FUNC5 (struct g_consumer*) ; 
 struct g_consumer* FUNC6 (struct g_geom*) ; 
 int /*<<< orphan*/  FUNC7 (struct g_shsec_softc*) ; 
 int FUNC8 (struct g_consumer*,struct g_shsec_metadata*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(struct g_shsec_softc *sc, struct g_provider *pp, u_int no)
{
	struct g_consumer *cp, *fcp;
	struct g_geom *gp;
	struct g_shsec_metadata md;
	int error;

	/* Metadata corrupted? */
	if (no >= sc->sc_ndisks)
		return (EINVAL);

	/* Check if disk is not already attached. */
	if (sc->sc_disks[no] != NULL)
		return (EEXIST);

	gp = sc->sc_geom;
	fcp = FUNC1(&gp->consumer);

	cp = FUNC6(gp);
	error = FUNC3(cp, pp);
	if (error != 0) {
		FUNC4(cp);
		return (error);
	}

	if (fcp != NULL && (fcp->acr > 0 || fcp->acw > 0 || fcp->ace > 0)) {
		error = FUNC2(cp, fcp->acr, fcp->acw, fcp->ace);
		if (error != 0) {
			FUNC5(cp);
			FUNC4(cp);
			return (error);
		}
	}

	/* Reread metadata. */
	error = FUNC8(cp, &md);
	if (error != 0)
		goto fail;

	if (FUNC9(md.md_magic, G_SHSEC_MAGIC) != 0 ||
	    FUNC9(md.md_name, sc->sc_name) != 0 || md.md_id != sc->sc_id) {
		FUNC0(0, "Metadata on %s changed.", pp->name);
		goto fail;
	}

	cp->private = sc;
	cp->index = no;
	sc->sc_disks[no] = cp;

	FUNC0(0, "Disk %s attached to %s.", pp->name, sc->sc_name);

	FUNC7(sc);

	return (0);
fail:
	if (fcp != NULL && (fcp->acr > 0 || fcp->acw > 0 || fcp->ace > 0))
		FUNC2(cp, -fcp->acr, -fcp->acw, -fcp->ace);
	FUNC5(cp);
	FUNC4(cp);
	return (error);
}