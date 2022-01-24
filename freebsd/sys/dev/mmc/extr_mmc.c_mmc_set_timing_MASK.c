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
typedef  int u_char ;
struct mmc_softc {int /*<<< orphan*/  dev; } ;
struct mmc_ivars {int /*<<< orphan*/  cmd6_time; int /*<<< orphan*/  rca; } ;
typedef  enum mmc_bus_timing { ____Placeholder_mmc_bus_timing } mmc_bus_timing ;

/* Variables and functions */
 int /*<<< orphan*/  EXT_CSD_CMD_SET_NORMAL ; 
 int /*<<< orphan*/  EXT_CSD_HS_TIMING ; 
 int EXT_CSD_HS_TIMING_BC ; 
 int EXT_CSD_HS_TIMING_HS ; 
 int EXT_CSD_HS_TIMING_HS200 ; 
 int EXT_CSD_HS_TIMING_HS400 ; 
 int MMC_ERR_FAILED ; 
 int MMC_ERR_INVALID ; 
 int MMC_ERR_NONE ; 
 int /*<<< orphan*/  SD_SWITCH_GROUP1 ; 
 int SD_SWITCH_HS_MODE ; 
 int /*<<< orphan*/  SD_SWITCH_MODE_SET ; 
 int SD_SWITCH_NORMAL_MODE ; 
#define  bus_timing_hs 133 
#define  bus_timing_mmc_ddr52 132 
#define  bus_timing_mmc_hs200 131 
#define  bus_timing_mmc_hs400 130 
#define  bus_timing_mmc_hs400es 129 
#define  bus_timing_normal 128 
 int FUNC0 (struct mmc_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ mode_sd ; 

__attribute__((used)) static int
FUNC6(struct mmc_softc *sc, struct mmc_ivars *ivar,
    enum mmc_bus_timing timing)
{
	u_char switch_res[64];
	uint8_t	value;
	int err;

	if (FUNC3(sc->dev) == mode_sd) {
		switch (timing) {
		case bus_timing_normal:
			value = SD_SWITCH_NORMAL_MODE;
			break;
		case bus_timing_hs:
			value = SD_SWITCH_HS_MODE;
			break;
		default:
			return (MMC_ERR_INVALID);
		}
		err = FUNC0(sc, SD_SWITCH_MODE_SET, SD_SWITCH_GROUP1,
		    value, switch_res);
		if (err != MMC_ERR_NONE)
			return (err);
		if ((switch_res[16] & 0xf) != value)
			return (MMC_ERR_FAILED);
		FUNC4(sc->dev, timing);
		FUNC5(sc->dev);
	} else {
		switch (timing) {
		case bus_timing_normal:
			value = EXT_CSD_HS_TIMING_BC;
			break;
		case bus_timing_hs:
		case bus_timing_mmc_ddr52:
			value = EXT_CSD_HS_TIMING_HS;
			break;
		case bus_timing_mmc_hs200:
			value = EXT_CSD_HS_TIMING_HS200;
			break;
		case bus_timing_mmc_hs400:
		case bus_timing_mmc_hs400es:
			value = EXT_CSD_HS_TIMING_HS400;
			break;
		default:
			return (MMC_ERR_INVALID);
		}
		err = FUNC1(sc->dev, sc->dev, ivar->rca,
		    EXT_CSD_CMD_SET_NORMAL, EXT_CSD_HS_TIMING, value,
		    ivar->cmd6_time, false);
		if (err != MMC_ERR_NONE)
			return (err);
		FUNC4(sc->dev, timing);
		FUNC5(sc->dev);
		err = FUNC2(sc->dev, sc->dev, ivar->rca,
		    ivar->cmd6_time);
	}
	return (err);
}