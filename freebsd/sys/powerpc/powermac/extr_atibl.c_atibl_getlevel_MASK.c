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
 int RADEON_LVDS_BL_MOD_LEVEL_MASK ; 
 int RADEON_LVDS_BL_MOD_LEVEL_SHIFT ; 
 int /*<<< orphan*/  RADEON_LVDS_GEN_CNTL ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC1(struct atibl_softc *sc)
{
	uint32_t	lvds_gen_cntl;
	int			level;

	lvds_gen_cntl = FUNC0(sc->sc_memr, RADEON_LVDS_GEN_CNTL);

	level = ((lvds_gen_cntl & RADEON_LVDS_BL_MOD_LEVEL_MASK) >>
	    RADEON_LVDS_BL_MOD_LEVEL_SHIFT);
	if (level != 0)
		level = ((level - 5) * 2) / 5;

	return (level);
}