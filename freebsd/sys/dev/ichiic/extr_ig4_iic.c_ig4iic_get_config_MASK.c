#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct ig4_hw {scalar_t__ txfifo_depth; scalar_t__ rxfifo_depth; } ;
struct TYPE_6__ {int version; int bus_speed; int ss_scl_hcnt; int ss_scl_lcnt; int fs_scl_hcnt; int fs_scl_lcnt; int ss_sda_hold; int fs_sda_hold; int txfifo_depth; int rxfifo_depth; } ;
struct TYPE_7__ {size_t version; TYPE_1__ cfg; int /*<<< orphan*/  dev; } ;
typedef  TYPE_2__ ig4iic_softc_t ;
typedef  int /*<<< orphan*/ * ACPI_HANDLE ;

/* Variables and functions */
 size_t IG4_ATOM ; 
 void* IG4_CTL_SPEED_FAST ; 
 int IG4_CTL_SPEED_MASK ; 
 void* IG4_CTL_SPEED_STD ; 
 int IG4_FIFO_MASK ; 
 size_t IG4_HASWELL ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  IG4_REG_COMP_PARAM1 ; 
 int /*<<< orphan*/  IG4_REG_COMP_VER ; 
 int /*<<< orphan*/  IG4_REG_CTL ; 
 int /*<<< orphan*/  IG4_REG_FS_SCL_HCNT ; 
 int /*<<< orphan*/  IG4_REG_FS_SCL_LCNT ; 
 int /*<<< orphan*/  IG4_REG_RX_TL ; 
 int /*<<< orphan*/  IG4_REG_SDA_HOLD ; 
 int /*<<< orphan*/  IG4_REG_SS_SCL_HCNT ; 
 int /*<<< orphan*/  IG4_REG_SS_SCL_LCNT ; 
 int /*<<< orphan*/  IG4_REG_TX_TL ; 
 int IG4_SCL_CLOCK_MASK ; 
 int IG4_SDA_TX_HOLD_MASK ; 
 size_t IG4_SKYLAKE ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int ig4_timings ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct ig4_hw const*,void*,int*,int*,int*) ; 
 struct ig4_hw* ig4iic_hw ; 
 size_t FUNC6 (struct ig4_hw*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int FUNC8 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC10(ig4iic_softc_t *sc)
{
	const struct ig4_hw *hw;
	uint32_t v;
#ifdef DEV_ACPI
	ACPI_HANDLE handle;
#endif
	/* Fetch default hardware config from controller */
	sc->cfg.version = FUNC8(sc, IG4_REG_COMP_VER);
	sc->cfg.bus_speed = FUNC8(sc, IG4_REG_CTL) & IG4_CTL_SPEED_MASK;
	sc->cfg.ss_scl_hcnt =
	    FUNC8(sc, IG4_REG_SS_SCL_HCNT) & IG4_SCL_CLOCK_MASK;
	sc->cfg.ss_scl_lcnt =
	    FUNC8(sc, IG4_REG_SS_SCL_LCNT) & IG4_SCL_CLOCK_MASK;
	sc->cfg.fs_scl_hcnt =
	    FUNC8(sc, IG4_REG_FS_SCL_HCNT) & IG4_SCL_CLOCK_MASK;
	sc->cfg.fs_scl_lcnt =
	    FUNC8(sc, IG4_REG_FS_SCL_LCNT) & IG4_SCL_CLOCK_MASK;
	sc->cfg.ss_sda_hold = sc->cfg.fs_sda_hold =
	    FUNC8(sc, IG4_REG_SDA_HOLD) & IG4_SDA_TX_HOLD_MASK;

	if (sc->cfg.bus_speed != IG4_CTL_SPEED_STD)
		sc->cfg.bus_speed = IG4_CTL_SPEED_FAST;

	/* REG_COMP_PARAM1 is not documented in latest Intel specs */
	if (sc->version == IG4_HASWELL || sc->version == IG4_ATOM) {
		v = FUNC8(sc, IG4_REG_COMP_PARAM1);
		if (FUNC1(v) != 0)
			sc->cfg.txfifo_depth = FUNC1(v);
		if (FUNC0(v) != 0)
			sc->cfg.rxfifo_depth = FUNC0(v);
	} else {
		/*
		 * Hardware does not allow FIFO Threshold Levels value to be
		 * set larger than the depth of the buffer. If an attempt is
		 * made to do that, the actual value set will be the maximum
		 * depth of the buffer.
		 */
		v = FUNC8(sc, IG4_REG_TX_TL);
		FUNC9(sc, IG4_REG_TX_TL, v | IG4_FIFO_MASK);
		sc->cfg.txfifo_depth =
		    (FUNC8(sc, IG4_REG_TX_TL) & IG4_FIFO_MASK) + 1;
		FUNC9(sc, IG4_REG_TX_TL, v);
		v = FUNC8(sc, IG4_REG_RX_TL);
		FUNC9(sc, IG4_REG_RX_TL, v | IG4_FIFO_MASK);
		sc->cfg.rxfifo_depth =
		    (FUNC8(sc, IG4_REG_RX_TL) & IG4_FIFO_MASK) + 1;
		FUNC9(sc, IG4_REG_RX_TL, v);
	}

	/* Override hardware config with IC_clock-based counter values */
	if (ig4_timings < 2 && sc->version < FUNC6(ig4iic_hw)) {
		hw = &ig4iic_hw[sc->version];
		sc->cfg.bus_speed = IG4_CTL_SPEED_FAST;
		FUNC5(hw, IG4_CTL_SPEED_STD, &sc->cfg.ss_scl_hcnt,
		    &sc->cfg.ss_scl_lcnt, &sc->cfg.ss_sda_hold);
		FUNC5(hw, IG4_CTL_SPEED_FAST, &sc->cfg.fs_scl_hcnt,
		    &sc->cfg.fs_scl_lcnt, &sc->cfg.fs_sda_hold);
		if (hw->txfifo_depth != 0)
			sc->cfg.txfifo_depth = hw->txfifo_depth;
		if (hw->rxfifo_depth != 0)
			sc->cfg.rxfifo_depth = hw->rxfifo_depth;
	} else if (ig4_timings == 2) {
		/*
		 * Timings of original ig4 driver:
		 * Program based on a 25000 Hz clock.  This is a bit of a
		 * hack (obviously).  The defaults are 400 and 470 for standard
		 * and 60 and 130 for fast.  The defaults for standard fail
		 * utterly (presumably cause an abort) because the clock time
		 * is ~18.8ms by default.  This brings it down to ~4ms.
		 */
		sc->cfg.bus_speed = IG4_CTL_SPEED_STD;
		sc->cfg.ss_scl_hcnt = sc->cfg.fs_scl_hcnt = 100;
		sc->cfg.ss_scl_lcnt = sc->cfg.fs_scl_lcnt = 125;
		if (sc->version == IG4_SKYLAKE)
			sc->cfg.ss_sda_hold = sc->cfg.fs_sda_hold = 28;
	}

#ifdef DEV_ACPI
	/* Evaluate SSCN and FMCN ACPI methods to fetch timings */
	if (ig4_timings == 0 && (handle = acpi_get_handle(sc->dev)) != NULL) {
		ig4iic_acpi_params(handle, "SSCN", &sc->cfg.ss_scl_hcnt,
		    &sc->cfg.ss_scl_lcnt, &sc->cfg.ss_sda_hold);
		ig4iic_acpi_params(handle, "FMCN", &sc->cfg.fs_scl_hcnt,
		    &sc->cfg.fs_scl_lcnt, &sc->cfg.fs_sda_hold);
	}
#endif

	if (bootverbose) {
		FUNC3(sc->dev, "Controller parameters:\n");
		FUNC7("  Speed: %s\n",
		    sc->cfg.bus_speed == IG4_CTL_SPEED_STD ? "Std" : "Fast");
		FUNC7("  Regs:  HCNT  :LCNT  :SDAHLD\n");
		FUNC7("  Std:   0x%04hx:0x%04hx:0x%04hx\n",
		    sc->cfg.ss_scl_hcnt, sc->cfg.ss_scl_lcnt,
		    sc->cfg.ss_sda_hold);
		FUNC7("  Fast:  0x%04hx:0x%04hx:0x%04hx\n",
		    sc->cfg.fs_scl_hcnt, sc->cfg.fs_scl_lcnt,
		    sc->cfg.fs_sda_hold);
		FUNC7("  FIFO:  RX:0x%04x: TX:0x%04x\n",
		    sc->cfg.rxfifo_depth, sc->cfg.txfifo_depth);
	}
}