#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mly_softc {int mly_cam_channels; TYPE_1__* mly_controllerinfo; int /*<<< orphan*/  mly_dev; int /*<<< orphan*/ ** mly_cam_sim; int /*<<< orphan*/  mly_lock; } ;
struct cam_devq {int dummy; } ;
struct TYPE_2__ {int physical_channels_present; int virtual_channels_present; int /*<<< orphan*/  maximum_parallel_commands; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (struct mly_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct mly_softc*) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct mly_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,struct cam_devq*) ; 
 struct cam_devq* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mly_cam_action ; 
 int /*<<< orphan*/  mly_cam_poll ; 
 int /*<<< orphan*/  FUNC7 (struct mly_softc*,char*) ; 
 scalar_t__ FUNC8 (char*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC10(struct mly_softc *sc)
{
    struct cam_devq	*devq;
    int			chn, i;

    FUNC5(1);

    /*
     * Allocate a devq for all our channels combined.
     */
    if ((devq = FUNC3(sc->mly_controllerinfo->maximum_parallel_commands)) == NULL) {
	FUNC7(sc, "can't allocate CAM SIM queue\n");
	return(ENOMEM);
    }

    /*
     * If physical channel registration has been requested, register these first.
     * Note that we enable tagged command queueing for physical channels.
     */
    if (FUNC8("hw.mly.register_physical_channels")) {
	chn = 0;
	for (i = 0; i < sc->mly_controllerinfo->physical_channels_present; i++, chn++) {

	    if ((sc->mly_cam_sim[chn] = FUNC2(mly_cam_action, mly_cam_poll, "mly", sc,
						      FUNC6(sc->mly_dev),
						      &sc->mly_lock,
						      sc->mly_controllerinfo->maximum_parallel_commands,
						      1, devq)) == NULL) {
		return(ENOMEM);
	    }
	    FUNC0(sc);
	    if (FUNC9(sc->mly_cam_sim[chn], sc->mly_dev, chn)) {
		FUNC1(sc);
		FUNC7(sc, "CAM XPT phsyical channel registration failed\n");
		return(ENXIO);
	    }
	    FUNC1(sc);
	    FUNC4(1, "registered physical channel %d", chn);
	}
    }

    /*
     * Register our virtual channels, with bus numbers matching channel numbers.
     */
    chn = sc->mly_controllerinfo->physical_channels_present;
    for (i = 0; i < sc->mly_controllerinfo->virtual_channels_present; i++, chn++) {
	if ((sc->mly_cam_sim[chn] = FUNC2(mly_cam_action, mly_cam_poll, "mly", sc,
						  FUNC6(sc->mly_dev),
						  &sc->mly_lock,
						  sc->mly_controllerinfo->maximum_parallel_commands,
						  0, devq)) == NULL) {
	    return(ENOMEM);
	}
	FUNC0(sc);
	if (FUNC9(sc->mly_cam_sim[chn], sc->mly_dev, chn)) {
	    FUNC1(sc);
	    FUNC7(sc, "CAM XPT virtual channel registration failed\n");
	    return(ENXIO);
	}
	FUNC1(sc);
	FUNC4(1, "registered virtual channel %d", chn);
    }

    /*
     * This is the total number of channels that (might have been) registered with
     * CAM.  Some may not have been; check the mly_cam_sim array to be certain.
     */
    sc->mly_cam_channels = sc->mly_controllerinfo->physical_channels_present +
	sc->mly_controllerinfo->virtual_channels_present;

    return(0);
}