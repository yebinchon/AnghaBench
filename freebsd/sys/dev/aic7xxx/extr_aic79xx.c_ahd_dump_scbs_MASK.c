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
struct ahd_softc {int dummy; } ;
typedef  int /*<<< orphan*/  ahd_mode_state ;

/* Variables and functions */
 int /*<<< orphan*/  AHD_MODE_SCSI ; 
 int AHD_SCB_MAX ; 
 int /*<<< orphan*/  SCB_CONTROL ; 
 int /*<<< orphan*/  SCB_NEXT ; 
 int /*<<< orphan*/  SCB_NEXT2 ; 
 int /*<<< orphan*/  SCB_RESIDUAL_SGPTR ; 
 int /*<<< orphan*/  SCB_SCSIID ; 
 int /*<<< orphan*/  SCB_SGPTR ; 
 int FUNC0 (struct ahd_softc*) ; 
 int FUNC1 (struct ahd_softc*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ahd_softc*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ahd_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ahd_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct ahd_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ahd_softc*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 

void
FUNC9(struct ahd_softc *ahd)
{
	ahd_mode_state saved_modes;
	u_int	       saved_scb_index;
	int	       i;

	saved_modes = FUNC5(ahd);
	FUNC6(ahd, AHD_MODE_SCSI, AHD_MODE_SCSI);
	saved_scb_index = FUNC0(ahd);
	for (i = 0; i < AHD_SCB_MAX; i++) {
		FUNC7(ahd, i);
		FUNC8("%3d", i);
		FUNC8("(CTRL 0x%x ID 0x%x N 0x%x N2 0x%x SG 0x%x, RSG 0x%x)\n",
		       FUNC1(ahd, SCB_CONTROL),
		       FUNC1(ahd, SCB_SCSIID),
		       FUNC3(ahd, SCB_NEXT),
		       FUNC3(ahd, SCB_NEXT2),
		       FUNC2(ahd, SCB_SGPTR),
		       FUNC2(ahd, SCB_RESIDUAL_SGPTR));
	}
	FUNC8("\n");
	FUNC7(ahd, saved_scb_index);
	FUNC4(ahd, saved_modes);
}