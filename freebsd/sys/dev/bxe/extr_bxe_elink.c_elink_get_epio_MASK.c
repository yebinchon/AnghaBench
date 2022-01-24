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
struct bxe_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,char*,int) ; 
 int /*<<< orphan*/  MCP_REG_MCPR_GP_INPUTS ; 
 int /*<<< orphan*/  MCP_REG_MCPR_GP_OENABLE ; 
 int FUNC1 (struct bxe_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bxe_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct bxe_softc *sc, uint32_t epio_pin, uint32_t *en)
{
	uint32_t epio_mask, gp_oenable;
	*en = 0;
	/* Sanity check */
	if (epio_pin > 31) {
		FUNC0(sc, "Invalid EPIO pin %d to get\n", epio_pin);
		return;
	}

	epio_mask = 1 << epio_pin;
	/* Set this EPIO to output */
	gp_oenable = FUNC1(sc, MCP_REG_MCPR_GP_OENABLE);
	FUNC2(sc, MCP_REG_MCPR_GP_OENABLE, gp_oenable & ~epio_mask);

	*en = (FUNC1(sc, MCP_REG_MCPR_GP_INPUTS) & epio_mask) >> epio_pin;
}