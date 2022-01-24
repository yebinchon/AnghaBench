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
struct g_provider {int /*<<< orphan*/  name; } ;
struct g_geom {int /*<<< orphan*/  consumer; } ;
struct g_consumer {int flags; int /*<<< orphan*/  ace; int /*<<< orphan*/  acw; int /*<<< orphan*/  acr; struct g_concat_disk* private; } ;
struct g_concat_softc {size_t sc_ndisks; scalar_t__ sc_type; scalar_t__ sc_id; int /*<<< orphan*/  sc_name; struct g_geom* sc_geom; struct g_concat_disk* sc_disks; } ;
struct g_concat_metadata {scalar_t__ md_id; int /*<<< orphan*/  md_name; int /*<<< orphan*/  md_magic; } ;
struct g_concat_disk {scalar_t__ d_removed; scalar_t__ d_end; scalar_t__ d_start; struct g_concat_softc* d_softc; struct g_consumer* d_consumer; } ;

/* Variables and functions */
 int EEXIST ; 
 int EINVAL ; 
 int G_CF_DIRECT_RECEIVE ; 
 int G_CF_DIRECT_SEND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  G_CONCAT_MAGIC ; 
 scalar_t__ G_CONCAT_TYPE_AUTOMATIC ; 
 struct g_consumer* FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct g_consumer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct g_consumer*,struct g_provider*) ; 
 int /*<<< orphan*/  FUNC4 (struct g_concat_softc*) ; 
 int FUNC5 (struct g_consumer*,struct g_concat_metadata*) ; 
 int /*<<< orphan*/  FUNC6 (struct g_consumer*) ; 
 int /*<<< orphan*/  FUNC7 (struct g_consumer*) ; 
 struct g_consumer* FUNC8 (struct g_geom*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(struct g_concat_softc *sc, struct g_provider *pp, u_int no)
{
	struct g_concat_disk *disk;
	struct g_consumer *cp, *fcp;
	struct g_geom *gp;
	int error;

	FUNC9();
	/* Metadata corrupted? */
	if (no >= sc->sc_ndisks)
		return (EINVAL);

	disk = &sc->sc_disks[no];
	/* Check if disk is not already attached. */
	if (disk->d_consumer != NULL)
		return (EEXIST);

	gp = sc->sc_geom;
	fcp = FUNC1(&gp->consumer);

	cp = FUNC8(gp);
	cp->flags |= G_CF_DIRECT_SEND | G_CF_DIRECT_RECEIVE;
	error = FUNC3(cp, pp);
	if (error != 0) {
		FUNC6(cp);
		return (error);
	}

	if (fcp != NULL && (fcp->acr > 0 || fcp->acw > 0 || fcp->ace > 0)) {
		error = FUNC2(cp, fcp->acr, fcp->acw, fcp->ace);
		if (error != 0) {
			FUNC7(cp);
			FUNC6(cp);
			return (error);
		}
	}
	if (sc->sc_type == G_CONCAT_TYPE_AUTOMATIC) {
		struct g_concat_metadata md;

		/* Re-read metadata. */
		error = FUNC5(cp, &md);
		if (error != 0)
			goto fail;

		if (FUNC10(md.md_magic, G_CONCAT_MAGIC) != 0 ||
		    FUNC10(md.md_name, sc->sc_name) != 0 ||
		    md.md_id != sc->sc_id) {
			FUNC0(0, "Metadata on %s changed.", pp->name);
			goto fail;
		}
	}

	cp->private = disk;
	disk->d_consumer = cp;
	disk->d_softc = sc;
	disk->d_start = 0;	/* not yet */
	disk->d_end = 0;	/* not yet */
	disk->d_removed = 0;

	FUNC0(0, "Disk %s attached to %s.", pp->name, sc->sc_name);

	FUNC4(sc);

	return (0);
fail:
	if (fcp != NULL && (fcp->acr > 0 || fcp->acw > 0 || fcp->ace > 0))
		FUNC2(cp, -fcp->acr, -fcp->acw, -fcp->ace);
	FUNC7(cp);
	FUNC6(cp);
	return (error);
}