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
typedef  int uint16_t ;
struct alc_softc {int /*<<< orphan*/  alc_phyaddr; int /*<<< orphan*/  alc_dev; TYPE_1__* alc_ident; } ;
struct TYPE_2__ {scalar_t__ deviceid; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALC_GPHY_CFG ; 
 int /*<<< orphan*/  ALC_MII_DBG_ADDR ; 
 int /*<<< orphan*/  ALC_MII_DBG_DATA ; 
 int ANA_BP_BAD_LINK_ACCUM ; 
 int ANA_BP_SMALL_BW ; 
 int ANA_EN_10BT_IDLE ; 
 int ANA_EN_HB ; 
 int ANA_EN_MASK_TB ; 
 int ANA_IECHO_ADJ_0_MASK ; 
 int ANA_IECHO_ADJ_0_SHIFT ; 
 int ANA_IECHO_ADJ_1_MASK ; 
 int ANA_IECHO_ADJ_1_SHIFT ; 
 int ANA_IECHO_ADJ_2_MASK ; 
 int ANA_IECHO_ADJ_2_SHIFT ; 
 int ANA_IECHO_ADJ_3_MASK ; 
 int ANA_IECHO_ADJ_3_SHIFT ; 
 int ANA_INTERVAL_SEL_TIMER_MASK ; 
 int ANA_INTERVAL_SEL_TIMER_SHIFT ; 
 int ANA_LONG_CABLE_TH_100_MASK ; 
 int ANA_LONG_CABLE_TH_100_SHIFT ; 
 int ANA_LOOP_SEL_10BT ; 
 int ANA_MANUL_SWICH_ON_MASK ; 
 int ANA_MANUL_SWICH_ON_SHIFT ; 
 int ANA_MAN_ENABLE ; 
 int ANA_OEN_125M ; 
 int ANA_RESTART_CAL ; 
 int ANA_SEL_HSP ; 
 int ANA_SERDES_CDR_BW_MASK ; 
 int ANA_SERDES_CDR_BW_SHIFT ; 
 int ANA_SERDES_EN_DEEM ; 
 int ANA_SERDES_EN_LCKDT ; 
 int ANA_SERDES_EN_PLL ; 
 int ANA_SERDES_SEL_HSP ; 
 int ANA_SHORT_CABLE_TH_100_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct alc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct alc_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ DEVICEID_ATHEROS_AR8131 ; 
 scalar_t__ DEVICEID_ATHEROS_AR8132 ; 
 scalar_t__ DEVICEID_ATHEROS_AR8151 ; 
 scalar_t__ DEVICEID_ATHEROS_AR8151_V2 ; 
 scalar_t__ DEVICEID_ATHEROS_AR8152_B ; 
 scalar_t__ DEVICEID_ATHEROS_AR8152_B2 ; 
 int GPHY_CFG_EXT_RESET ; 
 int GPHY_CFG_SEL_ANA_RESET ; 
 int MII_ANA_CFG0 ; 
 int MII_ANA_CFG18 ; 
 int MII_ANA_CFG4 ; 
 int MII_ANA_CFG5 ; 
 int MII_ANA_CFG54 ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC5(struct alc_softc *sc)
{
	uint16_t data;

	/* Reset magic from Linux. */
	FUNC1(sc, ALC_GPHY_CFG, GPHY_CFG_SEL_ANA_RESET);
	FUNC0(sc, ALC_GPHY_CFG);
	FUNC2(10 * 1000);

	FUNC1(sc, ALC_GPHY_CFG, GPHY_CFG_EXT_RESET |
	    GPHY_CFG_SEL_ANA_RESET);
	FUNC0(sc, ALC_GPHY_CFG);
	FUNC2(10 * 1000);

	/* DSP fixup, Vendor magic. */
	if (sc->alc_ident->deviceid == DEVICEID_ATHEROS_AR8152_B) {
		FUNC4(sc->alc_dev, sc->alc_phyaddr,
		    ALC_MII_DBG_ADDR, 0x000A);
		data = FUNC3(sc->alc_dev, sc->alc_phyaddr,
		    ALC_MII_DBG_DATA);
		FUNC4(sc->alc_dev, sc->alc_phyaddr,
		    ALC_MII_DBG_DATA, data & 0xDFFF);
	}
	if (sc->alc_ident->deviceid == DEVICEID_ATHEROS_AR8151 ||
	    sc->alc_ident->deviceid == DEVICEID_ATHEROS_AR8151_V2 ||
	    sc->alc_ident->deviceid == DEVICEID_ATHEROS_AR8152_B ||
	    sc->alc_ident->deviceid == DEVICEID_ATHEROS_AR8152_B2) {
		FUNC4(sc->alc_dev, sc->alc_phyaddr,
		    ALC_MII_DBG_ADDR, 0x003B);
		data = FUNC3(sc->alc_dev, sc->alc_phyaddr,
		    ALC_MII_DBG_DATA);
		FUNC4(sc->alc_dev, sc->alc_phyaddr,
		    ALC_MII_DBG_DATA, data & 0xFFF7);
		FUNC2(20 * 1000);
	}
	if (sc->alc_ident->deviceid == DEVICEID_ATHEROS_AR8151) {
		FUNC4(sc->alc_dev, sc->alc_phyaddr,
		    ALC_MII_DBG_ADDR, 0x0029);
		FUNC4(sc->alc_dev, sc->alc_phyaddr,
		    ALC_MII_DBG_DATA, 0x929D);
	}
	if (sc->alc_ident->deviceid == DEVICEID_ATHEROS_AR8131 ||
	    sc->alc_ident->deviceid == DEVICEID_ATHEROS_AR8132 ||
	    sc->alc_ident->deviceid == DEVICEID_ATHEROS_AR8151_V2 ||
	    sc->alc_ident->deviceid == DEVICEID_ATHEROS_AR8152_B2) {
		FUNC4(sc->alc_dev, sc->alc_phyaddr,
		    ALC_MII_DBG_ADDR, 0x0029);
		FUNC4(sc->alc_dev, sc->alc_phyaddr,
		    ALC_MII_DBG_DATA, 0xB6DD);
	}

	/* Load DSP codes, vendor magic. */
	data = ANA_LOOP_SEL_10BT | ANA_EN_MASK_TB | ANA_EN_10BT_IDLE |
	    ((1 << ANA_INTERVAL_SEL_TIMER_SHIFT) & ANA_INTERVAL_SEL_TIMER_MASK);
	FUNC4(sc->alc_dev, sc->alc_phyaddr,
	    ALC_MII_DBG_ADDR, MII_ANA_CFG18);
	FUNC4(sc->alc_dev, sc->alc_phyaddr,
	    ALC_MII_DBG_DATA, data);

	data = ((2 << ANA_SERDES_CDR_BW_SHIFT) & ANA_SERDES_CDR_BW_MASK) |
	    ANA_SERDES_EN_DEEM | ANA_SERDES_SEL_HSP | ANA_SERDES_EN_PLL |
	    ANA_SERDES_EN_LCKDT;
	FUNC4(sc->alc_dev, sc->alc_phyaddr,
	    ALC_MII_DBG_ADDR, MII_ANA_CFG5);
	FUNC4(sc->alc_dev, sc->alc_phyaddr,
	    ALC_MII_DBG_DATA, data);

	data = ((44 << ANA_LONG_CABLE_TH_100_SHIFT) &
	    ANA_LONG_CABLE_TH_100_MASK) |
	    ((33 << ANA_SHORT_CABLE_TH_100_SHIFT) &
	    ANA_SHORT_CABLE_TH_100_SHIFT) |
	    ANA_BP_BAD_LINK_ACCUM | ANA_BP_SMALL_BW;
	FUNC4(sc->alc_dev, sc->alc_phyaddr,
	    ALC_MII_DBG_ADDR, MII_ANA_CFG54);
	FUNC4(sc->alc_dev, sc->alc_phyaddr,
	    ALC_MII_DBG_DATA, data);

	data = ((11 << ANA_IECHO_ADJ_3_SHIFT) & ANA_IECHO_ADJ_3_MASK) |
	    ((11 << ANA_IECHO_ADJ_2_SHIFT) & ANA_IECHO_ADJ_2_MASK) |
	    ((8 << ANA_IECHO_ADJ_1_SHIFT) & ANA_IECHO_ADJ_1_MASK) |
	    ((8 << ANA_IECHO_ADJ_0_SHIFT) & ANA_IECHO_ADJ_0_MASK);
	FUNC4(sc->alc_dev, sc->alc_phyaddr,
	    ALC_MII_DBG_ADDR, MII_ANA_CFG4);
	FUNC4(sc->alc_dev, sc->alc_phyaddr,
	    ALC_MII_DBG_DATA, data);

	data = ((7 & ANA_MANUL_SWICH_ON_SHIFT) & ANA_MANUL_SWICH_ON_MASK) |
	    ANA_RESTART_CAL | ANA_MAN_ENABLE | ANA_SEL_HSP | ANA_EN_HB |
	    ANA_OEN_125M;
	FUNC4(sc->alc_dev, sc->alc_phyaddr,
	    ALC_MII_DBG_ADDR, MII_ANA_CFG0);
	FUNC4(sc->alc_dev, sc->alc_phyaddr,
	    ALC_MII_DBG_DATA, data);
	FUNC2(1000);

	/* Disable hibernation. */
	FUNC4(sc->alc_dev, sc->alc_phyaddr, ALC_MII_DBG_ADDR,
	    0x0029);
	data = FUNC3(sc->alc_dev, sc->alc_phyaddr,
	    ALC_MII_DBG_DATA);
	data &= ~0x8000;
	FUNC4(sc->alc_dev, sc->alc_phyaddr, ALC_MII_DBG_DATA,
	    data);

	FUNC4(sc->alc_dev, sc->alc_phyaddr, ALC_MII_DBG_ADDR,
	    0x000B);
	data = FUNC3(sc->alc_dev, sc->alc_phyaddr,
	    ALC_MII_DBG_DATA);
	data &= ~0x8000;
	FUNC4(sc->alc_dev, sc->alc_phyaddr, ALC_MII_DBG_DATA,
	    data);
}