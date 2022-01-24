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
 int AHD_SHOW_FIFOS ; 
 scalar_t__ CCSGCTL ; 
 int CCSGRESET ; 
 int CLRSHCNT ; 
 scalar_t__ DFFSXFRCTL ; 
 int FETCH_INPROG ; 
 int INVALID_ADDR ; 
 scalar_t__ LONGJMP_ADDR ; 
 int RSTCHN ; 
 scalar_t__ SG_STATE ; 
 int ahd_debug ; 
 int FUNC0 (struct ahd_softc*,scalar_t__) ; 
 char* FUNC1 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ahd_softc*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ahd_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct ahd_softc*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 

void
FUNC7(struct ahd_softc *ahd, u_int fifo)
{
	ahd_mode_state	 saved_modes;

#ifdef AHD_DEBUG
	if ((ahd_debug & AHD_SHOW_FIFOS) != 0)
		printf("%s: Clearing FIFO %d\n", ahd_name(ahd), fifo);
#endif
	saved_modes = FUNC4(ahd);
	FUNC5(ahd, fifo, fifo);
	FUNC2(ahd, DFFSXFRCTL, RSTCHN|CLRSHCNT);
	if ((FUNC0(ahd, SG_STATE) & FETCH_INPROG) != 0)
		FUNC2(ahd, CCSGCTL, CCSGRESET);
	FUNC2(ahd, LONGJMP_ADDR + 1, INVALID_ADDR);
	FUNC2(ahd, SG_STATE, 0);
	FUNC3(ahd, saved_modes);
}