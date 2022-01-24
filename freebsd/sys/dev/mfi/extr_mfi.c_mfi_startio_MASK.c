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
struct mfi_softc {int mfi_flags; int /*<<< orphan*/  mfi_dev; struct mfi_command* (* mfi_cam_start ) (struct ccb_hdr*) ;int /*<<< orphan*/  mfi_cam_ccbq; } ;
struct mfi_command {int dummy; } ;
struct ccb_hdr {int dummy; } ;

/* Variables and functions */
 int MFI_FLAGS_QFRZN ; 
 struct ccb_hdr* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct mfi_command* FUNC2 (struct mfi_softc*) ; 
 struct mfi_command* FUNC3 (struct mfi_softc*) ; 
 scalar_t__ FUNC4 (struct mfi_softc*,struct mfi_command*) ; 
 int /*<<< orphan*/  FUNC5 (struct mfi_command*) ; 
 struct mfi_command* FUNC6 (struct ccb_hdr*) ; 

void
FUNC7(struct mfi_softc *sc)
{
	struct mfi_command *cm;
	struct ccb_hdr *ccbh;

	for (;;) {
		/* Don't bother if we're short on resources */
		if (sc->mfi_flags & MFI_FLAGS_QFRZN)
			break;

		/* Try a command that has already been prepared */
		cm = FUNC3(sc);

		if (cm == NULL) {
			if ((ccbh = FUNC0(&sc->mfi_cam_ccbq)) != NULL)
				cm = sc->mfi_cam_start(ccbh);
		}

		/* Nope, so look for work on the bioq */
		if (cm == NULL)
			cm = FUNC2(sc);

		/* No work available, so exit */
		if (cm == NULL)
			break;

		/* Send the command to the controller */
		if (FUNC4(sc, cm) != 0) {
			FUNC1(sc->mfi_dev, "Failed to startio\n");
			FUNC5(cm);
			break;
		}
	}
}