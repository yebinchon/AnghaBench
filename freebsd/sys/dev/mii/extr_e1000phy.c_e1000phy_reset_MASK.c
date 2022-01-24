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
typedef  int uint16_t ;
struct mii_softc {int mii_flags; int mii_mpd_model; } ;

/* Variables and functions */
 int /*<<< orphan*/  E1000_BLINK_84MS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int E1000_CR ; 
 int E1000_CR_RESET ; 
 int E1000_EADR ; 
 int E1000_ESCR ; 
 int E1000_ESCR_TX_CLK_25 ; 
 int E1000_IER ; 
 int /*<<< orphan*/  E1000_PULSE_170MS ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int E1000_SCR ; 
 int E1000_SCR_ASSERT_CRS_ON_TX ; 
 int E1000_SCR_AUTO_MDIX ; 
 int E1000_SCR_AUTO_X_MODE ; 
 int E1000_SCR_EN_DETECT ; 
 int E1000_SCR_EN_DETECT_MASK ; 
 int E1000_SCR_FIB_SIGDET_POLARITY ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int E1000_SCR_LPNP ; 
 int E1000_SCR_MODE_1000BX ; 
 int E1000_SCR_MODE_MASK ; 
 int E1000_SCR_POLARITY_REVERSAL ; 
 int E1000_SCR_POWER_DOWN ; 
 int E1000_SCR_RGMII_POWER_UP ; 
 int E1000_SCR_SCRAMBLER_DISABLE ; 
 int MIIF_HAVEFIBER ; 
 int MIIF_PHYPRIV0 ; 
#define  MII_MODEL_xxMARVELL_E1111 137 
#define  MII_MODEL_xxMARVELL_E1112 136 
#define  MII_MODEL_xxMARVELL_E1116 135 
#define  MII_MODEL_xxMARVELL_E1116R_29 134 
#define  MII_MODEL_xxMARVELL_E1118 133 
#define  MII_MODEL_xxMARVELL_E1149 132 
#define  MII_MODEL_xxMARVELL_E1149R 131 
#define  MII_MODEL_xxMARVELL_E3016 130 
#define  MII_MODEL_xxMARVELL_E3082 129 
#define  MII_MODEL_xxMARVELL_PHYG65G 128 
 int FUNC6 (struct mii_softc*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct mii_softc*,int,int) ; 

__attribute__((used)) static void
FUNC8(struct mii_softc *sc)
{
	uint16_t reg, page;

	reg = FUNC6(sc, E1000_SCR);
	if ((sc->mii_flags & MIIF_HAVEFIBER) != 0) {
		reg &= ~E1000_SCR_AUTO_X_MODE;
		FUNC7(sc, E1000_SCR, reg);
		if (sc->mii_mpd_model == MII_MODEL_xxMARVELL_E1112) {
			/* Select 1000BASE-X only mode. */
			page = FUNC6(sc, E1000_EADR);
			FUNC7(sc, E1000_EADR, 2);
			reg = FUNC6(sc, E1000_SCR);
			reg &= ~E1000_SCR_MODE_MASK;
			reg |= E1000_SCR_MODE_1000BX;
			FUNC7(sc, E1000_SCR, reg);
			if ((sc->mii_flags & MIIF_PHYPRIV0) != 0) {
				/* Set SIGDET polarity low for SFP module. */
				FUNC7(sc, E1000_EADR, 1);
				reg = FUNC6(sc, E1000_SCR);
				reg |= E1000_SCR_FIB_SIGDET_POLARITY;
				FUNC7(sc, E1000_SCR, reg);
			}
			FUNC7(sc, E1000_EADR, page);
		}
	} else {
		switch (sc->mii_mpd_model) {
		case MII_MODEL_xxMARVELL_E1111:
		case MII_MODEL_xxMARVELL_E1112:
		case MII_MODEL_xxMARVELL_E1116:
		case MII_MODEL_xxMARVELL_E1116R_29:
		case MII_MODEL_xxMARVELL_E1118:
		case MII_MODEL_xxMARVELL_E1149:
		case MII_MODEL_xxMARVELL_E1149R:
		case MII_MODEL_xxMARVELL_PHYG65G:
			/* Disable energy detect mode. */
			reg &= ~E1000_SCR_EN_DETECT_MASK;
			reg |= E1000_SCR_AUTO_X_MODE;
			if (sc->mii_mpd_model == MII_MODEL_xxMARVELL_E1116 ||
			    sc->mii_mpd_model == MII_MODEL_xxMARVELL_E1116R_29)
				reg &= ~E1000_SCR_POWER_DOWN;
			reg |= E1000_SCR_ASSERT_CRS_ON_TX;
			break;
		case MII_MODEL_xxMARVELL_E3082:
			reg |= (E1000_SCR_AUTO_X_MODE >> 1);
			reg |= E1000_SCR_ASSERT_CRS_ON_TX;
			break;
		case MII_MODEL_xxMARVELL_E3016:
			reg |= E1000_SCR_AUTO_MDIX;
			reg &= ~(E1000_SCR_EN_DETECT |
			    E1000_SCR_SCRAMBLER_DISABLE);
			reg |= E1000_SCR_LPNP;
			/* XXX Enable class A driver for Yukon FE+ A0. */
			FUNC7(sc, 0x1C, FUNC6(sc, 0x1C) | 0x0001);
			break;
		default:
			reg &= ~E1000_SCR_AUTO_X_MODE;
			reg |= E1000_SCR_ASSERT_CRS_ON_TX;
			break;
		}
		if (sc->mii_mpd_model != MII_MODEL_xxMARVELL_E3016) {
			/* Auto correction for reversed cable polarity. */
			reg &= ~E1000_SCR_POLARITY_REVERSAL;
		}
		FUNC7(sc, E1000_SCR, reg);

		if (sc->mii_mpd_model == MII_MODEL_xxMARVELL_E1116 ||
		    sc->mii_mpd_model == MII_MODEL_xxMARVELL_E1116R_29 ||
		    sc->mii_mpd_model == MII_MODEL_xxMARVELL_E1149 ||
		    sc->mii_mpd_model == MII_MODEL_xxMARVELL_E1149R) {
			FUNC7(sc, E1000_EADR, 2);
			reg = FUNC6(sc, E1000_SCR);
			reg |= E1000_SCR_RGMII_POWER_UP;
			FUNC7(sc, E1000_SCR, reg);
			FUNC7(sc, E1000_EADR, 0);
		}
	}

	switch (sc->mii_mpd_model) {
	case MII_MODEL_xxMARVELL_E3082:
	case MII_MODEL_xxMARVELL_E1112:
	case MII_MODEL_xxMARVELL_E1118:
		break;
	case MII_MODEL_xxMARVELL_E1116:
	case MII_MODEL_xxMARVELL_E1116R_29:
		page = FUNC6(sc, E1000_EADR);
		/* Select page 3, LED control register. */
		FUNC7(sc, E1000_EADR, 3);
		FUNC7(sc, E1000_SCR,
		    FUNC3(1) |	/* Link/Act */
		    FUNC2(8) |	/* 10Mbps */
		    FUNC5(7) |	/* 100Mbps */
		    FUNC4(7));	/* 1000Mbps */
		/* Set blink rate. */
		FUNC7(sc, E1000_IER, FUNC1(E1000_PULSE_170MS) |
		    FUNC0(E1000_BLINK_84MS));
		FUNC7(sc, E1000_EADR, page);
		break;
	case MII_MODEL_xxMARVELL_E3016:
		/* LED2 -> ACT, LED1 -> LINK, LED0 -> SPEED. */
		FUNC7(sc, 0x16, 0x0B << 8 | 0x05 << 4 | 0x04);
		/* Integrated register calibration workaround. */
		FUNC7(sc, 0x1D, 17);
		FUNC7(sc, 0x1E, 0x3F60);
		break;
	default:
		/* Force TX_CLK to 25MHz clock. */
		reg = FUNC6(sc, E1000_ESCR);
		reg |= E1000_ESCR_TX_CLK_25;
		FUNC7(sc, E1000_ESCR, reg);
		break;
	}

	/* Reset the PHY so all changes take effect. */
	reg = FUNC6(sc, E1000_CR);
	reg |= E1000_CR_RESET;
	FUNC7(sc, E1000_CR, reg);
}