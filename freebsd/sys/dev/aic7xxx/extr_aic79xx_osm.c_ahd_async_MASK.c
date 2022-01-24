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
struct cam_sim {int dummy; } ;
struct cam_path {int dummy; } ;
struct ahd_softc {int dummy; } ;
struct ahd_devinfo {int dummy; } ;

/* Variables and functions */
#define  AC_LOST_DEVICE 128 
 int AHD_TRANS_CUR ; 
 int AHD_TRANS_GOAL ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  MSG_EXT_WDTR_BUS_8_BIT ; 
 int /*<<< orphan*/  ROLE_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (struct ahd_softc*,struct cam_sim*) ; 
 int /*<<< orphan*/  FUNC1 (struct ahd_softc*,struct cam_sim*) ; 
 int /*<<< orphan*/  FUNC2 (struct ahd_devinfo*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ahd_softc*,struct ahd_devinfo*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ahd_softc*,struct ahd_devinfo*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct cam_sim*) ; 
 int /*<<< orphan*/  FUNC6 (struct cam_path*) ; 
 int /*<<< orphan*/  FUNC7 (struct cam_path*) ; 

__attribute__((used)) static void
FUNC8(void *callback_arg, uint32_t code, struct cam_path *path, void *arg)
{
	struct ahd_softc *ahd;
	struct cam_sim *sim;

	sim = (struct cam_sim *)callback_arg;
	ahd = (struct ahd_softc *)FUNC5(sim);
	switch (code) {
	case AC_LOST_DEVICE:
	{
		struct	ahd_devinfo devinfo;

		FUNC2(&devinfo, FUNC1(ahd, sim),
				    FUNC7(path),
				    FUNC6(path),
				    FUNC0(ahd, sim),
				    ROLE_UNKNOWN);

		/*
		 * Revert to async/narrow transfers
		 * for the next device.
		 */
		FUNC4(ahd, &devinfo, MSG_EXT_WDTR_BUS_8_BIT,
			      AHD_TRANS_GOAL|AHD_TRANS_CUR, /*paused*/FALSE);
		FUNC3(ahd, &devinfo, /*period*/0, /*offset*/0,
				 /*ppr_options*/0, AHD_TRANS_GOAL|AHD_TRANS_CUR,
				 /*paused*/FALSE);
		break;
	}
	default:
		break;
	}
}