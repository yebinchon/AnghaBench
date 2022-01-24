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
typedef  int uint32_t ;
struct atibl_softc {int /*<<< orphan*/  sc_memr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int RADEON_AUTO_PWRUP_EN ; 
 int /*<<< orphan*/  RADEON_DISP_PWR_MAN ; 
 int RADEON_LVDS_BLON ; 
 int RADEON_LVDS_BL_MOD_EN ; 
 int RADEON_LVDS_BL_MOD_LEVEL_MASK ; 
 int RADEON_LVDS_BL_MOD_LEVEL_SHIFT ; 
 int RADEON_LVDS_DIGON ; 
 int RADEON_LVDS_DISPLAY_DIS ; 
 int RADEON_LVDS_EN ; 
 int /*<<< orphan*/  RADEON_LVDS_GEN_CNTL ; 
 int RADEON_LVDS_ON ; 
 int /*<<< orphan*/  RADEON_LVDS_PLL_CNTL ; 
 int RADEON_LVDS_PLL_EN ; 
 int RADEON_LVDS_PLL_RESET ; 
 int /*<<< orphan*/  RADEON_PIXCLKS_CNTL ; 
 int RADEON_PIXCLK_LVDS_ALWAYS_ONb ; 
 int FUNC1 (struct atibl_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct atibl_softc*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC5(struct atibl_softc *sc, int newlevel)
{
	uint32_t lvds_gen_cntl;
	uint32_t lvds_pll_cntl;
	uint32_t pixclks_cntl;
	uint32_t disp_pwr_reg;

	if (newlevel > 100)
		newlevel = 100;

	if (newlevel < 0)
		newlevel = 0;

	lvds_gen_cntl = FUNC3(sc->sc_memr, RADEON_LVDS_GEN_CNTL);

	if (newlevel > 0) {
		newlevel = (newlevel * 5) / 2 + 5;
		disp_pwr_reg = FUNC3(sc->sc_memr, RADEON_DISP_PWR_MAN);
		disp_pwr_reg |= RADEON_AUTO_PWRUP_EN;
		FUNC4(sc->sc_memr, RADEON_DISP_PWR_MAN, disp_pwr_reg);
		lvds_pll_cntl = FUNC3(sc->sc_memr, RADEON_LVDS_PLL_CNTL);
		lvds_pll_cntl |= RADEON_LVDS_PLL_EN;
		FUNC4(sc->sc_memr, RADEON_LVDS_PLL_CNTL, lvds_pll_cntl);
		lvds_pll_cntl &= ~RADEON_LVDS_PLL_RESET;
		FUNC4(sc->sc_memr, RADEON_LVDS_PLL_CNTL, lvds_pll_cntl);
		FUNC0(1000);

		lvds_gen_cntl &= ~(RADEON_LVDS_DISPLAY_DIS | 
		    RADEON_LVDS_BL_MOD_LEVEL_MASK);
		lvds_gen_cntl |= RADEON_LVDS_ON | RADEON_LVDS_EN |
		    RADEON_LVDS_DIGON | RADEON_LVDS_BLON;
		lvds_gen_cntl |= (newlevel << RADEON_LVDS_BL_MOD_LEVEL_SHIFT) &
		    RADEON_LVDS_BL_MOD_LEVEL_MASK;
		lvds_gen_cntl |= RADEON_LVDS_BL_MOD_EN;
		FUNC0(200000);
		FUNC4(sc->sc_memr, RADEON_LVDS_GEN_CNTL, lvds_gen_cntl);
	} else {
		pixclks_cntl = FUNC1(sc, RADEON_PIXCLKS_CNTL);
		FUNC2(sc, RADEON_PIXCLKS_CNTL,
		    pixclks_cntl & ~RADEON_PIXCLK_LVDS_ALWAYS_ONb);
		lvds_gen_cntl |= RADEON_LVDS_DISPLAY_DIS;
		lvds_gen_cntl &= ~(RADEON_LVDS_BL_MOD_EN | RADEON_LVDS_BL_MOD_LEVEL_MASK);
		FUNC4(sc->sc_memr, RADEON_LVDS_GEN_CNTL, lvds_gen_cntl);
		lvds_gen_cntl &= ~(RADEON_LVDS_ON | RADEON_LVDS_EN);
		FUNC0(200000);
		FUNC4(sc->sc_memr, RADEON_LVDS_GEN_CNTL, lvds_gen_cntl);

		FUNC2(sc, RADEON_PIXCLKS_CNTL, pixclks_cntl);
		FUNC0(200000);
	}

	return (0);
}