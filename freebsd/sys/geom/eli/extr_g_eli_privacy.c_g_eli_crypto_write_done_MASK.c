#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct g_geom {int /*<<< orphan*/  consumer; struct g_eli_softc* softc; } ;
struct g_eli_softc {int /*<<< orphan*/  sc_inflight; } ;
struct g_consumer {TYPE_2__* provider; } ;
struct cryptop {scalar_t__ crp_etype; TYPE_1__* crp_desc; scalar_t__ crp_opaque; } ;
struct bio {int bio_inbed; int bio_children; scalar_t__ bio_error; TYPE_2__* bio_to; int /*<<< orphan*/  bio_done; int /*<<< orphan*/ * bio_driver2; int /*<<< orphan*/ * bio_data; struct bio* bio_driver1; } ;
struct TYPE_4__ {struct g_geom* geom; } ;
struct TYPE_3__ {int /*<<< orphan*/  crd_key; } ;

/* Variables and functions */
 scalar_t__ EAGAIN ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int,int,...) ; 
 int /*<<< orphan*/  FUNC1 (int,struct bio*,char*,...) ; 
 struct g_consumer* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  M_ELI ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bio*) ; 
 scalar_t__ FUNC6 (struct cryptop*) ; 
 int /*<<< orphan*/  FUNC7 (struct g_eli_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_eli_write_done ; 
 int /*<<< orphan*/  FUNC8 (struct bio*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct bio*,struct g_consumer*) ; 

__attribute__((used)) static int
FUNC10(struct cryptop *crp)
{
	struct g_eli_softc *sc;
	struct g_geom *gp;
	struct g_consumer *cp;
	struct bio *bp, *cbp;

	if (crp->crp_etype == EAGAIN) {
		if (FUNC6(crp) == 0)
			return (0);
	}
	bp = (struct bio *)crp->crp_opaque;
	bp->bio_inbed++;
	if (crp->crp_etype == 0) {
		FUNC0(3, "Crypto WRITE request done (%d/%d).",
		    bp->bio_inbed, bp->bio_children);
	} else {
		FUNC0(1, "Crypto WRITE request failed (%d/%d) error=%d.",
		    bp->bio_inbed, bp->bio_children, crp->crp_etype);
		if (bp->bio_error == 0)
			bp->bio_error = crp->crp_etype;
	}
	gp = bp->bio_to->geom;
	sc = gp->softc;
	FUNC7(sc, crp->crp_desc->crd_key);
	/*
	 * All sectors are already encrypted?
	 */
	if (bp->bio_inbed < bp->bio_children)
		return (0);
	bp->bio_inbed = 0;
	bp->bio_children = 1;
	cbp = bp->bio_driver1;
	bp->bio_driver1 = NULL;
	if (bp->bio_error != 0) {
		FUNC1(0, bp, "Crypto WRITE request failed (error=%d).",
		    bp->bio_error);
		FUNC4(bp->bio_driver2, M_ELI);
		bp->bio_driver2 = NULL;
		FUNC5(cbp);
		FUNC8(bp, bp->bio_error);
		FUNC3(&sc->sc_inflight, 1);
		return (0);
	}
	cbp->bio_data = bp->bio_driver2;
	cbp->bio_done = g_eli_write_done;
	cp = FUNC2(&gp->consumer);
	cbp->bio_to = cp->provider;
	FUNC1(2, cbp, "Sending request.");
	/*
	 * Send encrypted data to the provider.
	 */
	FUNC9(cbp, cp);
	return (0);
}