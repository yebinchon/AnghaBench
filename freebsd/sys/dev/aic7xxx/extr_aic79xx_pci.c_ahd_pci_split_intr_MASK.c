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
typedef  int uint8_t ;
typedef  int uint32_t ;
typedef  int u_int ;
struct ahd_softc {scalar_t__ pcix_ptr; int /*<<< orphan*/  dev_softc; } ;
typedef  int /*<<< orphan*/  ahd_mode_state ;

/* Variables and functions */
 int /*<<< orphan*/  CLRINT ; 
 int CLRSPLTINT ; 
 int /*<<< orphan*/  DCHSPLTSTAT0 ; 
 int /*<<< orphan*/  DCHSPLTSTAT1 ; 
 scalar_t__ PCIXR_STATUS ; 
 int /*<<< orphan*/  SGSPLTSTAT0 ; 
 int /*<<< orphan*/  SGSPLTSTAT1 ; 
 int FUNC0 (struct ahd_softc*,int /*<<< orphan*/ ) ; 
 char* FUNC1 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ahd_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ahd_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct ahd_softc*,int,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC8 (char const*,char*,...) ; 
 char** split_status_source ; 
 char** split_status_strings ; 

__attribute__((used)) static void
FUNC9(struct ahd_softc *ahd, u_int intstat)
{
	uint8_t		split_status[4];
	uint8_t		split_status1[4];
	uint8_t		sg_split_status[2];
	uint8_t		sg_split_status1[2];
	ahd_mode_state	saved_modes;
	u_int		i;
	uint32_t	pcix_status;

	/*
	 * Check for splits in all modes.  Modes 0 and 1
	 * additionally have SG engine splits to look at.
	 */
	pcix_status = FUNC6(ahd->dev_softc,
	    ahd->pcix_ptr + PCIXR_STATUS, /*bytes*/ 4);
	FUNC8("%s: PCI Split Interrupt - PCI-X status = 0x%x\n",
	       FUNC1(ahd), pcix_status >> 16);
	saved_modes = FUNC4(ahd);
	for (i = 0; i < 4; i++) {
		FUNC5(ahd, i, i);

		split_status[i] = FUNC0(ahd, DCHSPLTSTAT0);
		split_status1[i] = FUNC0(ahd, DCHSPLTSTAT1);
		/* Clear latched errors.  So our interrupt deasserts. */
		FUNC2(ahd, DCHSPLTSTAT0, split_status[i]);
		FUNC2(ahd, DCHSPLTSTAT1, split_status1[i]);
		if (i > 1)
			continue;
		sg_split_status[i] = FUNC0(ahd, SGSPLTSTAT0);
		sg_split_status1[i] = FUNC0(ahd, SGSPLTSTAT1);
		/* Clear latched errors.  So our interrupt deasserts. */
		FUNC2(ahd, SGSPLTSTAT0, sg_split_status[i]);
		FUNC2(ahd, SGSPLTSTAT1, sg_split_status1[i]);
	}

	for (i = 0; i < 4; i++) {
		u_int bit;

		for (bit = 0; bit < 8; bit++) {

			if ((split_status[i] & (0x1 << bit)) != 0) {
				static const char *s;

				s = split_status_strings[bit];
				FUNC8(s, FUNC1(ahd),
				       split_status_source[i]);
			}

			if (i > 1)
				continue;

			if ((sg_split_status[i] & (0x1 << bit)) != 0) {
				static const char *s;

				s = split_status_strings[bit];
				FUNC8(s, FUNC1(ahd), "SG");
			}
		}
	}
	/*
	 * Clear PCI-X status bits.
	 */
	FUNC7(ahd->dev_softc, ahd->pcix_ptr + PCIXR_STATUS,
			     pcix_status, /*bytes*/4);
	FUNC2(ahd, CLRINT, CLRSPLTINT);
	FUNC3(ahd, saved_modes);
}