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
struct ahd_softc {int flags; } ;
typedef  int /*<<< orphan*/  ahd_mode_state ;

/* Variables and functions */
 int AHD_HAD_FIRST_SEL ; 
 int /*<<< orphan*/  AHD_MODE_CFG ; 
 int /*<<< orphan*/  AHD_MODE_SCSI ; 
 int AHD_SHOW_MISC ; 
 int BYPASSENAB ; 
 int /*<<< orphan*/  CLRINT ; 
 int CLRSCSIINT ; 
 int /*<<< orphan*/  DSPDATACTL ; 
 int ENAB40 ; 
 int ENSELDI ; 
 int ENSELDO ; 
 int /*<<< orphan*/  SBLKCTL ; 
 int /*<<< orphan*/  SIMODE0 ; 
 int ahd_debug ; 
 int FUNC0 (struct ahd_softc*,int /*<<< orphan*/ ) ; 
 char* FUNC1 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ahd_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ahd_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct ahd_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 

__attribute__((used)) static void
FUNC7(struct ahd_softc *ahd)
{
	ahd_mode_state	saved_modes;
	u_int		sblkctl;

	if ((ahd->flags & AHD_HAD_FIRST_SEL) != 0)
		return;
	saved_modes = FUNC4(ahd);
	FUNC5(ahd, AHD_MODE_SCSI, AHD_MODE_SCSI);
	sblkctl = FUNC0(ahd, SBLKCTL);
	FUNC5(ahd, AHD_MODE_CFG, AHD_MODE_CFG);
#ifdef AHD_DEBUG
	if ((ahd_debug & AHD_SHOW_MISC) != 0)
		printf("%s: iocell first selection\n", ahd_name(ahd));
#endif
	if ((sblkctl & ENAB40) != 0) {
		FUNC2(ahd, DSPDATACTL,
			 FUNC0(ahd, DSPDATACTL) & ~BYPASSENAB);
#ifdef AHD_DEBUG
		if ((ahd_debug & AHD_SHOW_MISC) != 0)
			printf("%s: BYPASS now disabled\n", ahd_name(ahd));
#endif
	}
	FUNC2(ahd, SIMODE0, FUNC0(ahd, SIMODE0) & ~(ENSELDO|ENSELDI));
	FUNC2(ahd, CLRINT, CLRSCSIINT);
	FUNC3(ahd, saved_modes);
	ahd->flags |= AHD_HAD_FIRST_SEL;
}