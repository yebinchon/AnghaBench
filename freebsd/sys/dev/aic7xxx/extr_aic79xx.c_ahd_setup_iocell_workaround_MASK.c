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
struct ahd_softc {int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  ahd_mode_state ;

/* Variables and functions */
 int /*<<< orphan*/  AHD_HAD_FIRST_SEL ; 
 int /*<<< orphan*/  AHD_MODE_CFG ; 
 int AHD_SHOW_MISC ; 
 int BYPASSENAB ; 
 int /*<<< orphan*/  DSPDATACTL ; 
 int ENSELDI ; 
 int ENSELDO ; 
 int RCVROFFSTDIS ; 
 int /*<<< orphan*/  SIMODE0 ; 
 int XMITOFFSTDIS ; 
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
	ahd_mode_state saved_modes;

	saved_modes = FUNC4(ahd);
	FUNC5(ahd, AHD_MODE_CFG, AHD_MODE_CFG);
	FUNC2(ahd, DSPDATACTL, FUNC0(ahd, DSPDATACTL)
	       | BYPASSENAB | RCVROFFSTDIS | XMITOFFSTDIS);
	FUNC2(ahd, SIMODE0, FUNC0(ahd, SIMODE0) | (ENSELDO|ENSELDI));
#ifdef AHD_DEBUG
	if ((ahd_debug & AHD_SHOW_MISC) != 0)
		printf("%s: Setting up iocell workaround\n", ahd_name(ahd));
#endif
	FUNC3(ahd, saved_modes);
	ahd->flags &= ~AHD_HAD_FIRST_SEL;
}