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
typedef  int uint32_t ;
struct fhc_softc {int /*<<< orphan*/ * sc_memres; } ;

/* Variables and functions */
 int /*<<< orphan*/  FHC_CTRL ; 
 int FHC_CTRL_AOFF ; 
 int FHC_CTRL_BOFF ; 
 int FHC_CTRL_RLED ; 
 int FHC_CTRL_SLINE ; 
 size_t FHC_INTERNAL ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(void *arg, int onoff)
{
	struct fhc_softc *sc;
	uint32_t ctrl;

	sc = (struct fhc_softc *)arg;

	ctrl = FUNC0(sc->sc_memres[FHC_INTERNAL], FHC_CTRL);
	if (onoff)
		ctrl |= FHC_CTRL_RLED;
	else
		ctrl &= ~FHC_CTRL_RLED;
	ctrl &= ~(FHC_CTRL_AOFF | FHC_CTRL_BOFF | FHC_CTRL_SLINE);
	FUNC1(sc->sc_memres[FHC_INTERNAL], FHC_CTRL, ctrl);
	(void)FUNC0(sc->sc_memres[FHC_INTERNAL], FHC_CTRL);
}