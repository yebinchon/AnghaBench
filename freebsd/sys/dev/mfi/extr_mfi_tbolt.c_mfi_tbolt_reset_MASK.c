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
struct mfi_softc {int mfi_flags; int (* mfi_read_fw_status ) (struct mfi_softc*) ;scalar_t__ disableOnlineCtrlReset; int adpreset; int /*<<< orphan*/  mfi_io_lock; scalar_t__ last_reply_idx; scalar_t__ MFA_enabled; scalar_t__ issuepend_done; int /*<<< orphan*/  mfi_dev; scalar_t__ hw_crit_error; } ;

/* Variables and functions */
 int MFI_FLAGS_TBOLT ; 
 int MFI_FWSTATE_FAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ mfi_fw_reset_test ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct mfi_softc*) ; 

int
FUNC5(struct mfi_softc *sc)
{
	uint32_t fw_state;

	FUNC2(&sc->mfi_io_lock);
	if (sc->hw_crit_error) {
		FUNC0(sc->mfi_dev, "HW CRITICAL ERROR\n");
		FUNC3(&sc->mfi_io_lock);
		return 1;
	}

	if (sc->mfi_flags & MFI_FLAGS_TBOLT) {
		fw_state = sc->mfi_read_fw_status(sc);
		if ((fw_state & MFI_FWSTATE_FAULT) == MFI_FWSTATE_FAULT ||
		    mfi_fw_reset_test) {
			if ((sc->disableOnlineCtrlReset == 0)
			    && (sc->adpreset == 0)) {
				FUNC0(sc->mfi_dev, "Adapter RESET "
				    "condition is detected\n");
				sc->adpreset = 1;
				sc->issuepend_done = 0;
				sc->MFA_enabled = 0;
				sc->last_reply_idx = 0;
				FUNC1((void *) sc);
			}
			FUNC3(&sc->mfi_io_lock);
			return 0;
		}
	}
	FUNC3(&sc->mfi_io_lock);
	return 1;
}