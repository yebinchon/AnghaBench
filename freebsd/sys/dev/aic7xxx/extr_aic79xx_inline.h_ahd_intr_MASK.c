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
typedef  int u_int ;
struct ahd_softc {int pause; int flags; int bugs; size_t cmdcmplt_bucket; int features; int /*<<< orphan*/  (* bus_intr ) (struct ahd_softc*) ;int /*<<< orphan*/  cmdcmplt_total; int /*<<< orphan*/ * cmdcmplt_counts; } ;

/* Variables and functions */
 int AHD_ALL_INTERRUPTS ; 
 int AHD_INTCOLLISION_BUG ; 
 int AHD_REMOVABLE ; 
 int AHD_TARGETROLE ; 
 int /*<<< orphan*/  CLRCMDINT ; 
 int /*<<< orphan*/  CLRINT ; 
 int CMDCMPLT ; 
 int /*<<< orphan*/  FALSE ; 
 int HWERRINT ; 
 int INTEN ; 
 int /*<<< orphan*/  INTSTAT ; 
 int INT_PEND ; 
 scalar_t__ NO_SEQINT ; 
 int PCIINT ; 
 int SCSIINT ; 
 int SEQINT ; 
 int /*<<< orphan*/  SEQINTCODE ; 
 int SPLTINT ; 
 scalar_t__ FUNC0 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct ahd_softc*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ahd_softc*,int) ; 
 scalar_t__ FUNC5 (struct ahd_softc*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct ahd_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC9 (struct ahd_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ahd_softc*) ; 

__attribute__((used)) static __inline int
FUNC11(struct ahd_softc *ahd)
{
	u_int	intstat;

	if ((ahd->pause & INTEN) == 0) {
		/*
		 * Our interrupt is not enabled on the chip
		 * and may be disabled for re-entrancy reasons,
		 * so just return.  This is likely just a shared
		 * interrupt.
		 */
		return (0);
	}

	/*
	 * Instead of directly reading the interrupt status register,
	 * infer the cause of the interrupt by checking our in-core
	 * completion queues.  This avoids a costly PCI bus read in
	 * most cases.
	 */
	if ((ahd->flags & AHD_ALL_INTERRUPTS) == 0
	 && (FUNC0(ahd) != 0))
		intstat = CMDCMPLT;
	else
		intstat = FUNC5(ahd, INTSTAT);

	if ((intstat & INT_PEND) == 0)
		return (0);

	if (intstat & CMDCMPLT) {
		FUNC7(ahd, CLRINT, CLRCMDINT);

		/*
		 * Ensure that the chip sees that we've cleared
		 * this interrupt before we walk the output fifo.
		 * Otherwise, we may, due to posted bus writes,
		 * clear the interrupt after we finish the scan,
		 * and after the sequencer has added new entries
		 * and asserted the interrupt again.
		 */
		if ((ahd->bugs & AHD_INTCOLLISION_BUG) != 0) {
			if (FUNC6(ahd)) {
				/*
				 * Potentially lost SEQINT.
				 * If SEQINTCODE is non-zero,
				 * simulate the SEQINT.
				 */
				if (FUNC5(ahd, SEQINTCODE) != NO_SEQINT)
					intstat |= SEQINT;
			}
		} else {
			FUNC1(ahd);
		}
		FUNC8(ahd);
		ahd->cmdcmplt_counts[ahd->cmdcmplt_bucket]++;
		ahd->cmdcmplt_total++;
#ifdef AHD_TARGET_MODE
		if ((ahd->flags & AHD_TARGETROLE) != 0)
			ahd_run_tqinfifo(ahd, /*paused*/FALSE);
#endif
	}

	/*
	 * Handle statuses that may invalidate our cached
	 * copy of INTSTAT separately.
	 */
	if (intstat == 0xFF && (ahd->features & AHD_REMOVABLE) != 0) {
		/* Hot eject.  Do nothing */
	} else if (intstat & HWERRINT) {
		FUNC2(ahd);
	} else if ((intstat & (PCIINT|SPLTINT)) != 0) {
		ahd->bus_intr(ahd);
	} else {

		if ((intstat & SEQINT) != 0)
			FUNC4(ahd, intstat);

		if ((intstat & SCSIINT) != 0)
			FUNC3(ahd, intstat);
	}
	return (1);
}