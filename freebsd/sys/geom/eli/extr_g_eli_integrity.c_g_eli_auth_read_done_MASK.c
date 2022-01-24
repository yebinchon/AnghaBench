#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct g_eli_softc {int sc_data_per_sector; int sc_bytes_per_sector; int sc_alen; scalar_t__ sc_name; int /*<<< orphan*/  sc_inflight; TYPE_6__* sc_geom; } ;
struct cryptop {scalar_t__ crp_etype; TYPE_3__* crp_desc; scalar_t__ crp_olen; scalar_t__ crp_opaque; } ;
struct bio {scalar_t__ bio_inbed; scalar_t__ bio_children; scalar_t__ bio_error; int bio_length; int bio_offset; scalar_t__ bio_completed; int /*<<< orphan*/ * bio_driver2; int /*<<< orphan*/ * bio_data; TYPE_4__* bio_to; } ;
typedef  int off_t ;
typedef  scalar_t__ intmax_t ;
struct TYPE_14__ {TYPE_5__* provider; } ;
struct TYPE_13__ {int /*<<< orphan*/  consumer; } ;
struct TYPE_12__ {int sectorsize; } ;
struct TYPE_11__ {int sectorsize; TYPE_1__* geom; } ;
struct TYPE_10__ {TYPE_2__* crd_next; } ;
struct TYPE_9__ {int /*<<< orphan*/  crd_key; } ;
struct TYPE_8__ {struct g_eli_softc* softc; } ;

/* Variables and functions */
 scalar_t__ EAGAIN ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int,char*,scalar_t__,scalar_t__,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct bio*,char*,int) ; 
 TYPE_7__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  M_ELI ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct cryptop*) ; 
 int /*<<< orphan*/  FUNC8 (struct g_eli_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct bio*,int) ; 

__attribute__((used)) static int
FUNC10(struct cryptop *crp)
{
	struct g_eli_softc *sc;
	struct bio *bp;

	if (crp->crp_etype == EAGAIN) {
		if (FUNC7(crp) == 0)
			return (0);
	}
	bp = (struct bio *)crp->crp_opaque;
	bp->bio_inbed++;
	if (crp->crp_etype == 0) {
		bp->bio_completed += crp->crp_olen;
		FUNC0(3, "Crypto READ request done (%d/%d) (add=%jd completed=%jd).",
		    bp->bio_inbed, bp->bio_children, (intmax_t)crp->crp_olen, (intmax_t)bp->bio_completed);
	} else {
		FUNC0(1, "Crypto READ request failed (%d/%d) error=%d.",
		    bp->bio_inbed, bp->bio_children, crp->crp_etype);
		if (bp->bio_error == 0)
			bp->bio_error = crp->crp_etype;
	}
	sc = bp->bio_to->geom->softc;
	FUNC8(sc, crp->crp_desc->crd_next->crd_key);
	/*
	 * Do we have all sectors already?
	 */
	if (bp->bio_inbed < bp->bio_children)
		return (0);
	if (bp->bio_error == 0) {
		u_int i, lsec, nsec, data_secsize, decr_secsize, encr_secsize;
		u_char *srcdata, *dstdata, *auth;
		off_t coroff, corsize;

		/*
		 * Verify data integrity based on calculated and read HMACs.
		 */
		/* Sectorsize of decrypted provider eg. 4096. */
		decr_secsize = bp->bio_to->sectorsize;
		/* The real sectorsize of encrypted provider, eg. 512. */
		encr_secsize = FUNC2(&sc->sc_geom->consumer)->provider->sectorsize;
		/* Number of data bytes in one encrypted sector, eg. 480. */
		data_secsize = sc->sc_data_per_sector;
		/* Number of sectors from decrypted provider, eg. 2. */
		nsec = bp->bio_length / decr_secsize;
		/* Number of sectors from encrypted provider, eg. 18. */
		nsec = (nsec * sc->sc_bytes_per_sector) / encr_secsize;
		/* Last sector number in every big sector, eg. 9. */
		lsec = sc->sc_bytes_per_sector / encr_secsize;

		srcdata = bp->bio_driver2;
		dstdata = bp->bio_data;
		auth = srcdata + encr_secsize * nsec;
		coroff = -1;
		corsize = 0;

		for (i = 1; i <= nsec; i++) {
			data_secsize = sc->sc_data_per_sector;
			if ((i % lsec) == 0)
				data_secsize = decr_secsize % data_secsize;
			if (FUNC4(srcdata, auth, sc->sc_alen) != 0) {
				/*
				 * Curruption detected, remember the offset if
				 * this is the first corrupted sector and
				 * increase size.
				 */
				if (bp->bio_error == 0)
					bp->bio_error = -1;
				if (coroff == -1) {
					coroff = bp->bio_offset +
					    (dstdata - (u_char *)bp->bio_data);
				}
				corsize += data_secsize;
			} else {
				/*
				 * No curruption, good.
				 * Report previous corruption if there was one.
				 */
				if (coroff != -1) {
					FUNC0(0, "%s: Failed to authenticate %jd "
					    "bytes of data at offset %jd.",
					    sc->sc_name, (intmax_t)corsize,
					    (intmax_t)coroff);
					coroff = -1;
					corsize = 0;
				}
				FUNC5(srcdata + sc->sc_alen, dstdata,
				    data_secsize);
			}
			srcdata += encr_secsize;
			dstdata += data_secsize;
			auth += sc->sc_alen;
		}
		/* Report previous corruption if there was one. */
		if (coroff != -1) {
			FUNC0(0, "%s: Failed to authenticate %jd "
			    "bytes of data at offset %jd.",
			    sc->sc_name, (intmax_t)corsize, (intmax_t)coroff);
		}
	}
	FUNC6(bp->bio_driver2, M_ELI);
	bp->bio_driver2 = NULL;
	if (bp->bio_error != 0) {
		if (bp->bio_error == -1)
			bp->bio_error = EINVAL;
		else {
			FUNC1(0, bp,
			    "Crypto READ request failed (error=%d).",
			    bp->bio_error);
		}
		bp->bio_completed = 0;
	}
	/*
	 * Read is finished, send it up.
	 */
	FUNC9(bp, bp->bio_error);
	FUNC3(&sc->sc_inflight, 1);
	return (0);
}