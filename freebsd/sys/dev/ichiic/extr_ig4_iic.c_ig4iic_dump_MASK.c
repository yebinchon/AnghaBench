#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ version; int /*<<< orphan*/  dev; } ;
typedef  TYPE_1__ ig4iic_softc_t ;

/* Variables and functions */
 scalar_t__ IG4_ATOM ; 
 scalar_t__ IG4_HASWELL ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  IG4_REG_ACTIVE_LTR_VALUE ; 
 int /*<<< orphan*/  IG4_REG_AUTO_LTR_VALUE ; 
 int /*<<< orphan*/  IG4_REG_CLK_PARMS ; 
 int /*<<< orphan*/  IG4_REG_COMP_PARAM1 ; 
 int /*<<< orphan*/  IG4_REG_COMP_TYPE ; 
 int /*<<< orphan*/  IG4_REG_COMP_VER ; 
 int /*<<< orphan*/  IG4_REG_CTL ; 
 int /*<<< orphan*/  IG4_REG_DMA_CTRL ; 
 int /*<<< orphan*/  IG4_REG_DMA_RDLR ; 
 int /*<<< orphan*/  IG4_REG_DMA_TDLR ; 
 int /*<<< orphan*/  IG4_REG_ENABLE_STATUS ; 
 int /*<<< orphan*/  IG4_REG_FS_SCL_HCNT ; 
 int /*<<< orphan*/  IG4_REG_FS_SCL_LCNT ; 
 int /*<<< orphan*/  IG4_REG_GENERAL ; 
 int /*<<< orphan*/  IG4_REG_I2C_EN ; 
 int /*<<< orphan*/  IG4_REG_I2C_STA ; 
 int /*<<< orphan*/  IG4_REG_IDLE_LTR_VALUE ; 
 int /*<<< orphan*/  IG4_REG_INTR_MASK ; 
 int /*<<< orphan*/  IG4_REG_INTR_STAT ; 
 int /*<<< orphan*/  IG4_REG_RAW_INTR_STAT ; 
 int /*<<< orphan*/  IG4_REG_RESETS_HSW ; 
 int /*<<< orphan*/  IG4_REG_RESETS_SKL ; 
 int /*<<< orphan*/  IG4_REG_RXFLR ; 
 int /*<<< orphan*/  IG4_REG_RX_TL ; 
 int /*<<< orphan*/  IG4_REG_SDA_HOLD ; 
 int /*<<< orphan*/  IG4_REG_SDA_SETUP ; 
 int /*<<< orphan*/  IG4_REG_SLV_DATA_NACK ; 
 int /*<<< orphan*/  IG4_REG_SS_SCL_HCNT ; 
 int /*<<< orphan*/  IG4_REG_SS_SCL_LCNT ; 
 int /*<<< orphan*/  IG4_REG_SW_LTR_VALUE ; 
 int /*<<< orphan*/  IG4_REG_TAR_ADD ; 
 int /*<<< orphan*/  IG4_REG_TXFLR ; 
 int /*<<< orphan*/  IG4_REG_TX_ABRT_SOURCE ; 
 int /*<<< orphan*/  IG4_REG_TX_TL ; 
 scalar_t__ IG4_SKYLAKE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC3(ig4iic_softc_t *sc)
{
	FUNC2(sc->dev, "ig4iic register dump:\n");
	FUNC1(sc, IG4_REG_CTL);
	FUNC1(sc, IG4_REG_TAR_ADD);
	FUNC1(sc, IG4_REG_SS_SCL_HCNT);
	FUNC1(sc, IG4_REG_SS_SCL_LCNT);
	FUNC1(sc, IG4_REG_FS_SCL_HCNT);
	FUNC1(sc, IG4_REG_FS_SCL_LCNT);
	FUNC1(sc, IG4_REG_INTR_STAT);
	FUNC1(sc, IG4_REG_INTR_MASK);
	FUNC1(sc, IG4_REG_RAW_INTR_STAT);
	FUNC1(sc, IG4_REG_RX_TL);
	FUNC1(sc, IG4_REG_TX_TL);
	FUNC1(sc, IG4_REG_I2C_EN);
	FUNC1(sc, IG4_REG_I2C_STA);
	FUNC1(sc, IG4_REG_TXFLR);
	FUNC1(sc, IG4_REG_RXFLR);
	FUNC1(sc, IG4_REG_SDA_HOLD);
	FUNC1(sc, IG4_REG_TX_ABRT_SOURCE);
	FUNC1(sc, IG4_REG_SLV_DATA_NACK);
	FUNC1(sc, IG4_REG_DMA_CTRL);
	FUNC1(sc, IG4_REG_DMA_TDLR);
	FUNC1(sc, IG4_REG_DMA_RDLR);
	FUNC1(sc, IG4_REG_SDA_SETUP);
	FUNC1(sc, IG4_REG_ENABLE_STATUS);
	FUNC1(sc, IG4_REG_COMP_PARAM1);
	FUNC1(sc, IG4_REG_COMP_VER);
	if (sc->version == IG4_ATOM) {
		FUNC1(sc, IG4_REG_COMP_TYPE);
		FUNC1(sc, IG4_REG_CLK_PARMS);
	}
	if (sc->version == IG4_HASWELL || sc->version == IG4_ATOM) {
		FUNC1(sc, IG4_REG_RESETS_HSW);
		FUNC1(sc, IG4_REG_GENERAL);
	} else if (sc->version == IG4_SKYLAKE) {
		FUNC1(sc, IG4_REG_RESETS_SKL);
	}
	if (sc->version == IG4_HASWELL) {
		FUNC1(sc, IG4_REG_SW_LTR_VALUE);
		FUNC1(sc, IG4_REG_AUTO_LTR_VALUE);
	} else if (FUNC0(sc->version)) {
		FUNC1(sc, IG4_REG_ACTIVE_LTR_VALUE);
		FUNC1(sc, IG4_REG_IDLE_LTR_VALUE);
	}
}