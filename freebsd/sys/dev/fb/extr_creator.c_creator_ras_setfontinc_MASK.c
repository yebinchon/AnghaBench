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
struct creator_softc {int sc_fontinc_cache; } ;

/* Variables and functions */
 int /*<<< orphan*/  FFB_FBC ; 
 int /*<<< orphan*/  FFB_FBC_FONTINC ; 
 int /*<<< orphan*/  FUNC0 (struct creator_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct creator_softc*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct creator_softc*) ; 

__attribute__((used)) static inline void
FUNC3(struct creator_softc *sc, int fontinc)
{

	if (fontinc == sc->sc_fontinc_cache)
		return;
	sc->sc_fontinc_cache = fontinc;
	FUNC1(sc, 1);
	FUNC0(sc, FFB_FBC, FFB_FBC_FONTINC, fontinc);
	FUNC2(sc);
}