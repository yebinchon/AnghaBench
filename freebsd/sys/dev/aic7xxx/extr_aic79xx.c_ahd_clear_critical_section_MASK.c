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
typedef  scalar_t__ u_int ;
struct cs {scalar_t__ begin; scalar_t__ end; } ;
struct ahd_softc {scalar_t__ num_critical_sections; scalar_t__ unpause; int /*<<< orphan*/  saved_dst_mode; int /*<<< orphan*/  saved_src_mode; struct cs* critical_sections; } ;
typedef  int /*<<< orphan*/  ahd_mode_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ahd_softc*) ; 
 int AHD_MAX_STEPS ; 
 int /*<<< orphan*/  AHD_MODE_CFG ; 
 int /*<<< orphan*/  AHD_MODE_SCSI ; 
 int AHD_SHOW_MISC ; 
 scalar_t__ CLRBUSFREE ; 
 int /*<<< orphan*/  CLRINT ; 
 scalar_t__ CLRSCSIINT ; 
 int /*<<< orphan*/  CLRSINT1 ; 
 int /*<<< orphan*/  CURADDR ; 
 scalar_t__ ENBUSFREE ; 
 int FALSE ; 
 int /*<<< orphan*/  HCNTRL ; 
 int /*<<< orphan*/  LQIMODE0 ; 
 int /*<<< orphan*/  LQIMODE1 ; 
 int /*<<< orphan*/  LQOMODE0 ; 
 int /*<<< orphan*/  LQOMODE1 ; 
 int /*<<< orphan*/  SEQCTL0 ; 
 int /*<<< orphan*/  SIMODE0 ; 
 int /*<<< orphan*/  SIMODE1 ; 
 int /*<<< orphan*/  SIMODE3 ; 
 scalar_t__ STEP ; 
 int TRUE ; 
 int ahd_debug ; 
 int /*<<< orphan*/  FUNC1 (struct ahd_softc*) ; 
 scalar_t__ FUNC2 (struct ahd_softc*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct ahd_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ahd_softc*) ; 
 char* FUNC5 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct ahd_softc*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct ahd_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC9 (struct ahd_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*,scalar_t__,...) ; 

void
FUNC14(struct ahd_softc *ahd)
{
	ahd_mode_state	saved_modes;
	int		stepping;
	int		steps;
	int		first_instr;
	u_int		simode0;
	u_int		simode1;
	u_int		simode3;
	u_int		lqimode0;
	u_int		lqimode1;
	u_int		lqomode0;
	u_int		lqomode1;

	if (ahd->num_critical_sections == 0)
		return;

	stepping = FALSE;
	steps = 0;
	first_instr = 0;
	simode0 = 0;
	simode1 = 0;
	simode3 = 0;
	lqimode0 = 0;
	lqimode1 = 0;
	lqomode0 = 0;
	lqomode1 = 0;
	saved_modes = FUNC8(ahd);
	for (;;) {
		struct	cs *cs;
		u_int	seqaddr;
		u_int	i;

		FUNC9(ahd, AHD_MODE_SCSI, AHD_MODE_SCSI);
		seqaddr = FUNC3(ahd, CURADDR);

		cs = ahd->critical_sections;
		for (i = 0; i < ahd->num_critical_sections; i++, cs++) {
			
			if (cs->begin < seqaddr && cs->end >= seqaddr)
				break;
		}

		if (i == ahd->num_critical_sections)
			break;

		if (steps > AHD_MAX_STEPS) {
			FUNC13("%s: Infinite loop in critical section\n"
			       "%s: First Instruction 0x%x now 0x%x\n",
			       FUNC5(ahd), FUNC5(ahd), first_instr,
			       seqaddr);
			FUNC0(ahd);
			FUNC1(ahd);
			FUNC12("critical section loop");
		}

		steps++;
#ifdef AHD_DEBUG
		if ((ahd_debug & AHD_SHOW_MISC) != 0)
			printf("%s: Single stepping at 0x%x\n", ahd_name(ahd),
			       seqaddr);
#endif
		if (stepping == FALSE) {

			first_instr = seqaddr;
  			FUNC9(ahd, AHD_MODE_CFG, AHD_MODE_CFG);
  			simode0 = FUNC2(ahd, SIMODE0);
			simode3 = FUNC2(ahd, SIMODE3);
			lqimode0 = FUNC2(ahd, LQIMODE0);
			lqimode1 = FUNC2(ahd, LQIMODE1);
			lqomode0 = FUNC2(ahd, LQOMODE0);
			lqomode1 = FUNC2(ahd, LQOMODE1);
			FUNC6(ahd, SIMODE0, 0);
			FUNC6(ahd, SIMODE3, 0);
			FUNC6(ahd, LQIMODE0, 0);
			FUNC6(ahd, LQIMODE1, 0);
			FUNC6(ahd, LQOMODE0, 0);
			FUNC6(ahd, LQOMODE1, 0);
			FUNC9(ahd, AHD_MODE_SCSI, AHD_MODE_SCSI);
			simode1 = FUNC2(ahd, SIMODE1);
			/*
			 * We don't clear ENBUSFREE.  Unfortunately
			 * we cannot re-enable busfree detection within
			 * the current connection, so we must leave it
			 * on while single stepping.
			 */
			FUNC6(ahd, SIMODE1, simode1 & ENBUSFREE);
			FUNC6(ahd, SEQCTL0, FUNC2(ahd, SEQCTL0) | STEP);
			stepping = TRUE;
		}
		FUNC6(ahd, CLRSINT1, CLRBUSFREE);
		FUNC6(ahd, CLRINT, CLRSCSIINT);
		FUNC9(ahd, ahd->saved_src_mode, ahd->saved_dst_mode);
		FUNC6(ahd, HCNTRL, ahd->unpause);
		while (!FUNC4(ahd))
			FUNC11(200);
		FUNC10(ahd);
	}
	if (stepping) {
		FUNC9(ahd, AHD_MODE_CFG, AHD_MODE_CFG);
		FUNC6(ahd, SIMODE0, simode0);
		FUNC6(ahd, SIMODE3, simode3);
		FUNC6(ahd, LQIMODE0, lqimode0);
		FUNC6(ahd, LQIMODE1, lqimode1);
		FUNC6(ahd, LQOMODE0, lqomode0);
		FUNC6(ahd, LQOMODE1, lqomode1);
		FUNC9(ahd, AHD_MODE_SCSI, AHD_MODE_SCSI);
		FUNC6(ahd, SEQCTL0, FUNC2(ahd, SEQCTL0) & ~STEP);
  		FUNC6(ahd, SIMODE1, simode1);
		/*
		 * SCSIINT seems to glitch occasionally when
		 * the interrupt masks are restored.  Clear SCSIINT
		 * one more time so that only persistent errors
		 * are seen as a real interrupt.
		 */
		FUNC6(ahd, CLRINT, CLRSCSIINT);
	}
	FUNC7(ahd, saved_modes);
}