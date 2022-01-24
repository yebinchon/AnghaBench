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
 int /*<<< orphan*/  RADEON_CLOCK_CNTL_DATA ; 
 int /*<<< orphan*/  RADEON_CLOCK_CNTL_INDEX ; 
 int /*<<< orphan*/  RADEON_CRTC_GEN_CNTL ; 
 int RADEON_PLL_WR_EN ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void __inline
FUNC4(struct atibl_softc *sc, uint32_t reg, uint32_t val)
{
	uint32_t save, tmp;

	FUNC2(sc->sc_memr, RADEON_CLOCK_CNTL_INDEX,
	    ((reg & 0x3f) | RADEON_PLL_WR_EN));
	(void)FUNC1(sc->sc_memr, RADEON_CLOCK_CNTL_DATA);
	(void)FUNC1(sc->sc_memr, RADEON_CRTC_GEN_CNTL);

	FUNC3(sc->sc_memr, RADEON_CLOCK_CNTL_DATA, val);
	FUNC0(5000);

	/* Only necessary on R300, but won't hurt others. */
	save = FUNC1(sc->sc_memr, RADEON_CLOCK_CNTL_INDEX);
	tmp = save & (~0x3f | RADEON_PLL_WR_EN);
	FUNC3(sc->sc_memr, RADEON_CLOCK_CNTL_INDEX, tmp);
	tmp = FUNC1(sc->sc_memr, RADEON_CLOCK_CNTL_DATA);
	FUNC3(sc->sc_memr, RADEON_CLOCK_CNTL_INDEX, save);
}