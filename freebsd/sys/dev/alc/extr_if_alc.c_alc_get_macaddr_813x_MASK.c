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
typedef  int uint32_t ;
typedef  int uint16_t ;
struct alc_softc {int /*<<< orphan*/  alc_phyaddr; int /*<<< orphan*/  alc_dev; TYPE_1__* alc_ident; } ;
struct TYPE_2__ {int deviceid; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALC_LTSSM_ID_CFG ; 
 int /*<<< orphan*/  ALC_MASTER_CFG ; 
 int /*<<< orphan*/  ALC_MII_DBG_ADDR ; 
 int /*<<< orphan*/  ALC_MII_DBG_DATA ; 
 int /*<<< orphan*/  ALC_OPT_CFG ; 
 int /*<<< orphan*/  ALC_TWSI_CFG ; 
 int /*<<< orphan*/  ALC_TWSI_DEBUG ; 
 int /*<<< orphan*/  ALC_WOL_CFG ; 
 int FUNC0 (struct alc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct alc_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
#define  DEVICEID_ATHEROS_AR8131 133 
#define  DEVICEID_ATHEROS_AR8132 132 
#define  DEVICEID_ATHEROS_AR8151 131 
#define  DEVICEID_ATHEROS_AR8151_V2 130 
#define  DEVICEID_ATHEROS_AR8152_B 129 
#define  DEVICEID_ATHEROS_AR8152_B2 128 
 int LTSSM_ID_WRO_ENB ; 
 int MASTER_OTP_SEL ; 
 int OPT_CFG_CLK_ENB ; 
 int TWSI_CFG_SW_LD_START ; 
 int TWSI_DEBUG_DEV_EXIST ; 
 int /*<<< orphan*/  FUNC3 (struct alc_softc*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC7(struct alc_softc *sc)
{
	uint32_t opt;
	uint16_t val;
	int eeprom, i;

	eeprom = 0;
	opt = FUNC0(sc, ALC_OPT_CFG);
	if ((FUNC0(sc, ALC_MASTER_CFG) & MASTER_OTP_SEL) != 0 &&
	    (FUNC0(sc, ALC_TWSI_DEBUG) & TWSI_DEBUG_DEV_EXIST) != 0) {
		/*
		 * EEPROM found, let TWSI reload EEPROM configuration.
		 * This will set ethernet address of controller.
		 */
		eeprom++;
		switch (sc->alc_ident->deviceid) {
		case DEVICEID_ATHEROS_AR8131:
		case DEVICEID_ATHEROS_AR8132:
			if ((opt & OPT_CFG_CLK_ENB) == 0) {
				opt |= OPT_CFG_CLK_ENB;
				FUNC1(sc, ALC_OPT_CFG, opt);
				FUNC0(sc, ALC_OPT_CFG);
				FUNC2(1000);
			}
			break;
		case DEVICEID_ATHEROS_AR8151:
		case DEVICEID_ATHEROS_AR8151_V2:
		case DEVICEID_ATHEROS_AR8152_B:
		case DEVICEID_ATHEROS_AR8152_B2:
			FUNC5(sc->alc_dev, sc->alc_phyaddr,
			    ALC_MII_DBG_ADDR, 0x00);
			val = FUNC4(sc->alc_dev, sc->alc_phyaddr,
			    ALC_MII_DBG_DATA);
			FUNC5(sc->alc_dev, sc->alc_phyaddr,
			    ALC_MII_DBG_DATA, val & 0xFF7F);
			FUNC5(sc->alc_dev, sc->alc_phyaddr,
			    ALC_MII_DBG_ADDR, 0x3B);
			val = FUNC4(sc->alc_dev, sc->alc_phyaddr,
			    ALC_MII_DBG_DATA);
			FUNC5(sc->alc_dev, sc->alc_phyaddr,
			    ALC_MII_DBG_DATA, val | 0x0008);
			FUNC2(20);
			break;
		}

		FUNC1(sc, ALC_LTSSM_ID_CFG,
		    FUNC0(sc, ALC_LTSSM_ID_CFG) & ~LTSSM_ID_WRO_ENB);
		FUNC1(sc, ALC_WOL_CFG, 0);
		FUNC0(sc, ALC_WOL_CFG);

		FUNC1(sc, ALC_TWSI_CFG, FUNC0(sc, ALC_TWSI_CFG) |
		    TWSI_CFG_SW_LD_START);
		for (i = 100; i > 0; i--) {
			FUNC2(1000);
			if ((FUNC0(sc, ALC_TWSI_CFG) &
			    TWSI_CFG_SW_LD_START) == 0)
				break;
		}
		if (i == 0)
			FUNC6(sc->alc_dev,
			    "reloading EEPROM timeout!\n");
	} else {
		if (bootverbose)
			FUNC6(sc->alc_dev, "EEPROM not found!\n");
	}
	if (eeprom != 0) {
		switch (sc->alc_ident->deviceid) {
		case DEVICEID_ATHEROS_AR8131:
		case DEVICEID_ATHEROS_AR8132:
			if ((opt & OPT_CFG_CLK_ENB) != 0) {
				opt &= ~OPT_CFG_CLK_ENB;
				FUNC1(sc, ALC_OPT_CFG, opt);
				FUNC0(sc, ALC_OPT_CFG);
				FUNC2(1000);
			}
			break;
		case DEVICEID_ATHEROS_AR8151:
		case DEVICEID_ATHEROS_AR8151_V2:
		case DEVICEID_ATHEROS_AR8152_B:
		case DEVICEID_ATHEROS_AR8152_B2:
			FUNC5(sc->alc_dev, sc->alc_phyaddr,
			    ALC_MII_DBG_ADDR, 0x00);
			val = FUNC4(sc->alc_dev, sc->alc_phyaddr,
			    ALC_MII_DBG_DATA);
			FUNC5(sc->alc_dev, sc->alc_phyaddr,
			    ALC_MII_DBG_DATA, val | 0x0080);
			FUNC5(sc->alc_dev, sc->alc_phyaddr,
			    ALC_MII_DBG_ADDR, 0x3B);
			val = FUNC4(sc->alc_dev, sc->alc_phyaddr,
			    ALC_MII_DBG_DATA);
			FUNC5(sc->alc_dev, sc->alc_phyaddr,
			    ALC_MII_DBG_DATA, val & 0xFFF7);
			FUNC2(20);
			break;
		}
	}

	FUNC3(sc);
}