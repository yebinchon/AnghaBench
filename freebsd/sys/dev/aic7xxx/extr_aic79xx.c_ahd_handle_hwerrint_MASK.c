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
struct ahd_softc {int dummy; } ;
struct TYPE_2__ {int errno; char* errmesg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ahd_softc*) ; 
 int /*<<< orphan*/  ALL_CHANNELS ; 
 int /*<<< orphan*/  CAM_LUN_WILDCARD ; 
 int /*<<< orphan*/  CAM_NO_HBA ; 
 int /*<<< orphan*/  CAM_TARGET_WILDCARD ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  ROLE_UNKNOWN ; 
 int /*<<< orphan*/  SCB_LIST_NULL ; 
 int /*<<< orphan*/  FUNC1 (struct ahd_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct ahd_softc*) ; 
 TYPE_1__* ahd_hard_errors ; 
 int FUNC4 (struct ahd_softc*,int /*<<< orphan*/ ) ; 
 char* FUNC5 (struct ahd_softc*) ; 
 int num_errors ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,char*) ; 

void
FUNC8(struct ahd_softc *ahd)
{
	/*
	 * Some catastrophic hardware error has occurred.
	 * Print it for the user and disable the controller.
	 */
	int i;
	int error;

	error = FUNC4(ahd, ERROR);
	for (i = 0; i < num_errors; i++) {
		if ((error & ahd_hard_errors[i].errno) != 0) {
			FUNC7("%s: hwerrint, %s\n",
			       FUNC5(ahd), ahd_hard_errors[i].errmesg);
			FUNC0(ahd);
		}
	}

	FUNC2(ahd);
	FUNC6("BRKADRINT");

	/* Tell everyone that this HBA is no longer available */
	FUNC1(ahd, CAM_TARGET_WILDCARD, ALL_CHANNELS,
		       CAM_LUN_WILDCARD, SCB_LIST_NULL, ROLE_UNKNOWN,
		       CAM_NO_HBA);

	/* Tell the system that this controller has gone away. */
	FUNC3(ahd);
}