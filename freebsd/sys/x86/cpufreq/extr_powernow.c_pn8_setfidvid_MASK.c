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
typedef  unsigned long long uint64_t ;
typedef  int u_int ;
struct pn_softc {int mvs; int rvo; unsigned long long pll; int /*<<< orphan*/  vst; int /*<<< orphan*/  irt; int /*<<< orphan*/  errata; scalar_t__ fsb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int ENXIO ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  PENDING_STUCK ; 
 int FUNC3 (unsigned long long) ; 
 int FUNC4 (unsigned long long) ; 
 int FUNC5 (int) ; 
 int FUNC6 (unsigned long long*) ; 
 int FUNC7 (int,int,unsigned long long,unsigned long long*) ; 

__attribute__((used)) static int
FUNC8(struct pn_softc *sc, int fid, int vid)
{
	uint64_t status;
	int cfid, cvid;
	int rvo;
	int rv;
	u_int val;

	rv = FUNC6(&status);
	if (rv)
		return (rv);

	cfid = FUNC3(status);
	cvid = FUNC4(status);

	if (fid == cfid && vid == cvid)
		return (0);

	/*
	 * Phase 1: Raise core voltage to requested VID if frequency is
	 * going up.
	 */
	while (cvid > vid) {
		val = cvid - (1 << sc->mvs);
		rv = FUNC7(cfid, (val > 0) ? val : 0, 1ULL, &status);
		if (rv) {
			sc->errata |= PENDING_STUCK;
			return (rv);
		}
		cvid = FUNC4(status);
		FUNC1(sc->vst);
	}

	/* ... then raise to voltage + RVO (if required) */
	for (rvo = sc->rvo; rvo > 0 && cvid > 0; --rvo) {
		/* XXX It's not clear from spec if we have to do that
		 * in 0.25 step or in MVS.  Therefore do it as it's done
		 * under Linux */
		rv = FUNC7(cfid, cvid - 1, 1ULL, &status);
		if (rv) {
			sc->errata |= PENDING_STUCK;
			return (rv);
		}
		cvid = FUNC4(status);
		FUNC1(sc->vst);
	}

	/* Phase 2: change to requested core frequency */
	if (cfid != fid) {
		u_int vco_fid, vco_cfid, fid_delta;

		vco_fid = FUNC2(fid);
		vco_cfid = FUNC2(cfid);

		while (FUNC5(vco_fid - vco_cfid) > 2) {
			fid_delta = (vco_cfid & 1) ? 1 : 2;
			if (fid > cfid) {
				if (cfid > 7)
					val = cfid + fid_delta;
				else
					val = FUNC2(cfid) + fid_delta;
			} else
				val = cfid - fid_delta;
			rv = FUNC7(val, cvid,
			    sc->pll * (uint64_t) sc->fsb,
			    &status);
			if (rv) {
				sc->errata |= PENDING_STUCK;
				return (rv);
			}
			cfid = FUNC3(status);
			FUNC0(sc->irt);

			vco_cfid = FUNC2(cfid);
		}

		rv = FUNC7(fid, cvid,
		    sc->pll * (uint64_t) sc->fsb,
		    &status);
		if (rv) {
			sc->errata |= PENDING_STUCK;
			return (rv);
		}
		cfid = FUNC3(status);
		FUNC0(sc->irt);
	}

	/* Phase 3: change to requested voltage */
	if (cvid != vid) {
		rv = FUNC7(cfid, vid, 1ULL, &status);
		cvid = FUNC4(status);
		FUNC1(sc->vst);
	}

	/* Check if transition failed. */
	if (cfid != fid || cvid != vid)
		rv = ENXIO;

	return (rv);
}