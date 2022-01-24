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
struct mfip_softc {int /*<<< orphan*/ * devq; int /*<<< orphan*/ * sim; struct mfi_softc* mfi_sc; int /*<<< orphan*/  state; int /*<<< orphan*/  dev; } ;
struct mfi_softc {int /*<<< orphan*/  mfi_io_lock; int /*<<< orphan*/  mfi_cam_rescan_cb; int /*<<< orphan*/  mfi_cam_start; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  MFIP_STATE_NONE ; 
 int /*<<< orphan*/  MFI_SCSI_MAX_CMDS ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct mfip_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  mfip_cam_action ; 
 int /*<<< orphan*/  mfip_cam_poll ; 
 int /*<<< orphan*/  mfip_cam_rescan ; 
 int /*<<< orphan*/  mfip_start ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(device_t dev)
{
	struct mfip_softc *sc;
	struct mfi_softc *mfisc;

	sc = FUNC5(dev);
	if (sc == NULL)
		return (EINVAL);

	mfisc = FUNC5(FUNC4(dev));
	sc->dev = dev;
	sc->state = MFIP_STATE_NONE;
	sc->mfi_sc = mfisc;
	mfisc->mfi_cam_start = mfip_start;

	if ((sc->devq = FUNC2(MFI_SCSI_MAX_CMDS)) == NULL)
		return (ENOMEM);

	sc->sim = FUNC0(mfip_cam_action, mfip_cam_poll, "mfi", sc,
				FUNC6(dev), &mfisc->mfi_io_lock, 1,
				MFI_SCSI_MAX_CMDS, sc->devq);
	if (sc->sim == NULL) {
		FUNC3(sc->devq);
		sc->devq = NULL;
		FUNC7(dev, "CAM SIM attach failed\n");
		return (EINVAL);
	}

	mfisc->mfi_cam_rescan_cb = mfip_cam_rescan;

	FUNC8(&mfisc->mfi_io_lock);
	if (FUNC10(sc->sim, dev, 0) != 0) {
		FUNC7(dev, "XPT bus registration failed\n");
		FUNC1(sc->sim, FALSE);
		sc->sim = NULL;
		FUNC3(sc->devq);
		sc->devq = NULL;
		FUNC9(&mfisc->mfi_io_lock);
		return (EINVAL);
	}
	FUNC9(&mfisc->mfi_io_lock);

	return (0);
}