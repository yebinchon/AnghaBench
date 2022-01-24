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
typedef  int /*<<< orphan*/  vpd ;
typedef  int uint16_t ;
typedef  int u_int ;
struct vpd_config {int dummy; } ;
struct seeprom_config {int adapter_control; } ;
struct ahd_softc {char channel; struct seeprom_config* seep_config; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int AHD_DUMP_SEEPROM ; 
 int /*<<< orphan*/  AHD_SCB_CONFIG_USED ; 
 int /*<<< orphan*/  AHD_USEDEFAULTS ; 
 int CFAUTOTERM ; 
 int CFSEAUTOTERM ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 scalar_t__ NVRAM_SCB_OFFSET ; 
 scalar_t__ SCB_BASE ; 
 int /*<<< orphan*/  TRUE ; 
 int FUNC0 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct ahd_softc*,int) ; 
 int ahd_debug ; 
 int FUNC2 (struct ahd_softc*) ; 
 char FUNC3 (struct ahd_softc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct ahd_softc*,scalar_t__) ; 
 char* FUNC5 (struct ahd_softc*) ; 
 int FUNC6 (struct ahd_softc*,struct seeprom_config*) ; 
 int FUNC7 (struct ahd_softc*,struct vpd_config*) ; 
 int FUNC8 (struct ahd_softc*,int*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC10 (struct ahd_softc*,int) ; 
 int FUNC11 (struct seeprom_config*) ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC12 (struct seeprom_config*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 

__attribute__((used)) static int
FUNC14(struct ahd_softc *ahd)
{
	struct	vpd_config vpd;
	struct	seeprom_config *sc;
	u_int	adapter_control;
	int	have_seeprom;
	int	error;

	sc = ahd->seep_config;
	have_seeprom = FUNC0(ahd);
	if (have_seeprom) {
		u_int start_addr;

		/*
		 * Fetch VPD for this function and parse it.
		 */
		if (bootverbose) 
			FUNC13("%s: Reading VPD from SEEPROM...",
			       FUNC5(ahd));

		/* Address is always in units of 16bit words */
		start_addr = ((2 * sizeof(*sc))
			    + (sizeof(vpd) * (ahd->channel - 'A'))) / 2;

		error = FUNC8(ahd, (uint16_t *)&vpd,
					 start_addr, sizeof(vpd)/2,
					 /*bytestream*/TRUE);
		if (error == 0)
			error = FUNC7(ahd, &vpd);
		if (bootverbose) 
			FUNC13("%s: VPD parsing %s\n",
			       FUNC5(ahd),
			       error == 0 ? "successful" : "failed");

		if (bootverbose) 
			FUNC13("%s: Reading SEEPROM...", FUNC5(ahd));

		/* Address is always in units of 16bit words */
		start_addr = (sizeof(*sc) / 2) * (ahd->channel - 'A');

		error = FUNC8(ahd, (uint16_t *)sc,
					 start_addr, sizeof(*sc)/2,
					 /*bytestream*/FALSE);

		if (error != 0) {
			FUNC13("Unable to read SEEPROM\n");
			have_seeprom = 0;
		} else {
			have_seeprom = FUNC11(sc);

			if (bootverbose) {
				if (have_seeprom == 0)
					FUNC13 ("checksum error\n");
				else
					FUNC13 ("done.\n");
			}
		}
		FUNC9(ahd);
	}

	if (!have_seeprom) {
		u_int	  nvram_scb;

		/*
		 * Pull scratch ram settings and treat them as
		 * if they are the contents of an seeprom if
		 * the 'ADPT', 'BIOS', or 'ASPI' signature is found
		 * in SCB 0xFF.  We manually compose the data as 16bit
		 * values to avoid endian issues.
		 */
		FUNC10(ahd, 0xFF);
		nvram_scb = FUNC3(ahd, SCB_BASE + NVRAM_SCB_OFFSET);
		if (nvram_scb != 0xFF
		 && ((FUNC3(ahd, SCB_BASE + 0) == 'A'
		   && FUNC3(ahd, SCB_BASE + 1) == 'D'
		   && FUNC3(ahd, SCB_BASE + 2) == 'P'
		   && FUNC3(ahd, SCB_BASE + 3) == 'T')
		  || (FUNC3(ahd, SCB_BASE + 0) == 'B'
		   && FUNC3(ahd, SCB_BASE + 1) == 'I'
		   && FUNC3(ahd, SCB_BASE + 2) == 'O'
		   && FUNC3(ahd, SCB_BASE + 3) == 'S')
		  || (FUNC3(ahd, SCB_BASE + 0) == 'A'
		   && FUNC3(ahd, SCB_BASE + 1) == 'S'
		   && FUNC3(ahd, SCB_BASE + 2) == 'P'
		   && FUNC3(ahd, SCB_BASE + 3) == 'I'))) {
			uint16_t *sc_data;
			int	  i;

			FUNC10(ahd, nvram_scb);
			sc_data = (uint16_t *)sc;
			for (i = 0; i < 64; i += 2)
				*sc_data++ = FUNC4(ahd, SCB_BASE+i);
			have_seeprom = FUNC11(sc);
			if (have_seeprom)
				ahd->flags |= AHD_SCB_CONFIG_USED;
		}
	}

#ifdef AHD_DEBUG
	if (have_seeprom != 0
	 && (ahd_debug & AHD_DUMP_SEEPROM) != 0) {
		uint16_t *sc_data;
		int	  i;

		printf("%s: Seeprom Contents:", ahd_name(ahd));
		sc_data = (uint16_t *)sc;
		for (i = 0; i < (sizeof(*sc)); i += 2)
			printf("\n\t0x%.4x", sc_data[i]);
		printf("\n");
	}
#endif

	if (!have_seeprom) {
		if (bootverbose)
			FUNC13("%s: No SEEPROM available.\n", FUNC5(ahd));
		ahd->flags |= AHD_USEDEFAULTS;
		error = FUNC2(ahd);
		adapter_control = CFAUTOTERM|CFSEAUTOTERM;
		FUNC12(ahd->seep_config, M_DEVBUF);
		ahd->seep_config = NULL;
	} else {
		error = FUNC6(ahd, sc);
		adapter_control = sc->adapter_control;
	}
	if (error != 0)
		return (error);

	FUNC1(ahd, adapter_control);

	return (0);
}