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
struct cam_devq {int dummy; } ;
struct amr_softc {int amr_maxchan; int /*<<< orphan*/  amr_cam_command; int /*<<< orphan*/  amr_dev; int /*<<< orphan*/  amr_list_lock; int /*<<< orphan*/ ** amr_cam_sim; struct cam_devq* amr_cam_devq; int /*<<< orphan*/  amr_cam_ccbq; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  AMR_MAX_SCSI_CMDS ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  amr_cam_action ; 
 int /*<<< orphan*/  amr_cam_command ; 
 int /*<<< orphan*/  amr_cam_poll ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct amr_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct cam_devq*) ; 
 struct cam_devq* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cam_devq*) ; 
 struct amr_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC10(device_t dev)
{
	struct amr_softc *sc;
	struct cam_devq	*devq;
	int chn, error;

	sc = FUNC4(dev);

	/* initialise the ccb queue */
	FUNC0(&sc->amr_cam_ccbq);

	/*
	 * Allocate a devq for all our channels combined.  This should
	 * allow for the maximum number of SCSI commands we will accept
	 * at one time. Save the pointer in the softc so we can find it later
	 * during detach.
	 */
	if ((devq = FUNC2(AMR_MAX_SCSI_CMDS)) == NULL)
		return(ENOMEM);
	sc->amr_cam_devq = devq;

	/*
	 * Iterate over our channels, registering them with CAM
	 */
	for (chn = 0; chn < sc->amr_maxchan; chn++) {

		/* allocate a sim */
		if ((sc->amr_cam_sim[chn] = FUNC1(amr_cam_action,
		    amr_cam_poll, "amr", sc, FUNC5(sc->amr_dev),
		    &sc->amr_list_lock, 1, AMR_MAX_SCSI_CMDS, devq)) == NULL) {
			FUNC3(devq);
			FUNC6(sc->amr_dev, "CAM SIM attach failed\n");
			return(ENOMEM);
		}

		/* register the bus ID so we can get it later */
		FUNC7(&sc->amr_list_lock);
		error = FUNC9(sc->amr_cam_sim[chn], sc->amr_dev,chn);
		FUNC8(&sc->amr_list_lock);
		if (error) {
			FUNC6(sc->amr_dev,
			    "CAM XPT bus registration failed\n");
			return(ENXIO);
		}
	}
	/*
	 * XXX we should scan the config and work out which devices are
	 * actually protected.
	 */
	sc->amr_cam_command = amr_cam_command;
	return(0);
}