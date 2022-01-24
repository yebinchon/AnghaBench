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
struct ahc_softc {int features; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  AHC_ALL_INTERRUPTS ; 
 int AHC_REMOVABLE ; 
 int ENSELO ; 
 int FALSE ; 
 int /*<<< orphan*/  INTSTAT ; 
 int INT_PEND ; 
 int /*<<< orphan*/  SCSISEQ ; 
 int SELDO ; 
 int SELINGO ; 
 int /*<<< orphan*/  SSTAT0 ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC0 (struct ahc_softc*) ; 
 int FUNC1 (struct ahc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ahc_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct ahc_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ahc_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct ahc_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct ahc_softc*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 

void
FUNC9(struct ahc_softc *ahc)
{
	int intstat;
	int maxloops;
	int paused;

	maxloops = 1000;
	ahc->flags |= AHC_ALL_INTERRUPTS;
	paused = FALSE;
	do {
		if (paused) {
			FUNC6(ahc);
			/*
			 * Give the sequencer some time to service
			 * any active selections.
			 */
			FUNC7(500);
		}
		FUNC2(ahc);
		FUNC4(ahc);
		paused = TRUE;
		FUNC3(ahc, SCSISEQ, FUNC1(ahc, SCSISEQ) & ~ENSELO);
		intstat = FUNC1(ahc, INTSTAT);
		if ((intstat & INT_PEND) == 0) {
			FUNC0(ahc);
			intstat = FUNC1(ahc, INTSTAT);
		}
	} while (--maxloops
	      && (intstat != 0xFF || (ahc->features & AHC_REMOVABLE) == 0)
	      && ((intstat & INT_PEND) != 0
	       || (FUNC1(ahc, SSTAT0) & (SELDO|SELINGO)) != 0));
	if (maxloops == 0) {
		FUNC8("Infinite interrupt loop, INTSTAT = %x",
		       FUNC1(ahc, INTSTAT));
	}
	FUNC5(ahc);
	ahc->flags &= ~AHC_ALL_INTERRUPTS;
}