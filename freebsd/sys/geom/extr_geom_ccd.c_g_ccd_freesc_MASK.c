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
struct ccdiinfo {scalar_t__ ii_ndisk; struct ccdiinfo* sc_itable; struct ccdiinfo* ii_index; struct ccdiinfo* sc_cinfo; } ;
struct ccd_s {scalar_t__ ii_ndisk; struct ccd_s* sc_itable; struct ccd_s* ii_index; struct ccd_s* sc_cinfo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ccdiinfo*) ; 

__attribute__((used)) static void
FUNC1(struct ccd_s *sc)
{
	struct ccdiinfo *ii;

	FUNC0(sc->sc_cinfo);
	if (sc->sc_itable != NULL) {
		for (ii = sc->sc_itable; ii->ii_ndisk > 0; ii++)
			if (ii->ii_index != NULL)
				FUNC0(ii->ii_index);
		FUNC0(sc->sc_itable);
	}
	FUNC0(sc);
}